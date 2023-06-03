var marcas=[];

$(function() {
    var selected = [];

    $(function cargarMarcas(){
        
        $.post( "/marcas", function( data ) {
                for (let index = 0; index < data.length; index++) {
                    const element = data[index];
                    marcas.push(data[index]);
                    console.log(element);
                }
          });
    })
    
})


$( function() {
    $("#tags").autocomplete({
      source: marcas,
      select: function( event, marca){
        var value = marca.marca;
        selected.push(value);
        refreshDiv();
        var i = marcas.indexOf(value);
        marcas.splice(i, 1);
        event.preventDefault();
        $("#tags").focusout();
        $("#tags").val('');
      }
    });
  });





  function refreshDiv(){
    $("#emails").val(selected.join(','));
      var email_html = selected.map(function(f, i){
        return "<span class='btn btn-info btn-sm' style='margin: 3px;'>"+f+"&nbsp;&nbsp; <span onclick=\"removeEmail('"+f+"')\" style='color:red'>x</span></span>";
    });
      $("#email-html").html(email_html);
  }
  
  function removeEmail(email){
    availableTags.push(email);
      var i = selected.indexOf(email);
      selected.splice(i, 1);
      refreshDiv();
  }

