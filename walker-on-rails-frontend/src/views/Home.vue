<template>
  <div class="home">
    <div class="container">
      <br />
      <div class="text-center">
        <h3>
          Welcome,
          <b>{{ users.name }}</b>
        </h3>
      </div>
      <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button
            type="button"
            data-bs-target="#carouselExampleCaptions"
            data-bs-slide-to="0"
            class="active"
            aria-current="true"
            aria-label="Slide 1"
          ></button>
          <button
            type="button"
            data-bs-target="#carouselExampleCaptions"
            data-bs-slide-to="1"
            aria-label="Slide 2"
          ></button>
          <button
            type="button"
            data-bs-target="#carouselExampleCaptions"
            data-bs-slide-to="2"
            aria-label="Slide 3"
          ></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img
              src="https://media.istockphoto.com/photos/young-man-walking-picture-id820848470?b=1&k=20&m=820848470&s=170667a&w=0&h=cIi9fmecBpDkuMKNQlZ6CGCJeDvYig__Rg_GZqTuMCk="
              class="d-block w-100"
              alt=""
            />
            <div class="carousel-caption d-none d-md-block">
              <h5>The Walker on The Rails</h5>
              <p>The first web app which gives you optimal numbers of steps you should walk daily.</p>
            </div>
          </div>
          <div class="carousel-item">
            <img
              src="https://images.unsplash.com/photo-1496185106368-308ed96f204b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8d2Fsa2luZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"
              class="d-block w-100"
              alt=""
            />
            <div class="carousel-caption d-none d-md-block">
              <h5>The Walker on The Rails</h5>
              <p>The web app is only about your walk.</p>
            </div>
          </div>
          <div class="carousel-item">
            <img
              src="https://images.unsplash.com/photo-1538471726790-0f6b031f1982?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8d2Fsa2luZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"
              class="d-block w-100"
              alt=""
            />
            <div class="carousel-caption d-none d-md-block">
              <h5>The Walker on The Rails</h5>
              <p>The coolest to way to track your steps, and calories you burned based on your optimal steps.</p>
            </div>
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#carouselExampleCaptions"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#carouselExampleCaptions"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
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
      message: "The Walker On the Rails!",
      users: [],
    };
  },
  created: function () {
    this.usersIndex();
  },
  methods: {
    usersIndex: function () {
      axios.get("/users").then((response) => {
        console.log(response.data);
        this.users = response.data;
      });
    },
  },
};
</script>
