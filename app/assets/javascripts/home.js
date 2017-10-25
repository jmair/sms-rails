$(document).on('turbolinks:load', function () {
  $('#messageModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var id = button.data('id');
    var first = button.data('first');
    var last = button.data('last');
    var modal = $(this);
    modal.find('.modal-title').text('New message to: ' + first + ' ' + last );
    modal.find('.modal-body #id').val(id);
  });
});
