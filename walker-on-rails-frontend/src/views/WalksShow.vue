<template>
  <div class="show">
    <h1>{{ message }}</h1>
    <p>
      <b>User Id:</b>
      {{ walk.user_id }}
    </p>
    <p>
      <b>Name:</b>
      {{ walk.user.name }}
    </p>
    <p>
      <b>Optimal Steps:</b>
      {{ walk.user.optimal_steps }}
    </p>
    <p>
      <b>Your Steps:</b>
      {{ walk.steps }}
    </p>
    <p>
      <b>Distance in miles:</b>
      {{ walk.miles }}
    </p>
    <p>
      <b>Calories-Burned:</b>
      {{ walk.cal }}
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
