<script setup>
import {
  LetterOne,
  LetterTwo,
  LetterThree,
  LetterFour,
} from '@/components/Letters';
</script>

<template>
  <main class="h-full">
    <div class="w-full h-full flex flex-col bg-black">
      <div class="flex flex-row m-auto mb-0 max-w-screen-2xl">
        <LetterOne />
        <LetterTwo />
        <LetterThree />
        <LetterFour />
      </div>
      <div class="text-white m-auto mt-2 font-thin font text-xs md:text-lg">
        <a href="https://www.instagram.com/mugosagi/" target="_blank">
          {{ 'instagram' }}
        </a>
        <span class="separator">|</span>
        <a href="https://github.com/mugosagi" target="_blank">github</a>
      </div>
    </div>
  </main>
</template>

<style lang="postcss" scoped>
.separator {
  @apply select-none mx-5;
}

.font {
  font-family: 'Nova Mono', monospace;
  > *:hover {
    @apply text-[#b03274];
  }
}
</style>
