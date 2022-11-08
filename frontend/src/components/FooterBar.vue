<template>
  <b-container fluid id="footer">
    <b-row class="footer-row">
      <b-col sm="4" class="footer-col-1">
        <b-img src="../assets/sample logo.svg" fluid class="mb-4"></b-img>
        <p class="mb-5">
          Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
          nonumy eirmod
        </p>
        <b-form-group class="position-relative mr-5">
          <b-icon-chevron-right class="chevron-right-icon" />
          <b-form-input
            size="md"
            class="mr-2 round-input email-input"
            placeholder="Email Address"
          />
        </b-form-group>
      </b-col>
      <b-col sm="2">
        <h4>Menu</h4>
        <div><b-link>Shop All</b-link></div>
        <div><b-link>About Us</b-link></div>
        <div><b-link>Community</b-link></div>
        <div><b-link>FAQs</b-link></div>
      </b-col>
      <b-col sm="2">
        <h4>Support</h4>
        <div><b-link>Shipping & Returns</b-link></div>
        <div><b-link>Help & FAQ</b-link></div>
        <div><b-link>Terms & Conditions</b-link></div>
        <div><b-link>Privacy Policy</b-link></div>
        <div><b-link>Contact</b-link></div>
        <div><b-link>Login</b-link></div>
      </b-col>
      <b-col sm="2">
        <h4>Resources</h4>
        <div><b-link>Shipping & Returns</b-link></div>
        <div><b-link>Help & FAQ</b-link></div>
        <div><b-link>Terms & Conditions</b-link></div>
        <div><b-link>Privacy Policy</b-link></div>
        <div><b-link>Contact</b-link></div>
        <div><b-link>Login</b-link></div>
      </b-col>
      <b-col sm="2" class="footer-col-5">
        <b-button class="msg-button">
          <b-img src="@/assets/Path 335.svg" />
        </b-button>
      </b-col>
    </b-row>
    <b-row class="footer-row">
      <b-col class="footer-col-1"><b>© 2022 Brainly.</b></b-col>
      <b-col offset="6" cols="3" class="footer-col-social">
        <b-button class="social-button">
          <b-img src="@/assets/facebook (3).svg" />
        </b-button>
        <b-button class="social-button">
          <b-img src="@/assets/linkedin (1).svg" />
        </b-button>
        <b-button class="social-button">
          <b-img src="@/assets/Logo_00000038394049246713568260000012923108920998390947_.svg" />
        </b-button>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
export default {
  data() {
    return {};
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less">
#footer {
  margin-bottom: 2rem;
  color: #061a45;

  .round-input {
    border-radius: 1rem;
  }

  .chevron-right-icon {
    position: absolute;
    right: 0.6rem;
    top: 0.75rem;
  }

  .email-input {
    padding-right: 2rem;
    border-color: #6f6ef7;
  }

  .footer-row {
    [class*="col"] {
      padding-top: 2rem;
    }

    a {
      color: #061a45;
    }

    .footer-col-1 {
      padding-left: 6rem;
      padding-right: 6rem;
    }

    .footer-col-5 {
      display: flex;
      flex-direction: column;
      justify-content: flex-end;
      align-items: center;

      .msg-button {
        background-color: #5fd2fa;
        border-radius: 50%;
        border-style: none;
        padding: 1rem;
      }
    }

    .footer-col-social {
      display: flex;
      gap: 0.5rem;
      align-items: flex-start;

      .social-button {
        background-color: #f2f2ff;
        border-radius: 50%;
        border-style: none;
        padding: 1rem;
        width: 3.75rem;
      }
    }
  }
}
</style>
