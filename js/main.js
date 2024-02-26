import { animateSkills } from "./modules/animated-skills.js";
import {BurgerMenu} from "./modules/BurgerMenu.js";
import {logo} from "./modules/logo.js"
import {Tittles} from "./modules/Tittles.js"
import {Images1} from "./modules/Images1.js"
import {Images2} from "./modules/Images2.js"
import {Images3} from "./modules/Images3.js"
import regFormComponent from "./modules/regFormComponent.js";


BurgerMenu();
animateSkills();
logo();
Tittles();
  
if(document.body.dataset.page === 'home') {
  Images1();
  Images2();
  Images3();

} else if (document.body.dataset.page === 'contact') {

  regFormComponent();  
}

;



