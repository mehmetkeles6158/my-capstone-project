<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <p>
      <b>User Id:</b>
      {{ walk.user_id }}
    </p>
    <p>
      <!-- <p><router-link v-bind:to="`/walks/${walk.id}/edit`">Edit walk</router-link></p> -->
    </p>
  </div>
</template>

<style></style>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Welcome to The Show",
      walk: {},
    };
  },
  created: function () {
    this.getWalk();
  },
  methods: {
    getWalk: function () {
      console.log("get walk");
      axios.get(`/walks/${this.$route.params.id}`).then((response) => {
        console.log(response.data);
        this.walk = response.data;
      });
    },
  },
};
</script>
