<script setup>
import Base from '@/components/Letters/Base.vue';
import Flower from '@/components/Flower.vue';
import { onBeforeUpdate, onMounted, onUnmounted, ref } from 'vue';

const base = ref(null);

const flowerSize = ref(0);

const updateFlowerSize = () =>
  (flowerSize.value = (base.value?.$el?.clientWidth ?? 0) / 100);

onMounted(() => {
  updateFlowerSize();
  window.addEventListener('resize', updateFlowerSize);
});

onUnmounted(() => window.removeEventListener('resize', updateFlowerSize));
</script>

<template>
  <Base ref="base" letter="G">
    <div class="image-container-second overflow-hidden">
      <div class="flowers">
        <div
          v-for="i in 20"
          class="flex mb-5"
          :class="i % 2 ? `ml-8` : `ml-15`"
          :style="`gap: ${flowerSize * 10}px`"
        >
          <Flower
            v-for="j in 10"
            :key="j"
            style="transform: skew(11deg)"
            class="relative"
            :style="`--size: ${flowerSize}px`"
          />
        </div>
      </div>
    </div>
  </Base>
</template>

<style lang="postcss" scoped>
.image-container-second {
  @apply inset-px overflow-hidden block absolute;

  background: radial-gradient(
      ellipse 50% 50%,
      #6467c5,
      #6467c5 25%,
      transparent 25%
    ),
    radial-gradient(ellipse 25% 25%, #6467c5, #6467c5 25%, #464aa4 25%);

  background-size: 1em 1em, 1.5em 1.5em;

  .flowers {
    animation: rotatemask 10s ease-in-out infinite;
    animation-play-state: paused;
    @keyframes rotatemask {
      0%,
      100% {
        transform: translate(-10%, -10%);
      }
      50% {
        transform: translate(-25%, -50%);
      }
    }
  }

  width: 99%;
  height: 99%;

  &::before {
    @apply inset-0 block absolute z-10;

    content: '';
    transition: all 0.3s linear;
  }
}
</style>

<style lang="postcss">
.letter-container:hover .flowers {
  animation-play-state: running;
}
</style>
