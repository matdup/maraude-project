const initCardPicker = () => {
  const picture = document.querySelectorAll(".card-picture").forEach((cardPicture) => {
    cardPicture.addEventListener("click", (event)  => {
      window.location.href = `maraudes/${cardPicture.dataset.id}`;
    })
  });
};

export { initCardPicker };

