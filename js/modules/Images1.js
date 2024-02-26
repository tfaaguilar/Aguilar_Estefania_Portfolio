    // Images for profile girl
export function Images1() {
        gsap.set('#heroimg', { opacity: 0 });
        gsap.to('#heroimg', { opacity: 1, duration: 2, ease: 'power2.inOut' });
    
        gsap.set('#screenimg', { opacity: 0 });
        gsap.to('#screenimg', { opacity: 1, duration: 2, ease: 'power2.inOut' });
    
        gsap.set('#mobileimg', { opacity: 0 });
        gsap.to('#mobileimg', { opacity: 1, duration: 2, ease: 'power2.inOut' });
    
        gsap.set('.animateimg', { opacity: 0 });
        gsap.to('.animateimg', { opacity: 1, duration: 2, ease: 'power2.inOut' });
  };