<template>
  <b-container fluid id="footer">
    <b-row class="footer-row">
      <b-col cols="4" class="footer-col-1">
        <b-img src="../assets/sample logo.svg" fluid alt="sample logo"></b-img>
        <p>
          Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
          nonumy eirmod
        </p>
        <b-form-group class="position-relative">
          <b-icon-chevron-right class="chevron-right-icon" />
          <b-form-input
            size="sm"
            class="mr-sm-2 round-input email-input"
            placeholder="Email Address"
          />
        </b-form-group>
      </b-col>
      <b-col cols="2">
        <h4>Menu</h4>
        <div>Shop All</div>
        <div>About Us</div>
        <div>Community</div>
        <div>FAQs</div>
      </b-col>
      <b-col cols="2">
        <h4>Support</h4>
        <div>Shipping & Returns</div>
        <div>Help & FAQ</div>
        <div>Terms & Conditions</div>
        <div>Privacy Policy</div>
        <div>Contact</div>
        <div>Login</div>
      </b-col>
      <b-col cols="2">
        <h4>Resources</h4>
        <div>Shipping & Returns</div>
        <div>Help & FAQ</div>
        <div>Terms & Conditions</div>
        <div>Privacy Policy</div>
        <div>Contact</div>
        <div>Login</div>
      </b-col>
      <b-col cols="2" class="footer-col-5">
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
  margin-bottom: 30px;

  .round-input {
    border-radius: 16px;
  }

  .chevron-right-icon {
    position: absolute;
    right: 10px;
    top: 7px;
  }

  .email-input {
    padding-right: 30px;
    border-color: #6f6ef7;
  }

  .footer-row {
    [class*="col"] {
      padding-top: 30px;
    }

    .footer-col-1 {
      padding-left: 100px;
      padding-right: 100px;
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
        padding: 18px;
      }
    }

    .footer-col-social {
      display: flex;
      gap: 10px;
      align-items: flex-start;

      .social-button {
        background-color: #f2f2ff;
        border-radius: 50%;
        border-style: none;
        padding: 18px;
        width: 60px;
      }
    }
  }
}
</style>
