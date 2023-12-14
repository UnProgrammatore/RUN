<script setup>
    const props = defineProps(['scriptid']);

    function getInstances(scid) {
        if(scid == 'FirstScript') {
            return [ { code: "asd123", selected: false }, { name: 'namedinstance', code: "qwe123", selected: false } ];
        }
        else if (scid == 'SecondScript') {
            return [ { code: "zxc123", selected: false } ];
        }
        else {
            return [];
        }
    }

    function selectInstance(inid) {
        instances.forEach(a => {
            if(a.code != inid)
                a.selected = false;
            else
                a.selected = true;
        });
    }

    function getInstanceClass(selected){
        return 'instancetab' + (selected ? ' sel' : '');
    }

    let instances = getInstances(props.scriptid)

    if(instances.length > 0)
        instances[0].selected = true;
</script>

<template>
    <div class="instancetab" :class="instance.selected ? 'sel' : ''" v-for="instance in instances" v-on:click="selectInstance(instance.code)" :key="instance.code">
        {{instance.name ?? instance.code}}
    </div>
</template>

<style>
.instancetab {
    border-radius: 10px;
    border: 5px 5px 0px 5px;
    border-color: #555555;
}
.instancetab.sel{
    background-color: #282828;
}
.instancetab:hover:not(.sel) {
    background-color: #555555;
}
</style>