import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelectorAll('.autocomplete');
  if (addressInput) {
    addressInput.forEach((input) => {
      places({ container: input });

    })
  }
};

export { initAutocomplete };
