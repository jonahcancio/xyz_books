<template>
  <div id="app">
    <div>
      <Navbar />
      <Jumbo />
    </div>
  </div>
</template>

<script>
import Jumbo from "./components/Jumbo.vue";
import Navbar from "./components/Navbar.vue";

export default {
  name: "App",
  components: {
    Jumbo, Navbar
  },
};
</script>

<style></style>
