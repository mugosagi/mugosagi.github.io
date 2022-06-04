<script setup>
import Base from '@/components/Letters/Base.vue';
</script>

<template>
  <Base letter="M">
    <div class="image-container-first">
      <img
        src="@/assets/images/photo_2021-11-14_21-31-28.jpg"
        alt="background"
        class="object-cover first-image"
      />
      <img
        src="@/assets/images/photo_2021-11-14_21-31-28.jpg"
        alt="background"
        class="object-cover second-image"
      />
      <img
        src="@/assets/images/photo_2021-11-14_21-31-28.jpg"
        alt="background"
        class="object-cover second-image"
      />
    </div>
  </Base>
</template>

<style lang="postcss" scoped>
.image-container-first {
  @apply inset-px overflow-hidden block absolute;

  width: 99%;
  height: 99%;
  animation-play-state: paused;

  &::before {
    @apply inset-0 block absolute z-10;

    content: '';
    transition: all 0.3s linear;
    animation: background-color 20s infinite;
    transition-delay: 0s, 250ms;
    animation-play-state: paused;
  }

  > img {
    @apply absolute inset-0 z-0 overflow-hidden h-full w-full;

    left: -25%;
    width: 150%;
    max-width: unset;
    transform: skew(11deg);

    &.first-image {
      z-index: 0;
      filter: brightness(5) contrast(900) blur(1px);
    }

    &.second-image {
      z-index: 1;
      filter: brightness(8) contrast(999) opacity(0.45) blur(3px);
      transform: rotate(132deg);

      &:first-of-type {
        animation: rotatemask 15s 500ms infinite;
        animation-play-state: paused;
      }

      &:last-of-type {
        animation: rotatemask 15s infinite reverse;
        animation-play-state: paused;
      }
    }
  }
}
</style>

<style lang="postcss">
.letter-container:hover .image-container-first {
  &::before {
    animation-play-state: running;
  }

  .second-image {
    &:first-of-type {
      animation-play-state: running;
    }

    &:last-of-type {
      animation-play-state: running;
    }
  }
}

@keyframes rotatemask {
  0%,
  100% {
    transform: rotate(160deg);
  }

  50% {
    transform: rotate(90deg);
  }
}

@keyframes background-color {
  0%,
  100% {
    background-color: rgb(255 0 108 / 66%);
  }

  50% {
    background-color: rgb(55 0 255 / 66%);
  }
}
</style>
