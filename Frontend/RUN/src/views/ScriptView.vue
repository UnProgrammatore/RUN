<script setup>
import { watch } from "vue";
import { useRoute } from "vue-router";
import InstanceSelector from '../components/InstanceSelector.vue'
function getScriptData(scriptid) {
  let testData = {
    FirstScript: {
      name: "✔ First script",
      code: "FirstScript",
      instances: [ { code: "abc123", selected: false }, { code: "qwe123", selected: false } ]
    },
    SecondScript: {
      name: "🎶 Second script",
      code: "SecondScript",
      instances: [ { code: "zxc123", selected: false } ]
    },
    ThirdScript: {
        name: "🐱‍👤 Third script",
        code: "ThirdScript",
        instances: []
    }
  }
  return testData[scriptid];
}
let route = useRoute();
let scriptData = getScriptData(route.params.scriptid);

watch(route, to => {
  scriptData = getScriptData(to.params.scriptid);
});
</script>

<template>
  <div>
    <h1>{{ scriptData.name }}</h1>
    <div class="instancelist">
      <InstanceSelector :scriptid="scriptData.code" />
    </div>
  </div>
</template>

<style>

</style>
