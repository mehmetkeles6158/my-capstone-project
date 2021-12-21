<template>
  <div class="home">
    <h5>Please enter your address to get 3 closest national park with their info!</h5>
    <div>
      <input type="text" v-model="address" />
      <button v-on:click="parksIndex()">Get Info</button>
    </div>
    <br />

    <div v-for="park in parks">
      <p><b>Distance: </b>{{ park.distance}}</p>
      <p><b>Name: </b>{{ park.park_name}}</p>
      <p><b>Address: </b>{{ park.park_address}}</p>
      <p><b>Directions: </b>{{ park.directions_info}}</p>
      <p><b>Weather Info: </b>{{ park.weather_info}}</p>
      <hr>
    </div>
   
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
