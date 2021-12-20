<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <p>{{ parks }}</p>
  </div>
</template>

<style></style>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
      parks: [],
    };
  },
  created: function () {
    this.parksIndex();
  },
  methods: {
    parksIndex: function () {
      console.log("Loading parks");
      axios.get("/parks?parkCode=abli").then((response) => {
        console.log(response.data);
        this.parks = response.data;
      });
    },
  },
};
</script>
