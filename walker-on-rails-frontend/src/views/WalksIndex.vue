<template>
  <div class="home">
    <div class="card text-white bg-secondary my-3 py-2 text-center">
      <div class="card-body">
        <h2 class="text-white m-0">Walk Distances</h2>
        <br />
        <p>
          <b>Total Steps:</b>
          {{ users.total_steps }}
          <br />
          <b>Total in Miles:</b>
          {{ users.total_miles }}
        </p>
      </div>
    </div>
    <div class="container px-4 px-lg-5">
      <div class="row gx-4 gx-lg-5">
        <div class="col-md-4 mb-5" v-for="walk in walks">
          <div class="card h-100">
            <div class="card-body">
              <h4 class="card-title">Walk-Info:</h4>
              <p class="card-text">
                <b>User id:</b>
                {{ walk.user_id }}
                <br />
                <b>Date:</b>
                {{ walk.date }}
                <br />
                <b>Steps:</b>
                {{ walk.steps }}
              </p>
            </div>
            <div class="card-footer">
              <!-- <a class="btn btn-primary btn-sm" v-bind:href="`/walks/${walk.id}`">More Info</a> -->
              <button class="btn btn-info btn-sm" v-on:click="showWalk(walk)">More Info</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <dialog id="show-walk">
      <form method="dialog">
        <img src="https://images.unsplash.com/photo-1485809052957-5113b0ff51af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fGhpa2luZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" class="img-fluid img-thumbnail my-1"
        height="100px"
        width="300px" alt="">
        <h3>Your Walk' Details Here,  </h3>
        <br />
        <p>
          <b>User Id:</b>
          {{ users.id }}
        </p>
        <p>
          <b>User Name:</b>
          {{ users.name }}
        </p>
        <p>
          <h5>Optimal Steps: "{{ users.optimal_steps }}"</h5>
          
        </p>
        <p>
          <b>Your Steps:</b>
          {{ currentWalk.steps }}
        </p>
        <p>
          <b>Miles:</b>
          {{ currentWalk.miles }} miles.
        </p>
        <p>
          <b>Calories-Burned:</b>
          {{ currentWalk.cal }} calories.
        </p>
        <button class="btn btn-warning btn-sm">Close</button>
      </form>
    </dialog>
  </div>
</template>

<style></style>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Daily Walks",
      walks: [],
      users: [],
      currentWalk: {},
    };
  },
  created: function () {
    this.walksIndex();
    this.usersIndex();
  },
  methods: {
    walksIndex: function () {
      console.log("Loading Walks");
      axios.get("/walks").then((response) => {
        console.log(response.data);
        this.walks = response.data;
      });
    },
    usersIndex: function () {
      axios.get("/users").then((response) => {
        console.log(response.data);
        this.users = response.data;
      });
    },
    showWalk: function (theWalk) {
      console.log(theWalk);
      this.currentWalk = theWalk;
      document.querySelector("#show-walk").showModal();
    },
  },
};
</script>
