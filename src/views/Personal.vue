<template>
  <ion-page>
    <ion-header> </ion-header>
    <ion-content :fullscreen="true">
      <div class="container">

      </div>
    </ion-content>
  </ion-page>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { IonPage, IonHeader, IonContent } from "@ionic/vue";

export default defineComponent({
  name: "Tab2Page",
  components: { IonHeader, IonContent, IonPage },
});
</script>
<style scoped>
.container {
  max-width: 700px;
  margin: auto;
}
</style>