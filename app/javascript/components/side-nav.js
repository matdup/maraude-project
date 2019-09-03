const sideNavFunction = () => {
  const addMaraudeBtn = document.querySelector(".add-a-maraude");
  const sideNav = document.querySelector(".sidenav");
  const sideNavRight = document.querySelector(".sidenav-right-part");
  const sideNavLeft = document.querySelector(".sidenav-left-part");

  if (addMaraudeBtn) {
    addMaraudeBtn.addEventListener("click", (event) => {
      sideNav.classList.remove("d-none");
      sideNavRight.classList.add("sidenav-transition");
      sideNavLeft.addEventListener("click", (event) => {
        sideNavRight.classList.remove("sidenav-transition");
        sideNav.classList.add("d-none");
      })
    })
  }
}

export { sideNavFunction }
