<script setup>
    function getScripts() {
        return [
            {
                name: "✔ First script",
                code: "FirstScript"
            },
            {
                name: "🎶 Second script",
                code: "SecondScript"
            },
            {
                name: "🐱‍👤 Third script",
                code: "ThirdScript"
            }
        ]
    }

    let scripts = getScripts();
</script>

<template>
    <div class="nav">
        <div class="navitem" v-for="scr in scripts">
            <RouterLink :to="`/script/${scr.code}`" class="routerlink">{{scr.name}}</RouterLink>
        </div>
    </div>
</template>

<style>

.navitem {
    display: block;
    background-color: #282828;
    padding: 5px 5px 5px 10px;
    margin: 5px 5px 5px 0px;
    border-radius: 10px;
}

.navitem:hover {
    background-color: #404040;
    font-weight: bold;
}

.routerlink {
    color: #00AA55;
    text-decoration: none;
    width: 100%;
    height: 100%;
    display: block;
}

</style>