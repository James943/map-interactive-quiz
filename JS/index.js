window.addEventListener("load", function(){
    
    document.querySelector("button").addEventListener("click", buttonClickAction);
    
});

function buttonClickAction() {
    var team = prompt("Please enter your team colour").toLowerCase().trim();
    if (team == "blue" || team == "purple"|| team == "orange"|| team == "green" || team == "yellow") {
        location.href = "question.html?q=1&team=" + team;
    } else {
        alert("Please enter a valid team colour");
    }
}