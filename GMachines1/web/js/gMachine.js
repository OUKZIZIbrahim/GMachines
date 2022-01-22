$(document).ready(function () {
    alert("ok");
    $.ajax({
        url : "MachineController",
        data:{op:"load"},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
            remplir(data);
        }
    });
    $(".update").click(function () {
        var id = $(this).attr("var");
        alert(id);
        $.ajax({
            type: "GET",
            url: "MachineController",
            data: {id: id, op:"update"},
            
            success: function (data, textStatus, jqXHR) {
                remplir(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(textStatus);
            }
        });
    });
    function remplir(data) {
        var ligne = "";
        for (var i = 0; i < data.length; i++) {
            ligne += "<tr><td>" + data[i].id + "</td><td>" + data[i].reference + "</td><td>" + data[i].dateAchat + "</td><td>" 
                    + data[i].prix + "</td><td><a href='MachineController?id="+data[i].id
                    +"&op=delete'>Supprimer</a></td><td><button class='update' var='"+data[i].id+"'>Modifier</button></td></tr>\n";
        }
        $("#content").html(ligne);
    }
});


