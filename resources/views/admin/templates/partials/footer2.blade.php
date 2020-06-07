<footer class="py-4 bg-light mt-auto">
  <div class="container-fluid">
    <div class="d-flex align-items-center justify-content-between small">
      <div class="text-muted">Copyright &copy; Febri wijaya {{ date('Y') }}</div>
    </div>
  </div>
</footer>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('assets/dist/js/scripts.js') }}"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('assets/dist/assets/demo/datatables-demo.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script>
  $('button#delete').on('click', function(e) {
    e.preventDefault();
    var href = $(this).attr('href');

    Swal.fire({
      title: 'Apakah kamu yakin datanya sudah benar?',
      text: "Pastikan bahwa data dan buku yang dikembalikan sama!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes, Betul data sudah dicek!'
    }).then((result) => {
      if (result.value) {
        document.getElementById('deleteForm').action = href;
        document.getElementById('deleteForm').submit();

        Swal.fire(
          'dikembalikan!',
          'Buku sudah dikembalikan.',
          'success'
        )
      }
    })
  });
</script>
</body>

</html>