import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');
// console.log(mapElement);

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  if (Array.isArray(markers)) {
    markers.forEach((marker) => {

      const start_element = document.createElement('div');
      start_element.className = 'marker';
      start_element.style.backgroundImage = `url('${marker.image_starts_url}')`;
      start_element.style.backgroundSize = 'contain';
      start_element.style.width = '25px';
      start_element.style.height = '25px';

      const end_element = document.createElement('div');
      end_element.className = 'marker';
      end_element.style.backgroundImage = `url('${marker.image_ends_url}')`;
      end_element.style.backgroundSize = 'contain';
      end_element.style.width = '25px';
      end_element.style.height = '25px';


      new mapboxgl.Marker(start_element)
        .setLngLat([ marker.lng_starts, marker.lat_starts ])
        .addTo(map);
        new mapboxgl.Marker(end_element)
        .setLngLat([ marker.lng_ends, marker.lat_ends ])
        .addTo(map);

      // create iti
      const steps = Array.from(marker.steps).map(data => data.maneuver.location)
      setTimeout(() => {
        itineraire(map, steps, marker.maraude_id)
      }, 1000)
    });
  } else {

      const start_element = document.createElement('div');
      start_element.className = 'marker';
      start_element.style.backgroundImage = `url('${markers.image_starts_url}')`;
      start_element.style.backgroundSize = 'contain';
      start_element.style.width = '25px';
      start_element.style.height = '25px';

      const end_element = document.createElement('div');
      end_element.className = 'marker';
      end_element.style.backgroundImage = `url('${markers.image_ends_url}')`;
      end_element.style.backgroundSize = 'contain';
      end_element.style.width = '25px';
      end_element.style.height = '25px';

      new mapboxgl.Marker(start_element)
      .setLngLat([ markers.lng_starts, markers.lat_starts ])
      .addTo(map);
      new mapboxgl.Marker(end_element)
      .setLngLat([ markers.lng_ends, markers.lat_ends ])
      .addTo(map);

      // create iti
      const steps = Array.from(JSON.parse(mapElement.dataset.steps)).map(data => data.maneuver.location)
      setTimeout(() => {
        itineraire(map, steps)
      }, 1000)
  }
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  if (Array.isArray(markers)) {
    markers.forEach(marker => {
      bounds.extend([ marker.lng_starts, marker.lat_starts ]);
      bounds.extend([ marker.lng_ends, marker.lat_ends ]);
    });
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  } else {
      bounds.extend([ markers.lng_starts, markers.lat_starts ]);
      bounds.extend([ markers.lng_ends, markers.lat_ends ]);
      map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  }
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    const markersActualPosition =  JSON.parse(mapElement.dataset.markersActualPosition);
    new mapboxgl.Marker()
        .setLngLat([ markersActualPosition.lng, markersActualPosition.lat ])
        .addTo(map);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
  }
};


const itineraire = (map, steps, id = 0) => {
  // if (map.getSource('route')) {
  //   map.removeLayer('route')
  //   map.removeSource('route')
  // } else {
    map.addLayer({
      "id": `route${id}`,
      "type": "line",
      "source": {
        "type": "geojson",
        "data": {
          "type": "Feature",
          "geometry": {
            "type": "LineString",
            "coordinates": steps
          },
          "properties": {},
        }
      },
      "layout": {
        "line-join": "round",
        "line-cap": "round"
      },
      "paint": {
        // pour changer la couleur de la route
        "line-color": "#009661",
        "line-width": 8,
        "line-opacity": 0.8
      }
    });
  };

export { initMapbox };
