<template>
    <Container>
        <Button @click="hide()">Close</Button>
    </Container>
</template>
<script setup lang="ts">
import Container from './styled/Container.vue';
import Button from './styled/Button.vue';
import { useBaseCallbacks } from '../callbacks/baseCallbacks';

function hide() {
    useBaseCallbacks().hide();
}
</script>
