<script setup>
import Base from '@/components/Letters/Base.vue';
</script>

<template>
  <Base letter="S">
    <div class="bg-container"><div class="bg-animation"></div></div>
  </Base>
</template>

<style lang="postcss" scoped>
.bg-container {
  @apply inset-px overflow-hidden block absolute;

  width: 99%;
  height: 99%;

  &::before {
    @apply inset-0 block absolute z-10;

    content: '';
    transition: all 0.3s linear;
  }

  &:hover .bg-animation {
    animation-play-state: running;
  }

  .bg-animation {
    @apply h-full w-full;
    background-color: #18182a;
    background: repeating-linear-gradient(
      -45deg,
      #18182a,
      #c2c2c6 5px,
      #18182a 6px,
      #18182a 1px
    );

    background-size: 200% 200%;
    animation: background-move 30s linear infinite;

    animation-play-state: paused;

    @keyframes background-move {
      0% {
        background-position: 0% 0%;
      }
      50% {
        background-position: 50% 50%;
      }
      100% {
        background-position: 100% 100%;
      }
    }
  }
}
</style>

<style lang="postcss">
.letter-container:hover .bg-animation {
  animation-play-state: running;
}
</style>
