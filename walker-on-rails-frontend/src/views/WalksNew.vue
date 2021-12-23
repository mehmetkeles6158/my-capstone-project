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
          <br />
          <div>
            <input type="text" placeholder="Your Steps" v-model="newWalkParams.steps" />
          </div>
          <br />
          <div>
            <input type="date" placeholder="Date" v-model="newWalkParams.date" />
          </div>
          <br />
          <input type="submit" value="Add Walk" class="btn-success" />
        </div>
        <div class="card-footer text-muted">
          <p>"Keep Moving Forward :)"</p>
          <img
            src="https://media.istockphoto.com/photos/man-walk-away-on-railroad-with-warm-light-picture-id1163526318?b=1&k=20&m=1163526318&s=170667a&w=0&h=YbgFdxrQA9bAewLSOQqSuyxncaF5M-aWGeCOgHr_YFY="
            alt=""
          />
        </div>
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
