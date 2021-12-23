<template>
  <div class="Edit User">
    <form v-on:submit.prevent="submit()">
      <div class="card text-center">
        <div class="card-header">The Walker on The Rails</div>
        <div class="card-body">
          <h5 class="card-title">Update your info to get your new optimal!</h5>
          <p>
            (
            <b>Note:</b>
            Enter your height in inches and weight in pounds.)
          </p>
          <p>
            <b>Old-Optimal-Steps:</b>
            {{ editUserParams.optimal_steps }}
          </p>
          <div>
            <label>Age:</label>
            <input type="text" v-model="editUserParams.age" />
          </div>
          <div>
            <label>Height:</label>
            <input type="text" v-model="editUserParams.height" />
          </div>
          <div>
            <label>Weight:</label>
            <input type="text" v-model="editUserParams.weight" />
          </div>
          <input type="submit" value="Get-New-Optimal" class="btn btn-success" />
        </div>
        <div class="card-footer text-muted">
          <img
            src="https://media.istockphoto.com/photos/closeup-on-shoe-of-athlete-runner-man-feet-running-picture-id494437762?b=1&k=20&m=494437762&s=170667a&w=0&h=6ENwkyaIkT_mABDsCje07xO6mvA3UsTiWcOb5QnnAAs="
            alt=""
          />
        </div>
      </div>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      editUserParams: {},
    };
  },
  created: function () {
    this.getUser();
  },
  methods: {
    submit: function () {
      axios.patch("/users", this.editUserParams).then((response) => {
        console.log(response.data);
        this.$router.push("/users/optimal/show");
      });
    },
    getUser: function () {
      axios.get("/users").then((response) => {
        console.log(response.data);
        this.editUserParams = response.data;
      });
    },
  },
};
</script>
