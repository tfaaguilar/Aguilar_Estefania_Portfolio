
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
    
gsap.set(".animateimg", { opacity: 0 });
gsap.to(".animateimg", { opacity: 1, duration: 2, ease: "power2.inOut" });
    
//lightbox

document.addEventListener('DOMContentLoaded', function () {
    //lightbox
    let member = document.querySelectorAll('.work'),
        lightBox = document.querySelector('#lightbox');

    function loadHeroData() {
        lightBox.querySelector('.name').textContent = work[this.getAttribute('data-project')].name;
        lightBox.querySelector(".lb_heading").textContent = work[this.getAttribute('data-project')].headline;
        lightBox.querySelector('.bio').textContent = work[this.getAttribute('data-project')].bio;
        
    }

    member.forEach(hero => hero.addEventListener('click', loadHeroData));

let work = {
    Beatbuds : {
        name: "Cinema 4D - Adobe Photoshop - Adobe Illustrator ",
        headline: "Beatbuds",
        bio: "This website is dedicated to showcasing and promoting the most innovative earbuds in the market.",
  
    },

    Kavorka : {
        name: "Adobe Photoshop - Adobe Illustrator",
        headline: "Kavorka",
        bio: "Showcases an innovative brand dedicated to revolutionizing the skincare routines.",
    },

    Burple : {
        name: "Cinema 4D - Adobe Photoshop - Adobe Illustrator",
        headline: "Burple",
        bio: "Dedicated to promoting and providing information about Burple sparkling water.",
        
    },

    NFL : {
        name: "Cinema 4D - Adobe Photoshop",
        headline: "NFL",
        bio: "NFL match",
        
    },

    WBL: {
        name: "Adobe XD - Adobe illustrator - Adobe Photoshop",
        headline: "WBL",
        bio: "Work Based Learning",
    },

    Coffee: {
        name: "Adobe XD - Adobe illustrator - Adobe Photoshop",
        headline: "Colombian Coffee",
        bio: "Colombin coffee",
    }
    
    }
});