<template>
  <b-container fluid id="home-view">
    <div class="top-bg">
      <b-row>
        <b-col lg="5" class="vertical-center get-started-text">
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
        <b-col lg="7" class="text-center p-5">
          <b-img src="@/assets/hero illustration.svg" class="w-100 mr-5" />
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" class="text-center p-5">
          <b-img src="@/assets/Group 13597.png" class="w-100 ml-5" />
        </b-col>
        <b-col lg="6" class="text-white vertical-center learn-more-text">
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
          <b-img src="@/assets/Group 13703.svg" class="mr-lg-2 mr-md-1" />
          <span>Binance</span>
        </b-col>
        <b-col>
          <b-img src="@/assets/Layer_x0020_1.svg" class="mr-lg-2 mr-md-1" />
          <span>Bitcoin</span>
        </b-col>
        <b-col>
          <b-img src="@/assets/solana-sol-logo.svg" class="mr-lg-2 mr-md-1" />
          <span>Solana</span>
        </b-col>
        <b-col>
          <b-img src="@/assets/Ethereum.svg" class="mr-lg-2 mr-md-1" />
          <span>Ethereum</span>
        </b-col>
        <b-col>
          <b-img src="@/assets/tether-usdt-logo.svg" class="mr-lg-2 mr-md-1" />
          <span>Tether</span>
        </b-col>
        <b-col>
          <b-img src="@/assets/Layer 2.svg" class="mr-lg-2 mr-md-1" />
          <span>XRP</span>
        </b-col>
      </b-row>
    </div>
    <div class="mid-bg">
      <div class="text-center">
        <h1>Explore Our Books</h1>
      </div>
      <div class="text-center">
        <p>
          With our dedicated customer support team, you can rest easy knowing
          that we’re doing everything we can to save you time, money, and
          stress.
        </p>
      </div>
      <b-row class="explore-books">
        <b-col lg="4">
          <b-card border-variant="light" class="text-center mb-3 book-card">
            <b-card-img src="@/assets/doughnuts & Doom.png"></b-card-img>
          </b-card>
          <h2 class="px-3 mb-3 text-white">Doughnuts And Doom</h2>
          <b-link>
            <h5 class="px-3 view-book">
              View Book Details
              <b-icon-chevron-right class="chevron-right-icon" />
            </h5>
          </b-link>
        </b-col>
        <b-col lg="4">
          <b-card border-variant="light" class="text-center mb-3 book-card">
            <b-card-img src="@/assets/The Bend of Luck.png"></b-card-img>
          </b-card>
          <h2 class="px-3 mb-3 text-white">The Bend of Luck</h2>
          <b-link>
            <h5 class="px-3 view-book">
              View Book Details
              <b-icon-chevron-right class="chevron-right-icon" />
            </h5>
          </b-link>
        </b-col>
        <b-col lg="4">
          <b-card border-variant="light" class="text-center mb-3 book-card">
            <b-card-img src="@/assets/The Underwater Welder.png"></b-card-img>
          </b-card>
          <h2 class="px-3 mb-3 text-white">The Underwater Welder</h2>
          <b-link>
            <h5 class="px-3 view-book">
              View Book Details
              <b-icon-chevron-right class="chevron-right-icon" />
            </h5>
          </b-link>
        </b-col>
      </b-row>
      <div class="shop-reasons text-white">
        <div class="text-warning text-uppercase"><h6>Lorem ipsum</h6></div>
        <div class="text-white mb-5"><h1>3 Reasons to shop with us</h1></div>
        <b-row>
          <b-col lg="4">
            <b-img
              src="@/assets/package-box.svg"
              class="mb-3 reason-img"
            ></b-img>
            <h2 class="mb-3">
              All textbook rentals come with free return shipping.
            </h2>
            <p class="">
              Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
              nonumy eirmod tempor invidunt ut labore et dolore Stet clita kasd
              gubergren, no sea takimata.
            </p>
          </b-col>
          <b-col lg="4">
            <b-img src="@/assets/help.svg" class="mb-3 reason-img"></b-img>
            <h2 class="mb-3">Dedicated customer support and help portal.</h2>
            <p class="">
              Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
              nonumy eirmod tempor invidunt ut labore et dolore Stet clita kasd
              gubergren, no sea takimata.
            </p>
          </b-col>
          <b-col lg="4">
            <b-img
              src="@/assets/piggy-bank.svg"
              class="mb-3 reason-img"
            ></b-img>
            <h2 class="mb-3">
              Buy or rent cheap textbooks & save up to $500 per year!
            </h2>
            <p class="">
              Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
              nonumy eirmod tempor invidunt ut labore et dolore Stet clita kasd
              gubergren, no sea takimata.
            </p>
          </b-col>
        </b-row>
      </div>
      <div class="product-manager text-center">
        <h2 class="name">Andrew Santellan</h2>
        <h6 class="role">Product Manager, Binance</h6>
        <div class="client">
          <b-img src="@/assets/Binance.svg" class="mr-2" />
          <span>Binance</span>
        </div>
        <div class="rating-card-container">
          <b-card text-variant="white" class="rating-card">
            <b-img src="@/assets/user.png" class="avatar" />
            <p>
              Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
              nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
              erat, sed diam voluptua. At vero eos et accusam et justo duo
              dolores et ea rebum. Stet clita kasd gubergren, no sea takimata
              sanctus est Lorem ipsum dolor sit amet.
            </p>
            <div class="text-center">
              <b-img src="@/assets/star.svg" class="" />
            </div>
          </b-card>
        </div>
      </div>
    </div>

    <b-jumbotron fluid class="faq-jumbo">
      <h1>Frequently Asked Questions</h1>
      <div class="accordion" role="tablist">
        <div class="mb-1">
          <header class="p-1" role="tab">
            <div v-b-toggle.accordion-1 class="faq-header">
              <h5>Dedicated customer support and help portal.</h5>
              <b-img src="@/assets/Path 9712.svg" />
            </div>
          </header>
          <b-collapse
            id="accordion-1"
            visible
            accordion="my-accordion"
            role="tabpanel"
          >
            <b-card-body>
              <b-card-text>
                With our dedicated customer support team, you can rest easy
                knowing that we're doing everything we can to save you time,
                money, and stress.
              </b-card-text>
            </b-card-body>
          </b-collapse>
        </div>
        <div class="mb-1">
          <header class="p-1" role="tab">
            <div v-b-toggle.accordion-2 class="faq-header">
              <h5>
                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed
              </h5>
              <b-img src="@/assets/Path 9712.svg" class="flip-vertical" />
            </div>
          </header>
          <b-collapse
            id="accordion-2"
            visible
            accordion="my-accordion"
            role="tabpanel"
          >
            <b-card-body>
              <b-card-text> </b-card-text>
            </b-card-body>
          </b-collapse>
        </div>
        <div class="mb-1">
          <header class="p-1" role="tab">
            <div v-b-toggle.accordion-3 class="faq-header">
              <h5>
                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed
              </h5>
              <b-img src="@/assets/Path 9712.svg" class="flip-vertical" />
            </div>
          </header>
          <b-collapse
            id="accordion-3"
            visible
            accordion="my-accordion"
            role="tabpanel"
          >
            <b-card-body>
              <b-card-text> </b-card-text>
            </b-card-body>
          </b-collapse>
        </div>
        <div class="mb-1">
          <header class="p-1" role="tab">
            <div v-b-toggle.accordion-4 class="faq-header">
              <h5>
                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed
              </h5>
              <b-img src="@/assets/Path 9712.svg" class="flip-vertical" />
            </div>
          </header>
          <b-collapse
            id="accordion-4"
            visible
            accordion="my-accordion"
            role="tabpanel"
          >
            <b-card-body>
              <b-card-text> </b-card-text>
            </b-card-body>
          </b-collapse>
        </div>
      </div>
    </b-jumbotron>
  </b-container>
