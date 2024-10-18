function operacion() {

    let n1, n2, tipope, ope, result;
    n1 = parseFloat(document.getElementById("n1").value);
    n2 = parseFloat(document.getElementById("n2").value);
    tipope = document.getElementById("calculador").value;
    ope;
    let simbolo;

    if (isNumber(n1) && isNumber(n2)) {

        switch (tipope) {
            case "Suma": ope = n1 + n2; simbolo = "+"; break;
            case "Resta": ope = n1 - n2; simbolo = "-"; break;
            case "Division": ope = n2 === 0 ? "Error: No se puede dividir por cero" : n1 / n2; simbolo = "/"; break;
            case "Multiplicacion": ope = n1 * n2; simbolo = "*"; break;
        }

        result = document.getElementById("resultado").innerHTML = `<h2> ${n1} ${simbolo} ${n2} = ${ope}</h2>`;
    }
    else {
        result = document.getElementById("resultado").innerHTML = `<h2>Ingresa solo números...</h2>`;
        alert("Ingrese sólo números mijo")
    }

}

function isNumber(n) {
    return !isNaN(parseInt(n) && isFinite(n))
}