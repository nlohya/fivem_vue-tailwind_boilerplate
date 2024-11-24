<template>
    <RouterView v-if="dataStore.show"/>
</template>
<script setup lang="ts">
import { onMounted, onBeforeUnmount } from 'vue';
import { useDataStore } from './stores/data';

const dataStore = useDataStore();

interface MessageData {
    type: string;
    show?: boolean;
}

const messageHandler = (msg: { data: MessageData }) => {
    const data: MessageData = msg.data;
    if (data.type !== "ui") return;

    if (data.show !== undefined) {
        dataStore.setShow(data.show);
    }
}

onMounted(() => {
    window.addEventListener("message", messageHandler);
});

onBeforeUnmount(() => {
    window.removeEventListener("message", messageHandler);
});

</script>