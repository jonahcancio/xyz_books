<template>
  <div class="result">
    <ResultCards :items="bookResults" />
  </div>
</template>

<script>
import ResultCards from "@/components/ResultCards.vue";

export default {
  components: {
    ResultCards,
  },
  props: {
    bookResults: {
      type: Array,
      default: () => [],
    },
  },
};
</script>
