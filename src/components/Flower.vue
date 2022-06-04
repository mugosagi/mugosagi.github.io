<template>
  <div class="flower">
    <div v-for="i in 2" :key="i"></div>
    <div class="flower--darker"></div>
    <div class="flower--base"></div>
    <div class="flower--lighter"></div>
    <div class="flower--lighter"></div>
    <div class="flower--base"></div>
    <div class="flower--darker"></div>
    <div v-for="i in 2" :key="i"></div>

    <div v-for="i in 1" :key="i"></div>
    <div class="flower--darker"></div>
    <div class="flower--base"></div>
    <div v-for="i in 4" :key="i" class="flower--lighter"></div>
    <div class="flower--base"></div>
    <div class="flower--darker"></div>
    <div v-for="i in 1" :key="i"></div>

    <div class="flower--darker"></div>
    <div class="flower--base"></div>
    <div class="flower--lighter"></div>
    <div class="flower-center--darker"></div>
    <div class="flower-center--darker"></div>
    <div class="flower-center--base"></div>
    <div class="flower-center--lighter"></div>
    <div class="flower--lighter"></div>
    <div class="flower--base"></div>
    <div class="flower--darker"></div>

    <div class="flower--lighter"></div>
    <div class="flower--lighter"></div>
    <div class="flower-center--darker"></div>
    <div class="flower-center--darker"></div>
    <div class="flower-center--base"></div>
    <div class="flower-center--lighter"></div>
    <div class="flower-center--lighter"></div>
    <div class="flower-center--base"></div>
    <div class="flower--lighter"></div>
    <div class="flower--base"></div>

    <div class="flower--base"></div>
    <div class="flower--lighter"></div>
    <div class="flower-center--base"></div>
    <div class="flower-center--base"></div>
    <div v-for="i in 3" :key="i" class="flower-center--lighter"></div>
    <div class="flower-center--base"></div>
    <div class="flower--lighter"></div>
    <div class="flower--lighter"></div>

    <div class="flower--darker"></div>
    <div class="flower--base"></div>
    <div class="flower--lighter"></div>
    <div class="flower-center--lighter"></div>
    <div class="flower-center--lighter"></div>
    <div class="flower-center--base"></div>
    <div class="flower-center--base"></div>
    <div class="flower--lighter"></div>
    <div class="flower--base"></div>
    <div class="flower--darker"></div>

    <div v-for="i in 1" :key="i"></div>
    <div class="flower--darker"></div>
    <div class="flower--base"></div>
    <div v-for="i in 4" :key="i" class="flower--lighter"></div>
    <div class="flower--base"></div>
    <div class="flower--darker"></div>
    <div v-for="i in 1" :key="i"></div>

    <div v-for="i in 2" :key="i"></div>
    <div class="flower--darker"></div>
    <div class="flower--base"></div>
    <div class="flower--lighter"></div>
    <div class="flower--lighter"></div>
    <div class="flower--base"></div>
    <div class="flower--darker"></div>
    <div v-for="i in 2" :key="i"></div>
  </div>
</template>

<style lang="scss" scoped>
$flower-darker: #9cb8c6;
$flower: #c9dbe7;
$flower-lighter: #eaf0ff;
$flower-center-darker: #ebb344;
$flower-center: #f8d241;
$flower-center-lighter: #fcdf3b;
$size: 0.25rem;

.flower {
  display: grid;
  grid-template-columns: repeat(10, var(--size, $size));
  grid-template-rows: repeat(8, var(--size, $size));

  &--darker {
    background: $flower-darker;
  }
  &--base {
    background: $flower;
  }
  &--lighter {
    background: $flower-lighter;
  }

  &-center {
    &--darker {
      background: $flower-center-darker;
    }

    &--base {
      background: $flower-center;
    }

    &--lighter {
      background: $flower-center-lighter;
    }
  }
}
</style>
