<template>
  <div class="hello">
    <b-jumbotron
      header="BootstrapVue"
      lead="Bootstrap v4 Components for Vue.js 2"
    >
      <p>For more information visit website</p>
      <b-button
        variant="primary"
        href="#"
      >
        More Info
      </b-button>
    </b-jumbotron>
  </div>
</template>

<script>
export default {
  name: "Jumbo",
  props: {
    msg: String,
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
