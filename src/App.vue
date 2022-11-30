<template>
  <div id="nav">
    <router-link to="/">Home321 {{ name }}</router-link> |
    <router-link to="/about">A12312bout</router-link>
  </div>
  {{ phoneData }}
  <router-view />
</template>

<script>
import { defineComponent } from "@vue/runtime-core";

export default defineComponent({
  data() {
    return {
      phoneData: {},
      name: process.env.VUE_APP_NAME,
    };
  },

  created() {
    this.phoneData = JSON.stringify({
      timeOpened: new Date(),
      timezone: new Date().getTimezoneOffset() / 60,
      page: navigator.userAgent,
      a: navigator.appVersion,
      os: navigator.product,
      as: navigator.platform,
      pageon() {
        return window.location.pathname;
      },
      referrer() {
        return document.referrer;
      },
      previousSites() {
        return history.length;
      },

      browserName() {
        return navigator.appName;
      },
      browserEngine() {
        return navigator.product;
      },
      browserVersion1a() {
        return navigator.appVersion;
      },
      browserVersion1b() {
        return navigator.userAgent;
      },
      browserLanguage() {
        return navigator.language;
      },
      browserOnline() {
        return navigator.onLine;
      },
      browserPlatform() {
        return navigator.platform;
      },
      javaEnabled() {
        return navigator.javaEnabled();
      },
      dataCookiesEnabled() {
        return navigator.cookieEnabled;
      },
      dataCookies1() {
        return document.cookie;
      },
      dataCookies2() {
        return decodeURIComponent(document.cookie.split(";"));
      },
      dataStorage() {
        return localStorage;
      },

      sizeScreenW() {
        return screen.width;
      },
      sizeScreenH() {
        return screen.height;
      },
      sizeDocW() {
        return document.width;
      },
      sizeDocH() {
        return document.height;
      },
      sizeInW() {
        return innerWidth;
      },
      sizeInH() {
        return innerHeight;
      },
      sizeAvailW() {
        return screen.availWidth;
      },
      sizeAvailH() {
        return screen.availHeight;
      },
      scrColorDepth() {
        return screen.colorDepth;
      },
      scrPixelDepth() {
        return screen.pixelDepth;
      },

      latitude() {
        return this.position.coords.latitude;
      },
      longitude() {
        return this.position.coords.longitude;
      },
      accuracy() {
        return this.position.coords.accuracy;
      },
      altitude() {
        return this.position.coords.altitude;
      },
      altitudeAccuracy() {
        return this.position.coords.altitudeAccuracy;
      },
      heading() {
        return this.position.coords.heading;
      },
      speed() {
        return this.position.coords.speed;
      },
      timestamp() {
        return this.position.timestamp;
      },
    });
  },

  methods: {
    getMac() {
      //
    },

    // Usage
  },
});
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
