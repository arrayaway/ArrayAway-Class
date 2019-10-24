

var testMessage = "AHHHHH THE COOKIES ARE GONE";

function ScreamAboutCookies(numberOfTimes) {

    var i = 0;
    while (i < numberOfTimes) {
        document.getElementById("theBody").innerHTML += testMessage + "<br/>";
        i++;
    }

}


function MyFunction(myParameter, anotherParameter) {
    alert(myParameter + " " + anotherParameter);
}

