import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');
console.log(mapElement);

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng_starts, marker.lat_starts ])
      .addTo(map);
      new mapboxgl.Marker()
      .setLngLat([ marker.lng_ends, marker.lat_ends ])
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => {
    bounds.extend([ marker.lng_starts, marker.lat_starts ]);
    bounds.extend([ marker.lng_ends, marker.lat_ends ]);
  });
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  console.log('toto')
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
  }
};

export { initMapbox };
