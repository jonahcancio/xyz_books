<template>
  <div id="navbar">
    <div class="top-banner">
      <b-img src="@/assets/26.svg" class="img-flip" />
      <span class="mx-2"
        >Save up to $500 per year on millions of book titles!</span
      ><b-img src="@/assets/26.svg" />
    </div>
    <b-navbar type="light" variant="faded" class="navbar-main">
      <b-navbar-brand :to="{ name: 'home' }">
        <b-img src="@/assets/sample logo.svg" fluid alt="sample logo"></b-img>
      </b-navbar-brand>
      <b-navbar-nav class="ml-5">
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
        <b-nav-item href="#">
          <b-img src="@/assets/Icon feather-globe.svg" /> En
        </b-nav-item>
        <b-button variant="primary" class="contact-button"> Contact </b-button>
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

<style lang="less">
#navbar {

  .top-banner {
    padding-top: 0.5rem;
    height: 40px;
    text-align: center;
    background-image: url("@/assets/Mask Group 4.png");
    background-size: cover;
    color: white;

    .img-flip {
      -webkit-transform: scaleX(-1);
      transform: scaleX(-1);
    }
  }

  .navbar-main {
    padding-left: 6rem;
    padding-right: 6rem;
  }

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

  .contact-button {
    border-radius: 12px;
    background-color: #6160f6;
    width: 120px;
    height: 45px;
    border-style: none;
  }
}
</style>
