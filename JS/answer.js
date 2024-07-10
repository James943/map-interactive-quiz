window.addEventListener("load", function(){
    
    var ajax = new XMLHttpRequest();
    ajax.open("GET", "getQuestion.php?q=" + new URLSearchParams(location.search).get('q'), true);
    ajax.send();
    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            document.querySelector("P").textContent += data[0].q + " - " + data[0].question + " | Answer - " + data[0].answer;
            
            var canvas = document.querySelector("canvas");
            canvas.style.backgroundImage = "url(Images/" + data[0].image + ")";
            canvas.style.backgroundSize = "400px";
            
            drawCircle(5, "#4fcfe3", data[0].blue);
            drawCircle(5, "#db1e79", data[0].purple);
            drawCircle(5, "#f37328", data[0].orange);
            drawCircle(5, "#53f761", data[0].green);
            drawCircle(5, "#ffff00", data[0].yellow);
            drawCircle(5, "#ff0000", data[0].coordinates);
            drawCross(10, data[0].coordinates);
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
    document.querySelector("button").addEventListener("click", buttonClickAction);
});

function drawCircle(radius, colourHex, coordinates) {
    var context = document.querySelector("canvas").getContext("2d");
    context.fillStyle = colourHex;
    context.beginPath();
    context.arc(coordinates.slice(0,3), coordinates.slice(-3), radius, 0, 2 * Math.PI);
    context.fill();
}

function drawCross(length, coordinates) {
    var context = document.querySelector("canvas").getContext("2d");
    var x = Number(coordinates.slice(0,3));
    var y = Number(coordinates.slice(-3));
    context.beginPath();
    context.moveTo(x + length, y - length);
    context.lineTo(x - length, y + length);
    context.moveTo(x - length, y - length);
    context.lineTo(x + length, y + length);
    context.strokeStyle = '#ff0000';
    context.stroke();
}

function buttonClickAction() {
    var newQ = Number(new URLSearchParams(location.search).get('q')) + 1;
    location.href = "question.html?q=" + newQ + "&colour=" + new URLSearchParams(location.search).get('colour');
}