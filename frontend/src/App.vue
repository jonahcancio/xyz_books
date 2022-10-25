<template>
  <div id="app">
    <div>
      <Navbar />
      <ResultCards :items="bookResults" />
    </div>
  </div>
</template>

<script>
import Jumbo from "./components/Jumbo.vue";
import Navbar from "./components/Navbar.vue";
import ResultCards from "./components/ResultCards.vue";

export default {
  name: "App",
  components: {
    Jumbo,
    Navbar,
    ResultCards,
  },
  data() {
    return {
      bookResults: []
    }
  },
  mounted() {
    this.$axios
      .get("http://localhost:3000/books")
      .then((response) => {
        console.log(response);
        this.bookResults = response.data
      })
      .catch((error) => {
        console.log(error);
      });
  },
};
</script>

<style></style>
