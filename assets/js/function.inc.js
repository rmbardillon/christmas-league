$(document).ready( function () {
    $('#schedule').DataTable({
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
    $('#stats').DataTable({
        paging: false,
        order: [[3, 'desc']]
    },{
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
    $('#standings').DataTable({
        paging: false,
        order: [[3, 'desc']]
    },{
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
    $('#roster').DataTable({
        paging: false,
        order: [[2, 'asc']]
    },{
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
});