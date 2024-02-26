export function Images3() {
    const imagenes = document.querySelectorAll('.imagenAnimada2');

    function crearAnimacion(imagen) {
      const tl = gsap.timeline({ paused: true });
      tl.to(imagen, { scale: 1.2, duration: 0.4 });

      imagen.addEventListener('mouseenter', () => tl.play());
      imagen.addEventListener('mouseleave', () => tl.reverse());
    }

    imagenes.forEach((imagen) => {
      crearAnimacion(imagen);
    });
};