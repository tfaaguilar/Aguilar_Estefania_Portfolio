
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
    let member = document.querySelectorAll('.character'),
        lightBox = document.querySelector('#lightbox');

    function loadHeroData() {
        lightBox.querySelector('.name').textContent = character[this.getAttribute('data-member')].name;
        lightBox.querySelector(".lb_heading").textContent = character[this.getAttribute('data-member')].headline;
        lightBox.querySelector('.bio').textContent = character[this.getAttribute('data-member')].bio;
    }

    member.forEach(hero => hero.addEventListener('click', loadHeroData));

let character = {
    president : {
        name: "Matt Walker",
        headline: "President",
        bio: "He has overseen the growth and success of the agency and he has developed a wide range of skills working across diverse markets and brands on both a local and national level for consumer and clients. Today Matt facilitates creative thinking with clients and her team to explore and discover better ways to grow businesses and brands in the digital space. He is:",
        
        
    },

    director : {
        name: "David Harrison",
        headline: "Director",
        bio: "He's an expert project manager with a knack for turning complex problems into manageable tasks, his breadth of knowledge in the development space puts clients at ease and keeps projects on track. David holds a Bachelor of Business Management and Organizational Studies from Western University. He is:",
    },

    developer : {
        name: "Wendy Harper",
        headline: "Developer",
        bio: "She holds a bachelor's degree in Media Studies with a focus on Public Relations from the University of Guelph as well as a Media Communications diploma from Humber Institute of Technology and Advanced Learning. Her areas of expertise include website strategy and architecture, attention to detail, organization and creative writing. She is:",
        
    },

    designer : {
        name: "Michelle Wright",
        headline: "Designer",
        bio: "She has worked freelance, client-side, and with multiple agencies and has delivered award-winning work for groups of all sizes, spanning local businesses to global Fortune 500 enterprises. Her strong technical background helps her bring industry-leading solutions to the most complex challenges in the areas of SEO, analytics, and automation. She is:",
        
    }
    
    }
});