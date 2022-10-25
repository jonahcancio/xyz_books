<template>
  <div id="app">
    <div>
      <Navbar />
      <ResultCards />
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
};
</script>

<style></style>
