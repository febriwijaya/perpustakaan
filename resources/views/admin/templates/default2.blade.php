@include('admin.templates.partials.header')
@include('admin.templates.partials.navbar')
@include('admin.templates.partials.sidebar')
<main>
  <div class="container-fluid">
    <div class="mt-3">
      {{ Breadcrumbs::render() }}
    </div>
    @yield('content')
  </div>
</main>
@include('admin.templates.partials.footer2')