<template>
  <ion-page>
    <ion-tabs>
      <ion-router-outlet></ion-router-outlet>
      <ion-tab-bar slot="top">
        <ion-tab-button tab="home" href="/tabs/home">
          <ion-title size="large" >Home</ion-title>
        </ion-tab-button>
          
        <ion-tab-button tab="personal" href="/tabs/personal">
          <ion-title>Personal</ion-title>
        </ion-tab-button>
        
        <ion-tab-button tab="work" href="/tabs/work">
          <ion-title>Work</ion-title>
        </ion-tab-button>
      </ion-tab-bar>
    </ion-tabs>
  </ion-page>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import { IonTabBar, IonTabButton, IonTabs, IonTitle, IonPage, IonRouterOutlet } from '@ionic/vue';
import { ellipse, square, triangle } from 'ionicons/icons';

export default defineComponent({
  name: 'TabsPage',
  components: { IonTitle, IonTabs, IonTabBar, IonTabButton, IonPage, IonRouterOutlet },
  setup() {
    return {
      ellipse, 
      square, 
      triangle,
    }
  }
});
</script>
