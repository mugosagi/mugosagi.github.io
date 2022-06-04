<script setup>
import Base from '@/components/Letters/Base.vue';
</script>

<template>
  <Base letter="G">
    <div class="image-container-second">
      <img
        src="@/assets/images/foreground.png"
        alt="background"
        class="object-cover first-image"
      />
      <img
        src="@/assets/images/image.png"
        alt="background"
        class="object-cover second-image"
      />
    </div>
  </Base>
</template>

<style lang="postcss" scoped>
.image-container-second {
  @apply inset-px overflow-hidden block absolute;

  width: 99%;
  height: 99%;

  &::before {
    @apply inset-0 block absolute z-10;

    content: '';
    transition: all 0.3s linear;
  }

  > img {
    @apply absolute inset-0 z-0 overflow-hidden h-full w-full;

    left: -25%;
    width: 150%;
    max-width: unset;
    transform: skew(11deg);

    &.first-image {
      z-index: 1;
      filter: brightness(1.5) contrast(0.9);
    }

    &.second-image {
      z-index: 0;
      filter: brightness(1) blur(1px) contrast(0.9);
    }
  }
}
</style>

<style lang="postcss">
.letter-container:hover .image-container-second {
  .second-image {
    animation: jiggle 250ms infinite;
  }
}

@keyframes jiggle {
  0%,
  100% {
    margin-left: -1px;
    filter: brightness(1);
  }

  50% {
    margin-left: 0;
    filter: brightness(0.9);
  }
}
</style>
