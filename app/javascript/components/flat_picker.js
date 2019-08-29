import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css';

const flatpicker = () => {

  flatpickr("#starts_at", {
      enableTime: true,
      dateFormat: "Y-m-d H:i"
    });
  flatpickr("#ends_at", {
      enableTime: true,
      dateFormat: "Y-m-d H:i"
    });
}


export { flatpicker };
