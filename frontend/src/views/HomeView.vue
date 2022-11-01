<template>
  <b-container fluid id="home-view">
    <div class="top-bg">
      <b-row>
        <b-col cols="5" class="vertical-center get-started-text">
          <h1 class="mb-4 cheapest">The Cheapest Textbooks</h1>
          <h4 class="save-up mb-3">Save Up To 90% On Millions Of Titles</h4>
          <p class="mb-3">
            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
            nonumy eirmod tempor invidunt ut labore et dolore magna.
          </p>
          <div>
            <b-button size="lg" class="get-started-button"
              >Get Started</b-button
            >
          </div>
        </b-col>
        <b-col cols="7" class="text-center p-5">
          <b-img src="@/assets/hero illustration.svg" class="w-100 mr-5" />
        </b-col>
      </b-row>
      <b-row>
        <b-col cols="6" class="text-center p-5">
          <b-img src="@/assets/Group 13597.png" class="w-100 ml-5" />
        </b-col>
        <b-col cols="6" class="text-white vertical-center learn-more-text">
          <h2 class="mb-4 commitment">Our Commitment</h2>
          <p class="mb-4">
            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
            nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
            erat, sed diam voluptua. At vero eos et accusam et justo duo dolores
            et ea rebum
          </p>
          <div><b-button class="learn-more-button">Learn More</b-button></div>
        </b-col>
      </b-row>
      <div class="text-center mb-4">
        <h1 class="text-white">
          Trusted By Awesome <span style="color: #f6c644">Clients</span>
        </h1>
      </div>
      <b-row class="trusted-clients text-white">
        <b-col>
          <b-img src="@/assets/Group 13703.svg" class="mr-2" />
          <span>Binance</span>
        </b-col>
        <b-col>
          <b-img src="@/assets/Layer_x0020_1.svg" class="mr-2" />
          <span>Bitcoin</span>
        </b-col>
        <b-col>
          <b-img src="@/assets/solana-sol-logo.svg" class="mr-2" />
          <span>Solana</span>
        </b-col>
        <b-col>
          <b-img src="@/assets/Ethereum.svg" class="mr-2" />
          <span>Ethereum</span>
        </b-col>
        <b-col>
          <b-img src="@/assets/tether-usdt-logo.svg" class="mr-2" />
          <span>Tether</span>
        </b-col>
        <b-col>
          <b-img src="@/assets/Layer 2.svg" class="mr-2" />
          <span>XRP</span>
        </b-col>
      </b-row>
    </div>
  </b-container>
</template>

<script>
// @ is an alias to /src
// import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: "HomeView",
  components: {
    // HelloWorld
  },
};
</script>

<style lang="less">
#home-view {
  .top-bg {
    background-image: url("@/assets/banner bg.png");
    background-size: cover;
    padding-bottom: 6.25rem;

    .get-started-text {
      padding-left: 5rem;
      padding-right: 5rem;
      color: #151c55;
    }

    .get-started-button {
      color: white;
      background-color: #6160f6;
      border-radius: 0.5rem;
      padding-left: 2rem;
      padding-right: 2rem;
      border-style: none;
    }

    .cheapest {
      font-size: 3rem;
      font-weight: bold;
    }

    .save-up {
      color: #6160f6;
      font-weight: bold;
    }

    .commitment {
      font-weight: bold;
      font-size: 2rem;
    }

    .learn-more-text {
      padding-left: 6rem;
      padding-right: 9rem;
    }

    .learn-more-button {
      padding: 0.5rem 1.5rem;
      color: #5fd2fa;
      background-color: #151c55;
      border-radius: 0.5rem;
      border-style: none;
    }

    .trusted-clients {
      padding-left: 12.5rem;
      padding-right: 12.5rem;
      font-size: 1.4rem;
      height: 4rem;
      align-items: center;
    }
  }

  .vertical-center {
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
}
</style>
