$(document).ready( function () {
    var schedule = $('#schedule').DataTable({
        buttons:['copy', 'csv', 'excel', 'pdf', 'print'],
        paging: false,
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
    $('#add_stats').DataTable({
        paging: false,
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
    var stats = $('#stats').DataTable({
        buttons:['copy', 'csv', 'excel', 'pdf', 'print'],
        paging: false,
        order: [[3, 'desc']],
        aoColumns: [
            null,
            null,
            null,
            { orderSequence: ['desc'] },
            { orderSequence: ['desc'] },
            { orderSequence: ['desc'] },
            { orderSequence: ['desc'] },
            { orderSequence: ['desc'] },
        ],
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ]
    });
    var tsp = $('#tsp').DataTable({
        buttons:['copy', 'csv', 'excel', 'pdf', 'print'],
        paging: false,
        order: [[3, 'desc']]
    });
    var standings = $('#standings').DataTable({
        buttons:['copy', 'csv', 'excel', 'pdf', 'print'],
        paging: false,
        order: [[3, 'desc']],
    });
    var roster = $('#roster').DataTable({
        
        buttons:['copy', 'csv', 'excel', 'pdf', 'print'],
        paging: false,
        order: [[2, 'asc']],
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ]
    });
    stats.buttons().container().appendTo('#stats_wrapper .col-md-6:eq(0)');
    roster.buttons().container().appendTo('#roster_wrapper .col-md-6:eq(0)');
    standings.buttons().container().appendTo('#standings_wrapper .col-md-6:eq(0)');
    schedule.buttons().container().appendTo('#schedule_wrapper .col-md-6:eq(0)');
    tsp.buttons().container().appendTo('#tsp_wrapper .col-md-6:eq(0)');
});

