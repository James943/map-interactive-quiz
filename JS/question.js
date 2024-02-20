var q;
var team;
var savedCoordinates;

window.addEventListener("load", function(){
    q = new URLSearchParams(location.search).get('q');
    team = new URLSearchParams(location.search).get('team');
    
    var ajax = new XMLHttpRequest();
    ajax.open("GET", "getTableRow.php?q=" + q, true);
    ajax.send();
    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            document.querySelector("P").textContent += data[0].q + " - " + data[0].question;
            if (data[0].blue != 0) {
                if (team == "blue") {
                    savedCoordinates = data[0].blue;
                }
            }
            if (data[0].purple != 0) {
                if (team == "purple") {
                    savedCoordinates = data[0].purple;
                }
            }
            if (data[0].orange != 0) {
                if (team == "orange") {
                    savedCoordinates = data[0].orange;
                }
            }
            if (data[0].green != 0) {
                if (team == "green") {
                    savedCoordinates = data[0].green;
                }
            }
            if (data[0].yellow != 0) {
                if (team == "yellow") {
                    savedCoordinates = data[0].yellow;
                }
            }
            if (savedCoordinates != null) {
               drawCircle(savedCoordinates.slice(0,3), savedCoordinates.slice(-3)); 
            }
        }
    };
    
    var newX;
    var newY;
    document.querySelector("canvas").addEventListener("click", canvasClickAction);
    document.querySelector("button").addEventListener("click", buttonClickAction);
    document.querySelector("#viewAnswerButton").addEventListener("click", button2ClickAction);
});

function drawCircle(x, y) {
    var canvas = document.querySelector("canvas");
    var context = canvas.getContext("2d");
    var colour;
    switch (team) {
        case "blue":
            colour = "#4fcfe3";
            break;
        case "purple":
            colour = "#db1e79";
            break;
        case "orange":
            colour = "#f37328";
            break;
        case "green":
            colour = "#53f761";
            break;
        case "yellow":
            colour = "#ffff00";
            break;
        default: colour = "#000000";
    }        
    context.fillStyle = colour;
    context.beginPath();
    context.arc(x, y, 5, 0, Math.PI * 2);
    context.fill();
}

function canvasClickAction() {
    var rect = this.getBoundingClientRect();
    newX = event.clientX - rect.left;
    newY = event.clientY - rect.top;
    
    var context = this.getContext("2d");
    context.clearRect(0, 0, this.width, this.height);
    if (savedCoordinates != null) {
        drawCircle(savedCoordinates.slice(0,3), savedCoordinates.slice(-3)); 
    }
    drawCircle(newX, newY);
}

function buttonClickAction() {
    location.href = "submitCoordinates.php?q=" + q + "&team=" + team + "&coordinates=" + ('00' + Math.round(newX)).slice(-3) + "" + ('00' + Math.round(newY)).slice(-3);
}

function button2ClickAction() {
    var ajax = new XMLHttpRequest();
    ajax.open("GET", "getTableRow.php?q=" + q, true);
    ajax.send();
    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            if (data[0].blue == 0 || data[0].purple == 0 || data[0].orange == 0 || data[0].green == 0 || data[0].yellow == 0) {
                alert("Not everyone has submitted yet");
            } else {
                location.href = "answer.html?q=" + q + "&team=" + team;
            }
        }
    };
}