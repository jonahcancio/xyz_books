<template>
  <div>
    <b-jumbotron>
      <b-container>
        <b-card
          v-for="item in items"
          :key="item.id"
          no-body
          class="result-card mb-4"
        >
          <b-row no-gutters>
            <b-col md="4">
              <b-card-img
                :src="item.img_url || `https://picsum.photos/400/400/?image=20`"
                alt="Image"
                class="p-3 mh-100"
              />
            </b-col>
            <b-col md="8">
              <b-card-body :title="item.title">
                <b-card-text>
                  <p>
                    {{ item.authors && `by ${item.authors}` }}
                  </p>
                  <p>
                    Edition: <span class="blue">{{ item.edition }}</span>
                    <br>
                    Price: <span class="blue">PHP {{ item.price }}</span>
                    <br>
                    ISBN: <span class="blue">{{ item.isbn_13 }}</span>
                    <br>
                    publication_year:
                    <span class="blue">{{ item.publication_year }}</span>
                    <br>
                    publisher:
                    <span class="blue">{{ item.publisher }}</span>
                    <br>
                  </p>
                </b-card-text>
              </b-card-body>
            </b-col>
          </b-row>
        </b-card>
      </b-container>
    </b-jumbotron>
  </div>
</template>

<script>
export default {
  props: {
    items: Array,
    default: {}
  },
  data() {
    return {};
  },

  methods: {
  },
};
</script>

<style scoped>
.blue {
  color: rgb(97, 96, 247);
}
</style>
