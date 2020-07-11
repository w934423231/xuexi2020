<template>
  <div class="btn">
    <input type="text" />
    <myButton @myclick="clickbtn"></myButton>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "vue-property-decorator";
// @Component  @Emit @Inject  @Provice @Prop @Watch @Model
import myButton from "@/components/myButton.vue";
@Component({
  components: {
    myButton
  }
})
export default class Home extends Vue {
  private clickbtn() {
    console.log("mybutton");
  }
}
</script>

<style lang="stylus" scoped>
.btn {
  text-align: center;
  padding: 50px 0;
}
</style>
