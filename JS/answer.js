window.addEventListener("load", function(){
    
    var ajax = new XMLHttpRequest();
    ajax.open("GET", "getTableRow.php?q=" + new URLSearchParams(location.search).get('q'), true);
    ajax.send();
    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            document.querySelector("P").textContent += data[0].q + " - " + data[0].question + " | Answer - " + data[0].answer;
            var canvas = document.querySelector("canvas");
            var rect = canvas.getBoundingClientRect();
            var context = canvas.getContext("2d");
            
            context.fillStyle = "#4fcfe3";
            context.beginPath();
            context.arc(data[0].blue.slice(0,3), data[0].blue.slice(-3), 5, 0, Math.PI * 2);
            context.fill();
            
            context.fillStyle = "#db1e79";
            context.beginPath();
            context.arc(data[0].purple.slice(0,3), data[0].purple.slice(-3), 5, 0, Math.PI * 2);
            context.fill();
            
            context.fillStyle = "#f37328";
            context.beginPath();
            context.arc(data[0].orange.slice(0,3), data[0].orange.slice(-3), 5, 0, Math.PI * 2);
            context.fill();
            
            context.fillStyle = "#53f761";
            context.beginPath();
            context.arc(data[0].green.slice(0,3), data[0].green.slice(-3), 5, 0, Math.PI * 2);
            context.fill();
            
            context.fillStyle = "#ffff00";
            context.beginPath();
            context.arc(data[0].yellow.slice(0,3), data[0].yellow.slice(-3), 5, 0, Math.PI * 2);
            context.fill();
            
            context.fillStyle = "#000000";
            context.beginPath();
            context.arc(data[0].coordinates.slice(0,3), data[0].coordinates.slice(-3), 5, 0, Math.PI * 2);
            context.fill();
        }
    };
    document.querySelector("button").addEventListener("click", buttonClickAction);
});

function buttonClickAction() {
    var newQ = Number(new URLSearchParams(location.search).get('q')) + 1;
    location.href = "question.html?q=" + newQ + "&team=" + new URLSearchParams(location.search).get('team');
}