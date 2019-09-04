const scrollToElement = () => {
  const navLinks = document.querySelectorAll('.nav-scroll');
  navLinks.forEach((link) => {
    link.addEventListener('click', (event) => {
      event.preventDefault();
      const target = event.currentTarget.getAttribute('href');
      const targetElement = document.querySelector(`${target}`);
      if (targetElement) {
        targetElement.scrollIntoView({behavior: 'smooth'});
      }
    });
  });
}

export{ scrollToElement };
