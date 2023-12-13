<script setup>
function getScriptData(scriptid) {
  let testData = {
    FirstScript: {
      name: "✔ First script",
      code: "FirstScript",
      instances: []
    },
    SecondScript: {
      name: "🎶 Second script",
      code: "SecondScript",
      instances: []
    },
    ThirdScript: {
        name: "🐱‍👤 Third script",
        code: "ThirdScript",
        instances: []
    }
  }

  return testData[scriptid];
}
</script>

<template>
  <div>
    <h1>{{ getScriptData($route.params.scriptid).name }}</h1>
    <div class="instancelist">
      
    </div>
  </div>
</template>

<style>

</style>
