<template>
  <div class="Edit User">
    <form v-on:submit.prevent="submit()">
      <h1>Edit Your Info</h1>
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
      <input type="submit" value="Submit" />
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
  created: function () {},
  methods: {
    submit: function () {
      axios.patch("/users", this.editUserParams).then((response) => {
        console.log(response.data);
        this.$router.push("/walks");
      });
    },
  },
};
</script>
