<script setup>
import Base from '@/components/Letters/Base.vue';
import Flower from '@/components/Flower.vue';
import { onMounted, onUnmounted, ref } from 'vue';

const base = ref(null);

const flowerSize = ref(0);
const flowerVerticalCount = ref(0);

const updateFlowerSize = () => {
  flowerSize.value = (base.value?.$el?.clientWidth ?? 0) / 100;
  flowerVerticalCount.value = Math.ceil(
    (base.value?.$el?.clientHeight ?? 0) / (flowerSize.value * 10 || 1)
  );
};

onMounted(() => {
  updateFlowerSize();
  window.addEventListener('resize', updateFlowerSize);
});

onUnmounted(() => window.removeEventListener('resize', updateFlowerSize));
</script>

<template>
  <Base ref="base" letter="G">
    <div class="image-container-second overflow-hidden">
      <div class="flowers" :style="`margin-top: -${flowerSize * 10}px`">
        <div
          v-for="i in flowerVerticalCount"
          class="flex"
          :key="i"
          :style="`
            gap: ${flowerSize * 10}px; 
            margin-bottom: ${flowerSize * 5}px; 
            margin-left: ${i % 2 ? flowerSize * 10 : 0}px
          `"
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
    @apply relative -left-14;
    animation: rotatemask 10s ease-in-out infinite;
    animation-play-state: paused;
    @keyframes rotatemask {
      0%,
      100% {
        transform: rotate(-8deg);
      }
      50% {
        transform: rotate(8deg);
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
