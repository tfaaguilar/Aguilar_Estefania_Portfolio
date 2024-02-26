export function logo() {
    // Logo animation using "Green Sock"
    const logo = document.getElementById('logo');
  
    gsap.to(logo, {
      duration: 1,
      x: 20,
      scale: 2,
      ease: 'power2.inOut',
      onComplete: () => {
        gsap.to(logo, {
          duration: 1,
          scale: 1,
          ease: 'power2.inOut',
        });
      },
    });
}