const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const navItems = document.querySelectorAll('.home-nav-item');
//   if (navbar) {
//     window.addEventListener('scroll', () => {
//       if (window.scrollY >= window.innerHeight) {
//         navbar.classList.add('navbar-lewagon-white');
//         if (navItems.length > 0) {
//           navItems.forEach((item) => {
//             item.classList.remove('color-white');
//           })
//         }
//       } else {
//         navbar.classList.remove('navbar-lewagon-white');
//         if (navItems.length > 0) {
//           navItems.forEach((item) => {
//             item.classList.add('color-white');
//           })
//         }
//       }
//     });
//   }
}

export { initUpdateNavbarOnScroll };
