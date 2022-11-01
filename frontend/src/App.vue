<template>
  <div id="app">
      <Navbar @query="handleQuery" />
      <router-view :book-results="bookResults" />
      <Footer />

  </div>
</template>

<script>
import Navbar from "./components/Navbar.vue";
import Footer from "./components/Footer.vue"

export default {
  name: "App",
  components: {
    Navbar, Footer
  },
  data() {
    return {
      bookResults: [],
    };
  },
  mounted() {
    console.log(`API URL: ${process.env.VUE_APP_API_BASE_URL}`);
  },
  methods: {
    handleQuery(searchInput) {
      this.$router
        .push({ name: "result", params: { isbn: searchInput } })
        .catch((err) => {});
      if (!searchInput) {
        this.listAll();
        return;
      }
      this.$axios
        .get("/books/query", {
          params: {
            isbn: searchInput,
          },
        })
        .then((response) => {
          console.log(response);
          if (response.data) this.bookResults = [response.data];
          else this.bookResults = [];
        })
        .catch((error) => {
          console.log(error);
          this.bookResults = [];
        });
    },
    listAll() {
      this.$axios
        .get("/books")
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
