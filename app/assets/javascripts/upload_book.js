$(function() {
  $( "#dialog-form" ).dialog({
    autoOpen: false,
    resizable: false,
    width: 500,
    modal: true,
    show: {
      effect: "blind",
      duration: 500
    },
    hide: {
      effect: "explode",
      duraction: 500
    },
    buttons: {
      Cancel: function() {
        $( this ).dialog( "close" );
      }
    }
  });

  $( "#new-book" ).click(function() {
    $( "#dialog-form" ).dialog( "open" );
  });
});