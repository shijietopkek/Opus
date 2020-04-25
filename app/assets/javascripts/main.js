

$(window).ready(function() {
    $('#votes').DataTable({
        "dom": 'rti<"bottom"p<"clear">>',
        "bFilter": false,
        "pageLength": 5,
        "ordering": false
    });
    $.fn.dataTable.ext.errMode = 'none';
} );

$(window).ready(function() {
    $('#commentssection').DataTable({
        "dom": 'rti<"bottom"p<"clear">>',
        "bFilter": false,
        "pageLength": 5,
        "ordering": false
    });
    $.fn.dataTable.ext.errMode = 'none';
} );

$(window).ready(function() {
    $('#postprofile').DataTable({
        "dom": 'rti<"bottom"p<"clear">>',
        "bFilter": false,
        "pageLength": 5,
        "ordering": false
    });
    $.fn.dataTable.ext.errMode = 'none';
} );


$(window).ready(function() {
    $('#index').DataTable({
        "dom": 'rti<"bottom"p<"clear">>',
        "bFilter": false,
        "pageLength": 5,
        "ordering": false
    });
} );



