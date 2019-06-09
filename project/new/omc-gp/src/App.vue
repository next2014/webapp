<template>
  <div id="app">
    <img alt="omc_logo" src="./assets/logo.png" width="100" >
    <HelloWorld msg="分享快乐小镇"/>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'app',
  components: {
    HelloWorld
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  padding:10px;
}
body{
  margin:0;
}
</style>
