/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function responsiveFuncion() {
    var x = document.getElementById("miBarraSuperior");
    if (x.className === "BarraSuperior") {
        x.className += " responsive";
    } else {
        x.className = "BarraSuperior";
    }
}