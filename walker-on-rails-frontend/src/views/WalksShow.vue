<template>
  <div class="show">
    <h1>{{ message }}</h1>
    <p>
      <b>User Id:</b>
      {{ walk.user_id }}
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
      <b>Miles:</b>
      {{ walk.miles }}
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
