<template>
  <div class="login">
    <div class="container">
      <div class="row">
        <div class="col-md-6 offset-md-3">
          <h2 class="text-center text-dark mt-2">Login</h2>
          <div class="card my-2">
            <form v-on:submit.prevent="submit()" class="card-body cardbody-color p-lg-5">
              <ul>
                <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
              </ul>
              <div class="text-center">
                <img
                  src="https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295397__340.png"
                  class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3"
                  width="200px"
                  alt="profile"
                />
              </div>

              <div class="mb-3">
                <input
                  type="text"
                  v-model="newSessionParams.email"
                  class="form-control"
                  id="Username"
                  aria-describedby="emailHelp"
                  placeholder="User Name"
                />
              </div>
              <div class="mb-3">
                <input
                  type="password"
                  v-model="newSessionParams.password"
                  class="form-control"
                  id="password"
                  placeholder="password"
                />
              </div>
              <div class="text-center"><input type="submit" value="Login" /></div>
              <div id="emailHelp" class="form-text text-center mb-5 text-dark">
                Not Registered?
                <a href="/signup" class="text-dark fw-bold">Create an Account</a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      newSessionParams: {},
      errors: [],
    };
  },
  methods: {
    submit: function () {
      axios
        .post("/sessions", this.newSessionParams)
        .then((response) => {
          axios.defaults.headers.common["Authorization"] = "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          this.$router.push("/");
        })
        .catch((error) => {
          console.log(error.response);
          this.errors = ["Invalid email or password."];
          this.email = "";
          this.password = "";
        });
    },
  },
};
</script>
