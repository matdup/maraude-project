
const reviewTitle = document.querySelector("#maraude_title");
const reviewDescrition = document.querySelector("#maraude_description");
const reviewPhoto = document.querySelector("#maraude_photo");
const reviewBtn = document.querySelector(".review-btn");

const modalTitle = document.querySelector(".title-modal");
const modalDescrition = document.querySelector(".description-modal");
const modalPhoto = document.querySelector(".photo-modal");


const reviewMaraude = () => {
  if (reviewBtn) {
     reviewBtn.addEventListener('click', () => {
    modalTitle.innerText = reviewTitle.value;
    console.log(reviewTitle.value);
    modalDescrition.innerText = reviewDescrition.value;
    })
  }




}



export { reviewMaraude }
