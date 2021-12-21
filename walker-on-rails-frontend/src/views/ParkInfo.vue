<template>
  <div class="home">
    <br />
    <h5 class="text-center">
      Please enter your
      <i>address</i>
      to get 3 closest national parks with their info!
    </h5>
    <div class="input-group mb-3">
      <input
        type="text"
        v-model="address"
        class="form-control"
        placeholder="Recipient's username"
        aria-label="Recipient's username"
        aria-describedby="button-addon2"
      />
      <button v-on:click="parksIndex()" class="btn btn-primary" type="button" id="button-addon2">Explore</button>
    </div>

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
