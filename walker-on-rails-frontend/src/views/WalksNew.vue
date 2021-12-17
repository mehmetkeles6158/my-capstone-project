<template>
  <div class="create">
    <form v-on:submit.prevent="submit()">
      <ul>
        <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
      </ul>
      <div class="card text-center">
        <div class="card-header">The Walker on The Rails</div>
        <div class="card-body">
          <h5 class="card-title">Add Your Walk</h5>
          <div>
            <label>Steps:</label>
            <input type="text" v-model="newWalkParams.steps" />
          </div>
          <div>
            <label>Date:</label>
            <input type="date" v-model="newWalkParams.date" />
          </div>
          <input type="submit" value="Submit" />
        </div>
        <div class="card-footer text-muted">"Keep Moving :)"</div>
      </div>
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
