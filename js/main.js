import { animateSkills } from "./modules/animated-skills.js";
import {BurgerMenu} from "./modules/BurgerMenu.js";
import {logo} from "./modules/logo.js"
import {Tittles} from "./modules/Tittles.js"
import {Images1} from "./modules/Images1.js"
import {Images2} from "./modules/Images2.js"
import {Images3} from "./modules/Images3.js"
import { contactForm } from "./modules/contactForm.js"


BurgerMenu();
animateSkills();
logo();
Tittles();
  
if(document.body.dataset.page === 'home') {
  Images1();
  Images2();
  Images3();

} else if (document.body.dataset.page === 'contact') {
    contactForm();
} 



  

// function regForm(event) {
//   const form = document.querySelector("#driverForm");
//   const feedBack = document.querySelector("#feedback");
//   event.preventDefault();
//   const url = "adduser.php";
//   const thisform = event.currentTarget;
//   const formdata = 
//       "&fname=" + thisform.elements.fname.value +
//       "&email=" + thisform.elements.email.value +
//       "&message=" + thisform.elements.message.value;

//   fetch(url, {
//       method: "POST",
//       headers: {
//           "Content-Type": "application/x-www-form-urlencoded"
//       },
//       body: formdata
//   })
//   .then(response => response.json())
//   .then(responseText => {
//       console.log(responseText);
//       feedBack.innerHTML = "";

//       if (responseText.errors) {
//           responseText.errors.forEach(error => {
//               const errorElement = document.createElement("p");
//               errorElement.textContent = error;
//               feedBack.appendChild(errorElement);
//           });
//       } else {
//           form.reset();
//           const messageElement = document.createElement("p");
//           messageElement.textContent = responseText.message;
//           feedBack.appendChild(messageElement);
//       }
//   })
//   .catch(error => {
//       console.error(error);
//       const messageElement = document.createElement("p");
//       messageElement.textContent= "Ooops, it looks like your either using an older browser or not connected to the internet or our server is having issues. Sorry about that!"
//       feedBack.appendChild(messageElement);
//   });
// }

// return regForm;



