

$(window).ready(function() {
    $('#votes').DataTable({
        "destroy":true,
        "dom": 'rti<"bottom"p<"clear">>',
        "bFilter": false,
        "pageLength": 5,
        "ordering": false
    });
} );

$(window).ready(function() {
    $('#commentssection').DataTable({
        "destroy":true,
        "dom": 'rti<"bottom"p<"clear">>',
        "bFilter": false,
        "pageLength": 5,
        "ordering": false
    });
} );

$(window).ready(function() {
    $('#postprofile').DataTable({
        "destroy":true,
        "dom": 'rti<"bottom"p<"clear">>',
        "bFilter": false,
        "pageLength": 5,
        "ordering": false
    });
} );


$(window).ready(function() {
    $('#index').DataTable({
        "destroy":true,
        "dom": 'rti<"bottom"p<"clear">>',
        "bFilter": false,
        "pageLength": 5,
        "ordering": false
    });
} );

$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
  });