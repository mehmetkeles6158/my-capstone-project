<template>
  <div id="app">
    <nav id="navbar_top" class="navbar navbar-expand-md navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="/">THE WALKER</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNavDropdown"
          aria-controls="navbarNavDropdown"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="/walks/new">Add Walk</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="/walks">All Walks</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/users">Optimal</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/about">About</a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdownMenuLink"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Account
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <li v-if="!isLoggedIn()"><a class="dropdown-item" href="/login">Log in</a></li>
                <li v-if="isLoggedIn()"><a class="dropdown-item" href="/logout">Log out</a></li>
                <li><hr class="dropdown-divider" /></li>
                <li v-if="!isLoggedIn()"><a class="dropdown-item" href="/signup">Sign up</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- </nav> -->
    <!-- Page Content-->
    <router-view />
    <!-- Footer-->
    <footer class="py-3 bg-dark">
      <div class="container px-4 px-lg-5">
        <p class="m-0 text-center text-white">&copy;</p>
      </div>
    </footer>
  </div>
</template>

<style></style>

<script>
export default {
  methods: {
    isLoggedIn: function () {
      if (localStorage.getItem("jwt")) {
        return true;
      } else {
        return false;
      }
    },
  },
};
</script>
