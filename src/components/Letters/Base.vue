<script setup>
defineProps({ letter: { type: String, default: '' } });
</script>

<template>
  <span class="letter-container">
    <span class="mask">
      <span class="char text-white overflow-hidden">
        {{ letter }}
      </span>
    </span>
    <span class="underlayer">
      <slot></slot>
      <span class="char z-10 text-black">
        {{ letter }}
      </span>
    </span>
  </span>
</template>

<style lang="postcss" scoped>
.letter-container {
  @apply overflow-hidden relative;

  transform: skew(-11deg);
  line-height: 1;

  &__empty {
    @apply z-10 bg-black;

    width: 1.7px;

    &-left {
      @apply -ml-px;
    }

    &-right {
      @apply mr-0;
    }
  }

  .mask {
    @apply absolute inset-0 z-20 bg-black overflow-hidden h-full transition-height duration-500 ease-in-out;
  }

  &:hover {
    .mask {
      @apply h-0;
    }
  }

  .underlayer {
    @apply z-10 inline-block h-full w-full;
  }

  .char {
    @apply select-none inline-block relative mt-4 mb-8;
    padding-left: 1.5vw;
    padding-right: 1.5vw;
    font-size: 20vw;
    font-family: 'Major Mono Display', monospace;
  }
}
</style>
