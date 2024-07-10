var q;
var colour;
var savedCoordinates;

window.addEventListener("load", function(){
    q = new URLSearchParams(location.search).get('q');
    colour = new URLSearchParams(location.search).get('colour');
    
    var ajax = new XMLHttpRequest();
    ajax.open("GET", "getQuestion.php?q=" + q, true);
    ajax.send();
    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            document.querySelector("P").textContent += data[0].q + " - " + data[0].question;
            
            var canvas = document.querySelector("canvas");
            canvas.style.backgroundImage = "url(Images/" + data[0].image + ")";
            canvas.style.backgroundSize = "400px";
            
            if (data[0].blue != 0) {
                if (colour == "blue") {
                    savedCoordinates = data[0].blue;
                }
            }
            if (data[0].purple != 0) {
                if (colour == "purple") {
                    savedCoordinates = data[0].purple;
                }
            }
            if (data[0].orange != 0) {
                if (colour == "orange") {
                    savedCoordinates = data[0].orange;
                }
            }
            if (data[0].green != 0) {
                if (colour == "green") {
                    savedCoordinates = data[0].green;
                }
            }
            if (data[0].yellow != 0) {
                if (colour == "yellow") {
                    savedCoordinates = data[0].yellow;
                }
            }
            if (savedCoordinates != null) {
               drawCircle(savedCoordinates.slice(0,3), savedCoordinates.slice(-3)); 
            }
        }
    };
    
    var ajax2 = new XMLHttpRequest();
    ajax2.open("GET", "getScore.php", true);
    ajax2.send();
    ajax2.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            
            var p1 = document.createElement("P");
            p1.textContent = data[0].blue + " - " + data[0].blueScore;
            p1.style.color = "#4fcfe3";
            document.querySelector("#wrapper").appendChild(p1);
            
            var p2 = document.createElement("P");
            p2.textContent = data[0].purple + " - " + data[0].purpleScore;
            p2.style.color = "#db1e79";
            document.querySelector("#wrapper").appendChild(p2);
            
            var p3 = document.createElement("P");
            p3.textContent = data[0].orange + " - " + data[0].orangeScore;
            p3.style.color = "#f37328";
            document.querySelector("#wrapper").appendChild(p3);
            
            var p4 = document.createElement("P");
            p4.textContent = data[0].green + " - " + data[0].greenScore;
            p4.style.color = "#53f761";
            document.querySelector("#wrapper").appendChild(p4);
            
            var p5 = document.createElement("P");
            p5.textContent = data[0].yellow + " - " + data[0].yellowScore;
            p5.style.color = "#ffff00";
            document.querySelector("#wrapper").appendChild(p5);
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
    var colourHex;
    switch (colour) {
        case "blue":
            colourHex = "#4fcfe3";
            break;
        case "purple":
            colourHex = "#db1e79";
            break;
        case "orange":
            colourHex = "#f37328";
            break;
        case "green":
            colourHex = "#53f761";
            break;
        case "yellow":
            colourHex = "#ffff00";
            break;
        default: colourHex = "#000000";
    }        
    context.fillStyle = colourHex;
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
    location.href = "submitCoordinates.php?q=" + q + "&colour=" + colour + "&coordinates=" + ('00' + Math.round(newX)).slice(-3) + "" + ('00' + Math.round(newY)).slice(-3);
}

function button2ClickAction() {
    var ajax = new XMLHttpRequest();
    ajax.open("GET", "getQuestion.php?q=" + q, true);
    ajax.send();
    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            if (data[0].blue == 0 || data[0].purple == 0 || data[0].orange == 0 || data[0].green == 0 || data[0].yellow == 0) {
                alert("Not everyone has submitted yet");
            } else {
                location.href = "answer.html?q=" + q + "&colour=" + colour;
            }
        }
    };
}