import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text');
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["Change your life", "Learn to Help!"],
      typeSpeed: 100,
      loop: true
    });
  }
}
export { loadDynamicBannerText };
