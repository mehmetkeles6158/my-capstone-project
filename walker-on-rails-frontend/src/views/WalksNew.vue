<template>
  <div class="create">
    <form v-on:submit.prevent="submit()">
      <h1>Add Walk</h1>
      <ul>
        <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
      </ul>
      <!-- <div>
        <label>User Id:</label>
        <input type="text" v-model="newWalkParams.user_id" />
      </div> -->
      <div>
        <label>Steps:</label>
        <input type="text" v-model="newWalkParams.steps" />
      </div>
      <div>
        <label>Date:</label>
        <input type="date" v-model="newWalkParams.date" />
      </div>
      <input type="submit" value="Submit" />
    </form>
  </div>
</template>
<style></style>
<script>
import axios from "axios";
export default {
  data: function () {
    return {
      newWalkParams: {},
      errors: [],
    };
  },
  methods: {
    submit: function () {
      axios
        .post("/walks", this.newWalkParams)
        .then((response) => {
          console.log(response.data);
          this.$router.push("/walks");
        })
        .catch((error) => {
          this.errors = error.response.data.errors;
        });
    },
  },
};
</script>
