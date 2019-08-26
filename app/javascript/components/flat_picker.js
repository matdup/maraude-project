import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css';

const flatpicker = () => {

  flatpickr("#booking_start_at", {
      enableTime: true,
      dateFormat: "Y-m-d H:i"
    });
  flatpickr("#booking_ends_at", {
      enableTime: true,
      dateFormat: "Y-m-d H:i"
    });
}


export { flatpicker };
