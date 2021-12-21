<template>
  <div class="home">
    <section
      class="h-100 bg-image"
      style="
        background-image: url('https://images.unsplash.com/photo-1622057667220-7e0c8976ca6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');
      "
    >
      <br />
      <br />
      <h4 class="text-center">
        Please enter your
        <i>address</i>
        to get 3 closest national parks with their info!
      </h4>
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
        <div class="row gx-3 gx-lg-5">
          <div class="col-md-4 mb-4" v-for="park in parks">
            <div class="card h-100">
              <div class="card-body">
                <h4 class="card-title">Park-Info:</h4>
                <p class="card-text">
                  <br />
                  <b>Distance(in miles):</b>
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
    </section>
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