</template>

<script>
export default {
  name: "HomeView",
  methods: {
    accordionToggle(acc) {
      let key = `v-b-toggle.accordion-${acc}`;
      return {
        [key]: true,
      };
    },
  },
};
</script>

<style lang="less">
@md: ~"(min-width: 768px)";
@lg: ~"(min-width: 992px)";
@xl: ~"(min-width: 1200px)";

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
      padding: 0.5rem 2rem;
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
      padding: 0.5rem 1.75rem;
      color: #5fd2fa;
      background-color: #151c55;
      border-radius: 0.5rem;
      border-style: none;
    }

    .trusted-clients {
      @media @lg {
        padding-left: 12.5rem;
        padding-right: 12.5rem;
      }

      @media @md {
        padding-left: 4rem;
        padding-right: 4rem;
      }

      font-size: 1.4rem;
      height: 4rem;
      align-items: center;
    }
  }

  .mid-bg {
    padding-top: 6rem;

    background-image: linear-gradient(
      -2deg,
      white,
      white 16%,
      #061a36 16.25%,
      #061a36 90%,
      white 90.25%,
      white
    );

    @media @md {
      background-image: linear-gradient(
        -2deg,
        white,
        white 12%,
        #061a36 12.25%,
        #061a36 90%,
        white 90.25%,
        white
      );
    }

    @media @lg {
      background-image: linear-gradient(
        -2deg,
        white,
        white 28%,
        #061a36 28.25%,
        #061a36 80%,
        white 80.25%,
        white
      );
    }

    @media @xl {
      background-image: linear-gradient(
        -2deg,
        white,
        white 28%,
        #061a36 28.25%,
        #061a36 70%,
        white 70.25%,
        white
      );
    }

    .explore-books {
      padding: 1rem 8rem;
      margin-bottom: 7rem;

      .book-card {
        background-image: linear-gradient(rgba(0, 0, 0, 0), #e5e8ec);
      }

      .view-book {
        color: #5fd2fa;
      }
    }

    .shop-reasons {
      @media @lg {
        padding: 1rem 12rem 10rem 6rem;
      }

      padding: 0.5rem 2rem 1rem;

      .reason-img {
        height: 4rem;
      }

      .col {
        padding-right: 3rem;
      }
    }

    .product-manager {
      margin-bottom: 8rem;

      .name {
        color: #151c55;
      }

      .role {
        color: #5fd2fa;
      }

      .client {
        color: #8a8daa;
        font-size: 1.5rem;
        font-weight: 500;

        img {
          opacity: 0.5;
        }
      }

      .rating-card-container {
        margin-top: 6rem;
        @media @xl {
          padding-left: 24rem;
          padding-right: 24rem;
        }

        @media @lg {
          padding-left: 12rem;
          padding-right: 12rem;
        }

        .rating-card {
          border-radius: 0.75rem;
          background-color: #4299f7;
          padding: 4rem 4rem 1rem;

          position: relative;
          .avatar {
            width: 8rem;
            border-radius: 50%;
            position: absolute;
            top: 0%;
            left: 50%;
            transform: translate(-50%, -50%);
          }

          box-shadow: 00rem -2rem 0.25rem -0.75rem #d9ebfd;
        }
      }
    }
  }

  .faq-jumbo {
    @media @xl {
      padding-left: 26rem;
      padding-right: 26rem;
    }

    .faq-header {
      display: flex;
      justify-content: space-between;
      color: #6182f7;
    }
  }

  .vertical-center {
    display: flex;
    flex-direction: column;
    justify-content: center;
  }

  .flip-vertical {
    -webkit-transform: scaleY(-1);
    transform: scaleY(-1);
  }
}
</style>
