 <script>
   @if(session('success'))
   $.notify({
     // options
     message: '{{ session('
     success ') }}'
   }, {
     // settings
     type: 'success'
   });
   @endif

   @if(session('info'))
   $.notify({
     // options
     message: '{{ session('
     info ') }}'
   }, {
     // settings
     type: 'info'
   });
   @endif
 </script>