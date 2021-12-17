<template>
  <div class="signup">
    <form v-on:submit.prevent="submit()">
      <h1>Edit Your Info</h1>
      <ul>
        <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
      </ul>
      <div>
        <label>Height:</label>
        <input type="text" v-model="editUserInfo.height" />
      </div>
      <div>
        <label>Body:</label>
        <input type="text" v-model="editUserInfo.weight" />
      </div>
      <input type="submit" value="Submit" />
    </form>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      editUserInfo: {},
      errors: [],
    };
  },
  methods: {
    submit: function () {
      axios
        .patch("/users/" + this.$route.params.id, this.editUserInfo)
        .then((response) => {
          console.log(response.data);
          this.$router.push("/users");
        })
        .catch((error) => {
          this.errors = error.response.data.errors;
        });
    },
  },
  created: function () {},
};
</script>
