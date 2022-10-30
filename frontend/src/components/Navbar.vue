<template>
  <div id="my-navbar">
    <b-navbar
      type="light"
      variant="faded"
    >
      <b-navbar-brand href="#">
        XYZ
      </b-navbar-brand>
      <b-navbar-nav class="mx-auto">
        <b-nav-form>
          <b-form-group
            :state="isValidIsbn"
            invalid-feedback="Invalid ISBN input"
            :tooltip="true"
          >
            <b-form-input
              v-model="searchInput"
              size="sm"
              class="mr-sm-2 round-input"
              placeholder="Search"
              :state="isValidIsbn"
            />
          </b-form-group>

          <b-button
            variant="primary"
            size="sm"
            class="my-2 my-sm-0"
            @click="$emit('query', searchInput)"
          >
            <b-icon-search />
          </b-button>
        </b-nav-form>
      </b-navbar-nav>
      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
        <b-navbar-nav>
          <b-nav-item href="#">
            Home
          </b-nav-item>
          <b-nav-item href="#">
            Rent Textbooks
          </b-nav-item>
          <b-nav-item href="#">
            Buy Textbooks
          </b-nav-item>
          <b-nav-item href="#">
            Sell Textbooks
          </b-nav-item>
        </b-navbar-nav>
        <div class="v-divider" />
        <b-nav-item href="#">
          En
        </b-nav-item>
        <b-button variant="primary">
          Contact
        </b-button>
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
}
</style>
