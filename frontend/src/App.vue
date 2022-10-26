<template>
  <div id="app">
    <div>
      <Navbar @query="handleQuery" />
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
      bookResults: [],
    };
  },
  methods: {
    handleQuery(searchInput) {
      if (!searchInput) {
        this.listAll();
        return;
      }
      this.$axios
        .get("http://localhost:3000/books/query", {
          params: {
            isbn: searchInput,
          },
        })
        .then((response) => {
          console.log(response);
          this.bookResults = [response.data];
        })
        .catch((error) => {
          console.log(error);
          this.bookResults = [];
        });
    },
    listAll() {
      this.$axios
        .get("http://localhost:3000/books")
        .then((response) => {
          console.log(response);
          this.bookResults = response.data;
        })
        .catch((error) => {
          console.log(error);
          this.bookResults = [];
        });
    },
  },
};
</script>

<style></style>
