const moreInfos = () => {
  const moreInfoBtn = document.querySelector('.maraude-more-infos');
  const assoInfos = document.querySelector('.maraude-asso-infos');
  if (moreInfoBtn) {
    moreInfoBtn.addEventListener("click", (event) => {
      assoInfos.classList.toggle('d-none');
    })
  }
}

export { moreInfos };
