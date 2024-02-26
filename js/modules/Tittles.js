  // Tittles
  export function Tittles() {
    document.addEventListener('DOMContentLoaded', function () {
      const elements = gsap.utils.toArray('h1, h2, h3');

      elements.forEach((element, index) => {
        gsap.from(element, {
          opacity: 0,
          y: 50,
          duration: 1,
          ease: 'power2.out',
          scrollTrigger: {
            trigger: element,
            start: 'top bottom',
            end: 'bottom top',
            toggleActions: 'play none none none',
          },
        });
      });
    });
};