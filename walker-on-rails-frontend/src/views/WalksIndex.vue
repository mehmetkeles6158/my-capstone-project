<template>
  <div class="home">
    <div class="card text-white bg-secondary my-5 py-4 text-center">
      <div class="card-body">
        <h2 class="text-white m-0">Walk Distances</h2>
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
              <a class="btn btn-primary btn-sm" v-bind:href="`/walks/${walk.id}`">More Info</a>
            </div>
          </div>
        </div>
        <!-- <div class="col-md-4 mb-5">
          <div class="card h-100">
            <div class="card-body">
              <h2 class="card-title">Card Two</h2>
              <p class="card-text">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex natus at dolorem enim!
                Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore voluptates quos eligendi labore.
              </p>
            </div>
            <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
          </div>
        </div> -->
        <!-- <div class="col-md-4 mb-5">
          <div class="card h-100">
            <div class="card-body">
              <h2 class="card-title">Card Three</h2>
              <p class="card-text">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam
                molestias corporis quod, ea minima accusamus.
              </p>
            </div>
            <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
          </div>
        </div> -->
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
      message: "Daily Walks",
      walks: [],
    };
  },
  created: function () {
    this.walksIndex();
  },
  methods: {
    walksIndex: function () {
      console.log("Loading Walks");
      axios.get("/walks").then((response) => {
        console.log(response.data);
        this.walks = response.data;
      });
    },
  },
};
</script>
