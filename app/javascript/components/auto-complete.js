import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelectorAll('.autocomplete');
  if (addressInput) {
    addressInput.forEach((input) => {
      let placesAutocomplete = places({
        container: input
      }).configure({
        language: "fr",
        countries: ["fr"]
      });

    })
  }
};

export { initAutocomplete };
