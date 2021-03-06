if (navigator.serviceWorker) {
	navigator.serviceWorker.register("https://brandonalex24.github.io/practica2/sw.js");
}
$(document).ready(function(){
	console.log("JQuery funcionando...");
	$('#linkPractica1').click(function(){
        console.log("Presiono link Practica1");
        location.href = "../Practica1/index.html";
    })

    $('#linkPractica2').click(function(){
        console.log("Presiono link Practica2");
        location.href = "../Practica2/index.html";
    })

    $('#linkPractica3').click(function(){
        console.log("Presiono link Practica3");
		location.href = "../Practica3/index.html";
    })

    $.ajax({
        dataType: 'json',
        url: 'SQLFunctions.php',
        success: function(response) {
            console.log(response);
            var obj = JSON.parse(JSON.stringify(response));
            var htmlstring = "";
            for (key in obj)
            {
                if(obj[key].fecha){
                    htmlstring += `
                    <tr class="text-white">
                    <th scope="col">`+ obj[key].fecha + `</th>
                    <th scope="col">`+ obj[key].hora + `</th>
                    <th scope="col">`+ obj[key].sensor + `</th>
                    <th scope="col">`+ obj[key].lectura + `</th>
                </tr>
                    `
                }
            }
            console.log(htmlstring);
            $('#tbody').html(htmlstring)
        },
        error: function(){
            console.log(arguments);
        }
    });
})
