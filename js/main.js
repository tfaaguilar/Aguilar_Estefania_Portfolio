
const logo = document.getElementById('logo');

    gsap.to(logo, {
        duration: 2, 
        x: 200, 
        rotation: 360, 
        scale: 2, 
        backgroundColor: "#F2D8D8", 
        ease: "power2.inOut", 
    });












const hamburgerCheckbox = document.getElementById("hamburger-checkbox");
        const menu = document.querySelector(".menu");

        hamburgerCheckbox.addEventListener("change", function () {
            if (this.checked) {
                menu.style.display = "block";
            } else {
                menu.style.display = "none";
            }
        });