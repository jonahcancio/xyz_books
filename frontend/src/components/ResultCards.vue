<template>
  <div>
    <b-jumbotron>
      <b-container>
        <b-card v-for="item in items" no-body class="result-card mb-4">
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
                    {{ authorList(item.authors) }}
                  </p>
                  <p>
                    Edition: <span class="blue">{{ item.edition }}</span>
                    <br />
                    Price: <span class="blue">PHP {{ item.price }}</span>
                    <br />
                    ISBN: <span class="blue">{{ item.isbn_13 }}</span>
                    <br />
                    publication_year:
                    <span class="blue">{{ item.publication_year }}</span>
                    <br />
                    publisher: <span class="blue">{{ item.publisher.name }}</span>
                    <br />
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
    items: Array
  },
  data() {
    return {
      // items: [
      //   {
      //     img_url: "https://picsum.photos/400/400/?image=20",
      //     title: "Doughnuts And Doom",
      //     authors: [
      //       "Hannah P. Templer",
      //       "Marguerite Z. Duras",
      //       "Iceberg Nash Slim",
      //     ],
      //     edition: "Book 3",
      //     price: 100.0,
      //     isbn_13: "978-1-603095-13-6",
      //     publication_year: 2022,
      //     publisher: "McSweeney's",
      //   }
      // ],
    };
  },

  methods: {
    authorList(authors) {
      let aString = "";
      if (!authors.length) return aString;
      authors.forEach((author, index) => {
        if (index == 0) aString += "by ";
        aString += `${author.full_name}`;
        if (index < authors.length - 1) aString += ", ";
      });
      return aString;
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.blue {
  color: rgb(97, 96, 247);
}

</style>
