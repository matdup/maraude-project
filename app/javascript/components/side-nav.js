const sideNavFunction = () => {
  const addMaraudeBtn = document.querySelector(".add-a-maraude");
  const sideNav = document.querySelector(".sidenav");
  const sideNavRight = document.querySelector(".sidenav-right-part");
  const sideNavLeft = document.querySelector(".sidenav-left-part");

  if (addMaraudeBtn) {
    addMaraudeBtn.addEventListener("click", (event) => {
      sideNav.classList.add("active");
      sideNavRight.classList.add("sidenav-transition");
      sideNavLeft.addEventListener("click", (event) => {
        sideNavRight.classList.remove("sidenav-transition");
        sideNav.classList.remove("active");
      })
    })
  }
}

export { sideNavFunction }
