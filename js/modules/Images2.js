    // Imagenes for user experience, web desing, multimedia production
    export function Images2() {
        const imagenes = document.querySelectorAll('.imagenAnimada');
    
        function crearAnimacion(imagen) {
          const tl = gsap.timeline({ paused: true });
          tl.to(imagen, { scale: 1.2, opacity: 0.8, duration: 0.3 });
    
          imagen.addEventListener('mouseenter', () => tl.play());
          imagen.addEventListener('mouseleave', () => tl.reverse());
        }
    
        imagenes.forEach((imagen) => {
          crearAnimacion(imagen);
        });
    };