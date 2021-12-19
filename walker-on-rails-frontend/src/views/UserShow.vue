<template>
  <div class="show">
    <h1>{{ message }}</h1>
    <p>
      <b>User Name:</b>
      {{ user.name }}
    </p>
    <p>
      <b>New-Optimal-Steps:</b>
      {{ user.optimal_steps }}
    </p>
  </div>
</template>

<style></style>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Your Walk Details",
      user: [],
    };
  },
  created: function () {
    this.getUser();
  },
  methods: {
    getUser: function () {
      console.log("get user");
      axios.get("/users").then((response) => {
        console.log(response.data);
        this.user = response.data;
      });
    },
  },
};
</script>
