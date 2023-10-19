
const logo = document.getElementById('logo');

    gsap.to(logo, {
        duration: 1, 
        x: 20, 
        rotation: 360, 
        scale: 2, 
        backgroundColor: "#F2D8D8", 
        ease: "power2.inOut", 
    });


(function(){

	let button = document.querySelector("#button");
	let burgerCon = document.querySelector("#burger-con");

	function hamburgerMenu() {
		burgerCon.classList.toggle("slide-toggle");
		button.classList.toggle("expanded");
	};

	// let hamburgerMenu = () => {
	// 	burgerCon.classList.toggle("slide-toggle");
	// 	button.classList.toggle("expanded");
	// };

	button.addEventListener("click", hamburgerMenu, false);		
})();