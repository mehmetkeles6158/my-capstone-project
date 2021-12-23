<template>
  <div class="show">
    <br />
    <br />
    <ul class="list-group">
      <li class="list-group-item active" aria-current="true"><h5>Walk Details</h5></li>
      <li class="list-group-item">
        <p>
          <b>User Id:</b>
          {{ walk.user.id }}
        </p>
      </li>
      <li class="list-group-item">
        <p>
          <b>Name:</b>
          {{ walk.user.name }}
        </p>
      </li>
      <li class="list-group-item">
        <p>
          <b>Optimal Steps:</b>
          {{ walk.user.optimal_steps }}
        </p>
      </li>
      <li class="list-group-item">
        <p>
          <b>Your Steps:</b>
          {{ walk.steps }}
        </p>
      </li>
      <li class="list-group-item">
        <p>
          <b>Distance in miles:</b>
          {{ walk.miles }} miles.
        </p>
      </li>
      <li class="list-group-item">
        <p>
          <b>Calories-Burned:</b>
          {{ walk.cal }} calories.
        </p>
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
      walk: {},
    };
  },
  created: function () {
    this.getWalk();
  },
  methods: {
    getWalk: function () {
      axios.get(`/walks/${this.$route.params.id}`).then((response) => {
        console.log(response.data);
        this.walk = response.data;
      });
    },
  },
};
</script>
