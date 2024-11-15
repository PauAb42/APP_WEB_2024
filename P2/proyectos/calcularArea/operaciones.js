function calcularArea() {
    const figura = document.getElementById("figura").value;
    let n1 = parseFloat(document.getElementById("n1").value);
    let n2 = document.getElementById("n2") ? parseFloat(document.getElementById("n2").value) : null;
    let area;
    let imagePath;

    if (isNumber(n1) && (n2 === null || isNumber(n2))) {
        switch (figura) {
            case "Cuadrado":
                area = n1 * n1;
                imagePath = "images/cuadrado.png";
                break;
            case "Rectangulo":
                area = n1 * n2;
                imagePath = "images/rectangulo.png";
                break;
            case "Triangulo":
                area = (n1 * n2) / 2;  // Cálculo del área del triángulo
                imagePath = "images/triangulo.png";
                break;
            case "Circulo":
                area = Math.PI * Math.pow(n1, 2);  // Cálculo corregido del área del círculo
                imagePath = "images/circulo.png";
                break;
        }

        document.getElementById("resultado").innerHTML = `
            <h2>El área del ${figura.toLowerCase()} es: ${area.toFixed(2)}</h2>
            <img src="${imagePath}" alt="${figura}" style="width:100px; height:auto; margin-top:10px;">
        `;
    } else {
        document.getElementById("resultado").innerHTML = `<h2>Por favor, ingresa valores válidos.</h2>`;
        alert("Ingrese solo números.");
    }
}

function isNumber(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
}