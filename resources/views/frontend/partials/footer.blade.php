<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script>
  M.AutoInit();
</script>
@if (session('toast'))
<script>
  M.toast({html: '{{ session('toast')}}'})
</script>
@endif
</body>

</html>