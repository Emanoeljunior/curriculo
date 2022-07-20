<template>
  <ion-page>
    <ion-header> </ion-header>
    <ion-content scroll-y="true">
      <div class="container">

        <ion-card>
          <ion-card-header>
            <ion-card-subtitle>2021-01-02</ion-card-subtitle>
            <ion-card-title> Ensaiando</ion-card-title>
          </ion-card-header>
          <ion-card-content>
            <div class="ion-text-justify">
              Meu pai me incentivou desde cedo a seguir firme nos estudos e também na música. No início, quando tinha  meus 10 anos, não queria muito.
              Mas com o passar do tempo fui gostando a cada dia mais, e hoje agradeço ao meu pai por ter me incentivado a permanecer na música.
            </div>
            <div class="container-img">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/bTZRTN_kfXM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>            
            </div>

            <!-- Your virtual scroll content -->
          </ion-card-content>
        </ion-card>
            <blog-post
           >

  
        <ion-card>
          <ion-card-header>
            <ion-card-subtitle>2022-07-02</ion-card-subtitle>
            <ion-card-title> Tocando em família</ion-card-title>
          </ion-card-header>
          <ion-card-content>
            <div class="ion-text-justify">
              Gosto muito de música, e isso é uma paixão compartilhada pela minha fámilia,
              nem um de nós é músico por profissão, mas sempre que possível gostamos de apreciar uma boa música.
            </div>
            <div class="container-img">
               <iframe width="560" height="315" src="https://www.youtube.com/embed/crsSyZoPWiw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>

            <!-- Your virtual scroll content -->
          </ion-card-content>
        </ion-card>
        </blog-post>


        </div>
        
    </ion-content>
  </ion-page>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { IonPage, IonHeader, IonContent } from "@ionic/vue";
import axios from 'axios';
import { ref, onMounted } from "vue";

export default defineComponent({
  name: "Tab2Page",
  components: { IonHeader, IonContent, IonPage },

});
</script>
<style scoped>
.container {
  max-width: 1000px;
  padding: 15px;
  margin: auto;
}
.video-container {
  margin-top: 15px;
  margin-bottom: 35px;
  align-content: center;
  position: relative;
  overflow: hidden;
  width: 100%;
  padding-top: 56.25%; /* 16:9 Aspect Ratio (divide 9 by 16 = 0.5625) */
}
.responsive-iframe {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  width: 100%;
  height: 100%;
}
.image {
  width: 100%;
  height: 100%;
}
.container-img {
  width: 500px;
  height: 500px;
  margin-top: 15px !important;
  margin-bottom: 35px;
  align-content: center;
  position: relative;
  margin: auto;
}
.ion-card {
  padding: 15px;
}
:root {
  --ion-safe-area-top: 20px;
  --ion-safe-area-bottom: 22px;
}
</style>