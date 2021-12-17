<template>
  <div class="home">
    <div class="card text-white bg-secondary my-3 py-2 text-center">
      <div class="card-body">
        <h2 class="text-white m-0">The Walker On The Rails</h2>
        <p>
          <b>Total Steps:</b>
          {{ users.total_steps }}
        </p>
      </div>
    </div>
    <div class="row gx-4 gx-lg-5 align-items-center my-3">
      <div class="col-lg-7">
        <img
          class="img-fluid rounded mb-4 mb-lg-0"
          src="https://images.unsplash.com/photo-1449459831403-2ea2681d4270?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8&w=1000&q=80"
          alt="..."
        />
      </div>
      <!-- <div class="col-lg-5">
          <h1 class="font-weight-light">Your Walk Distances</h1>
        </div> -->
    </div>
  </div>
</template>

<style></style>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "The Walker On the Rails!",
      users: [],
    };
  },
  created: function () {
    this.usersIndex();
  },
  methods: {
    usersIndex: function () {
      console.log("Loading Users");
      axios.get("/users").then((response) => {
        console.log(response.data);
        this.users = response.data;
      });
    },
  },
};
</script>
