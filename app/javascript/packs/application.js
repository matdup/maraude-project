import "bootstrap";
import { flatpicker } from "../components/flat_picker";
// import { reviewMaraude } from "../components/review_Maraude";
// import { previewImageOnFileSelect } from "../components/preview_photo";
// import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initAutocomplete } from '../components/auto-complete';
// import { initCardPicker } from '../components/card-picker';
import { sideNavFunction } from '../components/side-nav';
import { moreInfos } from '../components/js-maraude-show';
import { scrollToElement } from '../components/scroll';

initMapbox();
moreInfos();
// reviewMaraude();
// previewImageOnFileSelect();
// loadDynamicBannerText();
initUpdateNavbarOnScroll();
flatpicker();
initAutocomplete();
// initCardPicker();
sideNavFunction();
scrollToElement();
