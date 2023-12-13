<script setup>
import { RouterLink, RouterView } from 'vue-router'
import Navigator from './components/Navigator.vue'
</script>

<template>
  <div class="fullpage">
    <header>
      <div>Script selector</div>
      <Navigator class="navigator" />
    </header>
    <div class="pagecontent">
      <RouterView />
    </div>
  </div>
</template>

<style scoped>
.fullpage {
  display: flex;
}

header {
  line-height: 1.5;
  max-height: 100vh;
  flex: 1;
}

.pagecontent {
  flex: 9;
}
</style>
