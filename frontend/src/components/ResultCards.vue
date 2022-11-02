<template>
  <div id="result-cards" class="">
    <h1 class="mb-3">Search Result</h1>
    <b-card
      v-for="item in items"
      :key="item.id"
      no-body
      class="result-card mb-4"
      border-variant="light"
    >
      <b-row no-gutters>
        <b-col md="4">
          <b-card-img
            :src="item.image_url || `https://picsum.photos/400/400/?image=20`"
            alt="Image"
            class="p-3 book-img"
          />
        </b-col>
        <b-col md="8" class="pl-4">
          <b-card-body>
            <b-card-title
              ><h4>{{ item.title }}</h4></b-card-title
            >
            <b-card-text>
              <h6>
                {{ item.authors && `by ${item.authors}` }}
              </h6>
              <p>
                <span v-if="item.edition"
                  >Edition: <span class="blue">{{ item.edition }}</span
                  ><br />
                </span>
                Price: <span class="blue">PHP {{ item.price }}</span>
                <br />
                ISBN-13: <span class="blue">{{ item.isbn_13 }}</span>
                <br />
                ISBN-10: <span class="blue">{{ item.isbn_10 }}</span>
                <br />
                Publication Year:
                <span class="blue">{{ item.publication_year }}</span>
                <br />
                Publisher:
                <span class="blue">{{ item.publisher }}</span>
                <br />
              </p>
            </b-card-text>
          </b-card-body>
        </b-col>
      </b-row>
    </b-card>
  </div>
</template>

<script>
export default {
  props: {
    items: {
      type: Array,
      default: () => [],
    },
  },
  data() {
    return {};
  },
};
</script>

<style lang="less">
#result-cards {
  padding: 3rem 8rem;
  color: #061a45;

  .book-img {
    max-height: 28rem;
    object-fit: contain;
    // object-position: 50% 50%;
  }

  .blue {
    color: rgb(97, 96, 247);
  }
}
</style>
