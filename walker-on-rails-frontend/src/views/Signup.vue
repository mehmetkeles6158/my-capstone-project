<template>
  <div class="parkinfo">
    <section
      class="h-100 bg-image"
      style="
        background-image: url('https://images.unsplash.com/photo-1622057667220-7e0c8976ca6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');
      "
    >
      <div class="mask d-flex align-items-center h-100 gradient-custom-3">
        <div class="container h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-9 col-lg-7 col-xl-6">
              <div class="card" style="border-radius: 15px">
                <div class="card-body p-3">
                  <h2 class="text-uppercase text-center mb-3">Create an account</h2>
                  <ul>
                    <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
                  </ul>
                  <form v-on:submit.prevent="submit()">
                    <div class="form-outline mb-4">
                      <input
                        type="text"
                        v-model="newUserParams.name"
                        id="form3Example1cg"
                        class="form-control form-control-lg"
                        placeholder="Name"
                      />
                    </div>

                    <div class="form-outline mb-4">
                      <input
                        type="text"
                        v-model="newUserParams.age"
                        id="form3Example1cg"
                        class="form-control form-control-lg"
                        placeholder="Age"
                      />
                    </div>

                    <div class="form-outline mb-4">
                      <input
                        type="text"
                        v-model="newUserParams.height"
                        id="form3Example1cg"
                        class="form-control form-control-lg"
                        placeholder="Height"
                      />
                    </div>

                    <div class="form-outline mb-4">
                      <input
                        type="text"
                        v-model="newUserParams.weight"
                        id="form3Example1cg"
                        class="form-control form-control-lg"
                        placeholder="Weight"
                      />
                    </div>

                    <div class="form-outline mb-4">
                      <input
                        type="email"
                        v-model="newUserParams.email"
                        id="form3Example3cg"
                        class="form-control form-control-lg"
                        placeholder="Email"
                      />
                    </div>

                    <div class="form-outline mb-4">
                      <input
                        type="password"
                        v-model="newUserParams.password"
                        id="form3Example4cg"
                        class="form-control form-control-lg"
                        placeholder="Password"
                      />
                    </div>

                    <div class="form-outline mb-4">
                      <input
                        type="password"
                        v-model="newUserParams.password_confirmation"
                        id="form3Example4cdg"
                        class="form-control form-control-lg"
                        placeholder="Confirm Password"
                      />
                    </div>

                    <div class="d-flex justify-content-center">
                      <button type="submit" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">
                        Register
                      </button>
                    </div>

                    <p class="text-center text-muted mt-5 mb-0">
                      Have already an account?
                      <a href="/login" class="fw-bold text-body"><u>Login here</u></a>
                    </p>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      newUserParams: {},
      errors: [],
    };
  },
  methods: {
    submit: function () {
      axios
        .post("/users", this.newUserParams)
        .then((response) => {
          console.log(response.data);
          this.$router.push("/login");
        })
        .catch((error) => {
          this.errors = error.response.data.errors;
        });
    },
  },
};
</script>
