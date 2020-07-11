<template>
  <button @click="myBtnClick">按钮</button>
</template>

<script lang="ts">
import { Vue, Component, Emit } from "vue-property-decorator";

@Component
export default class MyButton extends Vue {
  @Emit("myclick") private mySonClick() {
    console.log("mybutton");
  }
  private myBtnClick() {
    // this.$emit('myclick')
    this.mySonClick();
  }
}
</script>

<style lang="stylus" scoped></style>
