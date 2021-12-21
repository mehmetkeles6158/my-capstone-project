<template>
  <div class="show">
    <!-- <h1>{{ message }}</h1>
    <p>
      <b>User Name:</b>
      {{ user.name }}
    </p>
    <p>
      <b>New-Optimal-Steps:</b>
      {{ user.optimal_steps }}
    </p> -->
    <ul class="list-group">
      <li class="list-group-item active" aria-current="true"><h5>New Optimal Goal</h5></li>
      <li class="list-group-item">
        <b>User Id:</b>
        {{ user.id }}
      </li>
      <li class="list-group-item">
        <b>User Name:</b>
        {{ user.name }}
      </li>
      <li class="list-group-item">
        <b>New-Optimal-Steps:</b>
        {{ user.optimal_steps }}
      </li>
      <li class="list-group-item aligned-center">
        <img
          src="https://media.istockphoto.com/photos/dream-of-tabby-cat-being-tiger-picture-id491246352?b=1&k=20&m=491246352&s=170667a&w=0&h=kQfs70MExQj6Dh-JO4gSjPyl4ScUa9xoegllm7Qyqk8="
          alt=""
        />
      </li>
    </ul>
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
      axios.get("/users").then((response) => {
        console.log(response.data);
        this.user = response.data;
      });
    },
  },
};
</script>
