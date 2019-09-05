const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  // console.log(navbar)

  // const navItems = document.querySelectorAll('.home-nav-item');
  if (navbar) {
    window.addEventListener('scroll', () => {
      // console.log(window.innerHeight)
      if (window.scrollY >= 50) {
        navbar.classList.add('navbar-black');
        navbar.classList.add('navbar-small-height');
        // if (navItems.length > 0) {
        //   navItems.forEach((item) => {
        //     item.classList.remove('color-white');
        //   })
        // }
      } else {
        navbar.classList.remove('navbar-black');
        navbar.classList.remove('navbar-small-height');
        // if (navItems.length > 0) {
        // if (navItems.length > 0) {
        //   navItems.forEach((item) => {
        //     item.classList.add('color-white');
        //   })
        // }
      }
    });
  }

}

export { initUpdateNavbarOnScroll };
