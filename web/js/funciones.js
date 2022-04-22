$(document).ready(function () {
  $("tr #btnDelete").click(function (){
      var idp = $(this).parent().find("#idPro").val();
      eliminar(idp);
  }); 
    function eliminar(idp){
        var url = "ControladorCar?action=Delete";
        $.ajax({
            type: 'POST',
            url: url,
            data: "idPro="+idp,
            success: function (data, textStatus, jqXHR){
                alert("¡Registro eliminado!");
            }
        })
    }
}) ;


