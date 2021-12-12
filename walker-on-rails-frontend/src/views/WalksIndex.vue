<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <div v-for="walk in walks">
      <p>
        <b>User id:</b>
        {{ walk.user_id }}
      </p>
      <p>
        <b>Date:</b>
        {{ walk.date }}
      </p>
      <p>
        <b>Steps:</b>
        {{ walk.steps }}
      </p>
      <router-link v-bind:to="`walks/${walk.id}`">More Info</router-link>
      <hr />
    </div>
  </div>
</template>

<style></style>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Your Distances",
      walks: [],
    };
  },
  created: function () {
    this.walksIndex();
  },
  methods: {
    walksIndex: function () {
      console.log("Loading Walks");
      axios.get("/walks").then((response) => {
        console.log(response.data);
        this.walks = response.data;
      });
    },
  },
};
</script>
