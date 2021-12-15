<template>
  <div id="app">
    <!-- <div id="nav"> -->
    <nav id="navbar_top" class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="/">Home</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item"><a class="nav-link active" aria-current="page" href="/walks">Walks</a></li>
            <li class="nav-item"><a class="nav-link" href="/walks/new">Add Walk</a></li>
            <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
            <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
            <li class="nav-item"><a class="nav-link" href="/signup">Signup</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- </div> -->
    <!-- Page Content-->
    <router-view />
    <!-- Footer-->
    <footer class="py-5 bg-dark">
      <div class="container px-4 px-lg-5">
        <p class="m-0 text-center text-white">Copyright &copy;</p>
      </div>
    </footer>
  </div>
</template>

<style></style>
