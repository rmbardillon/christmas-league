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
    },{
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, 'All'],
        ],
    });
    $('#tsp').DataTable({
        paging: false,
        order: [[3, 'desc']]
    });
    $('#standings').DataTable({
        paging: false,
        order: [[3, 'desc']],
        aoColumns: [
            null,
            { orderSequence: ['desc'] },
            { orderSequence: ['asc'] },
            { orderSequence: ['desc'] },
            null,
            null,
            { orderSequence: ['desc'] },

        ],
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