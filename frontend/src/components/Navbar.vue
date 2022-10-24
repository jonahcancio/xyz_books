<template>
  <div>
    <b-navbar type="light" variant="faded">
      <b-navbar-brand href="#">XYZ</b-navbar-brand>
      <b-navbar-nav class="mx-auto">
        <b-nav-form>
          <b-form-input
            size="sm"
            class="mr-sm-2 round-input"
            placeholder="Search"
            v-model="searchInput"
          />
          <b-button variant="primary" size="sm" class="my-2 my-sm-0" type="submit">
            <b-icon-search />
          </b-button>
        </b-nav-form>
      </b-navbar-nav>
      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
        <b-navbar-nav>
          <b-nav-item href="#">Home</b-nav-item>
          <b-nav-item href="#">Rent Textbooks</b-nav-item>
          <b-nav-item href="#">Buy Textbooks</b-nav-item>
          <b-nav-item href="#">Sell Textbooks</b-nav-item>
        </b-navbar-nav>
        <div class="v-divider"></div>
        <b-nav-item href="#">En</b-nav-item>
        <b-button variant="primary">Contact</b-button>
      </b-navbar-nav>
    </b-navbar>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchInput: "",
    };
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.v-divider {
  border-left: 0.5px solid rgb(233, 236, 239);
}

.round-input {
    border-radius: 16px;
}
</style>
