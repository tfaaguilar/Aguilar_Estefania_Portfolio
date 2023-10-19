// Logo animation using "Green Sock"

const logo = document.getElementById('logo');

    gsap.to(logo, {
        duration: 1, 
        x: 20, 
        rotation: 360, 
        scale: 2, 
        backgroundColor: "#F2D8D8", 
        ease: "power2.inOut", 
    });


//Burger menu

(function(){

	let button = document.querySelector("#button");
	let burgerCon = document.querySelector("#burger-con");

	function hamburgerMenu() {
		burgerCon.classList.toggle("slide-toggle");
		button.classList.toggle("expanded");
	};

	button.addEventListener("click", hamburgerMenu, false);		
})();