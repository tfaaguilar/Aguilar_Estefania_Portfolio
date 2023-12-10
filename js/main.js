
// Logo animation using "Green Sock"

const logo = document.getElementById('logo');

gsap.to(logo, {
    duration: 1, 
    x: 20, 
    scale: 2,
    ease: "power2.inOut", 
    onComplete: () => {
        gsap.to(logo, {
            duration: 1,
            scale: 1,
            ease: "power2.inOut"
        });
    }
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

// imagenes

const imagenes = document.querySelectorAll('.imagenAnimada');

    function crearAnimacion(imagen) {
        const tl = gsap.timeline({ paused: true });
       tl.to(imagen, { scale: 0.8, opacity: 0.5, duration: 0.3 });
      
        
        imagen.addEventListener('mouseenter', () => tl.play());
        imagen.addEventListener('mouseleave', () => tl.reverse());
    }

    imagenes.forEach(imagen => {
        crearAnimacion(imagen);
    });

//Tittles
    
  document.addEventListener("DOMContentLoaded", function () {
      const elements = gsap.utils.toArray("h1, h2, h3");

      elements.forEach((element, index) => {
        gsap.from(element, {
          opacity: 0,
          y: 50,
          duration: 1,
          ease: "power2.out",
          scrollTrigger: {
            trigger: element,
            start: "top bottom", 
            end: "bottom top", 
            toggleActions: "play none none none",
          },
        });
      });
  });

//images

    gsap.set("#heroimg", { opacity: 0 });
    gsap.to("#heroimg", { opacity: 1, duration: 2, ease: "power2.inOut" });
    
    gsap.set("#screenimg", { opacity: 0 });
    gsap.to("#screenimg", { opacity: 1, duration: 2, ease: "power2.inOut" });

    gsap.set("#mobileimg", { opacity: 0 });
    gsap.to("#mobileimg", { opacity: 1, duration: 2, ease: "power2.inOut" });
 
 
  


