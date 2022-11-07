$(document).ready( function () {
    $('#schedule').DataTable({
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
    $('#add_stats').DataTable({
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
    $('#stats').DataTable({
        order: [[3, 'desc']]
    },{
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
    $('#standings').DataTable({
        order: [[3, 'desc']]
    },{
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
    $('#roster').DataTable({
        order: [[2, 'asc']]
    },{
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
});