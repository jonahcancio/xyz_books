<template>
  <div id="my-navbar">
    <b-navbar type="light" variant="faded">
      <b-navbar-brand :to="{ name: 'home' }"> XYZ </b-navbar-brand>
      <b-navbar-nav class="mx-auto">
        <b-nav-form @submit.prevent="trySearch">
          <b-form-group
            :state="isValidIsbn"
            invalid-feedback="Invalid ISBN input"
            :tooltip="true"
          >
            <b-icon-search class="search-icon" />
            <b-form-input
              v-model="searchInput"
              size="sm"
              class="mr-sm-2 round-input search-input"
              placeholder="Search"
              :state="isValidIsbn"
            />
          </b-form-group>
        </b-nav-form>
      </b-navbar-nav>
      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
        <b-navbar-nav>
          <b-nav-item href="#"> Home </b-nav-item>
          <b-nav-item href="#"> Rent Textbooks </b-nav-item>
          <b-nav-item href="#"> Buy Textbooks </b-nav-item>
          <b-nav-item href="#"> Sell Textbooks </b-nav-item>
        </b-navbar-nav>
        <div class="v-divider"></div>
        <b-nav-item href="#"> En </b-nav-item>
        <b-button variant="primary"> Contact </b-button>
      </b-navbar-nav>
    </b-navbar>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchInput: this.$route.params.isbn,
    };
  },
  computed: {
    isValidIsbn() {
      if (!this.searchInput) return null;
      const trimput = this.searchInput.replaceAll("-", "");
      if (trimput.length == 13) {
        for (let i = 0; i < trimput.length; i++) {
          if (isNaN(parseInt(trimput[i]))) {
            return false;
          }
        }
      } else if (trimput.length == 10) {
        for (let i = 0; i < trimput.length; i++) {
          if (i < trimput.length - 1 && isNaN(parseInt(trimput[i]))) {
            return false;
          } else if (
            i == trimput.length - 1 &&
            isNaN(parseInt(trimput[i])) &&
            !trimput[i].equalsIgnoreCase("x")
          ) {
            return false;
          }
        }
      } else {
        return false;
      }
      return true;
    },
  },
  watch: {
    $route(to, from) {
      this.syncRouteToSearch(to);
    },
  },
  mounted() {
    this.syncRouteToSearch(this.$route);
  },
  methods: {
    trySearch() {
      if (this.isValidIsbn || this.isValidIsbn == null) {
        this.$emit("query", this.searchInput);
      }
    },
    syncRouteToSearch(route) {
      console.log(route);
      if (route.name == "result") {
        this.searchInput = route.params.isbn;
        this.trySearch();
      }
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less">
#my-navbar {
  .v-divider {
    border-left: 0.5px solid rgb(233, 236, 239);
  }
  .round-input {
    border-radius: 16px;
  }
  .invalid-tooltip {
    left: auto;
  }

  .search-icon {
    position: relative;
    left: 25px;
    top: 2px;
  }

  .search-input {
    padding-left: 30px;
  }
}
</style>
