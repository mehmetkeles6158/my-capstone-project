<template>
  <div class="home">
    <h5>Please enter park code to get deatils!</h5>
    <input type="text" v-model="parkCode" />
    <button v-on:click="parksIndex()">Get Info</button>
    <p>
      <b>Name:</b>
      {{ parks.fullName }}
    </p>
    <p>
      <b>Park-Description:</b>
      {{ parks.description }}
    </p>
    <p>
      <b>Park Address:</b>
      {{ parks.addresses[0]["line1"] }} {{ parks.addresses[0]["city"] }}/{{ parks.addresses[0]["stateCode"] }}
    </p>
    <p>
      <b>Weather Info:</b>
      {{ parks.weatherInfo }}
    </p>
  </div>
</template>

<style></style>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
      parkCode: "",
      parks: [],
    };
  },
  created: function () {
    // this.parksIndex();
  },
  methods: {
    parksIndex: function () {
      console.log("Loading parks");
      axios.get(`/parks?parkCode=${this.parkCode}`).then((response) => {
        console.log(response.data);
        this.parks = response.data;
      });
    },
  },
};
</script>
