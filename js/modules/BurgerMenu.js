  // Burger menu
  export function BurgerMenu() {
    let button = document.querySelector('#button');
    let burgerCon = document.querySelector('#burger-con');

    function hamburgerMenu() {
      burgerCon.classList.toggle('slide-toggle');
      button.classList.toggle('expanded');
    }

    button.addEventListener('click', hamburgerMenu, false);
  };