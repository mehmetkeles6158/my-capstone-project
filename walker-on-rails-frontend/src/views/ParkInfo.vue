<template>
  <div class="home">
    <h5>Please enter your address to get 3 closest national park with their info!</h5>
    <div>
      <input type="text" v-model="address" />
      <button v-on:click="parksIndex()">Get Info</button>
    </div>
    <br />
    <div class="container px-4 px-lg-5">
      <div class="row gx-4 gx-lg-5">
        <div class="col-md-4 mb-5" v-for="park in parks">
          <div class="card h-100">
            <div class="card-body">
              <h4 class="card-title">Park-Info:</h4>
              <p class="card-text">
                <b>Distance:</b>
                {{ park.distance }}
                <br />
                <b>Distance:</b>
                {{ park.distance }}
                <br />
                <b>Name:</b>
                {{ park.park_name }}
                <br />
                <b>Address:</b>
                {{ park.address }}
                <br />
                <b>Direction Info:</b>
                {{ park.directions_info }}
                <br />
                <b>Weather Info:</b>
                {{ park.weather_info }}
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style></style>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
      address: "",
      parks: [],
    };
  },
  created: function () {
    // this.parksIndex();
  },
  methods: {
    parksIndex: function () {
      axios.get(`/parks?address=${this.address}`).then((response) => {
        console.log(response.data);
        this.parks = response.data;
      });
    },
  },
};
</script>
