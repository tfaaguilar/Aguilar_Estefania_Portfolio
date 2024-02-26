export function contactForm() {
    const form = document.querySelector("#driverForm");
    const feedBack = document.querySelector("#feedback");

    function regForm(event) {
        event.preventDefault();
        const url = "adduser.php";
        const thisform = event.currentTarget;
        const formdata =
            "&fname=" + thisform.elements.fname.value +
            "&email=" + thisform.elements.email.value +
            "&message=" + thisform.elements.message.value;

        fetch(url, {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: formdata
            })
            .then(response => response.json())
            .then(responseText => {
                feedBack.innerHTML = "";

                if (responseText.errors) {
                    responseText.errors.forEach(error => {
                        const errorElement = document.createElement("p");
                        errorElement.textContent = error;
                        feedBack.appendChild(errorElement);
                    });
                } else {
                    form.reset();
                    const messageElement = document.createElement("p");
                    messageElement.textContent = responseText.message;
                    feedBack.appendChild(messageElement);
                }
            })
            .catch(error => {
                console.error(error);
                const messageElement = document.createElement("p");
                messageElement.textContent = "Ooops, it looks like you're either using an older browser or not connected to the internet, or our server is having issues. Sorry about that!";
                feedBack.appendChild(messageElement);
            });
    }

    form.addEventListener("submit", regForm);
}
