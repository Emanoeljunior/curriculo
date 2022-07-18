<template>
  <ion-page>
    <ion-header> </ion-header>
    <ion-content scroll-y="true">
      
      <div class="container">
        <ion-text>
          
          <ion-card>
            <div class="ion-text-center">
            <h3>Carreira</h3>
            <h3>Experiência com IoT</h3>
          </div>
            <div class="ion-text-justify">
            Para a disciplina de desenvolvimento mobile e IoT na faculdade
            desenvolvi um vídeo explicativo sobre API rest e sua importância
            para aplicações IoT no contexto de cidades inteligentes. Para a
            disciplina de desenvolvimento mobile e IoT na faculdade desenvolvi
            um vídeo explicativo sobre API rest e sua importância para
            aplicações IoT no contexto de cidades inteligentes.
          </div>
           <!-- Your virtual scroll content -->
        <div class="video-container">
          <iframe
            class="responsive-iframe"
            src="https://www.youtube.com/embed/oy-weBadEDs?rel=0"
            title="YouTube video player"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen
          ></iframe>
        </div>

          </ion-card>
          
        </ion-text>

       
        <h3>Projetos pessoais</h3>

        <ion-text>
          <div class="ion-text-center">
            <h3>Bobina de Tesla</h3>
          </div>

          <div class="ion-text-justify">
            No ultimo ano do ensino fundamental tivemos um trabalho sobre tipos
            de energias, o meu grupo ficou responsável por apresentar sobre a
            energia atômica e radiação. Onde fizemos uma pesquisa bibliográfica
            sobre o tema. No entanto a parte de aplicações práticas sempre me
            chamaram a atenção, como com radiação não poderíamos realizar nenhum
            experimento prático devido a medidas de proteção, resolvi ajudar os
            outros grupos com ideias do que implementar para a parte prática.
            Surgindo então a ideia de construir uma bobina de tesla. Acabamos
            não implementando naquele ano, mas essa vontade ficou comigo, e
            assim que terminei o ensino médio pedi ajuda pro meu pai e tiramos
            esse projeto do papel.
          </div>
          <div class="container-img">
            <ion-img
              class="image"
              hig
              src="./assets/bobina_tesla.jpg"
            ></ion-img>
          </div>

          <!-- Your virtual scroll content -->
        </ion-text>
         <ion-text>
          <div class="ion-text-center">
            <h3>Projeto de Automação (Codesys e Factory IO)</h3>
          </div>

          <div class="ion-text-justify">
            Esse projeto foi desenvolvido juntamente com o Vinicíus Amancio para a disciplina de 
            Laboratório de Automação e Manufatura. Onde é utilizado a técnica de Sistema de Eventos Discretos (SED), 
            modelando e implementando os surpevisores reduzidos na abordagem modular local.
          </div>
        <div class="video-container">
          <iframe
            class="responsive-iframe"
            src="https://www.youtube.com/embed/IRJ6oGiS9QQ?rel=0"
            title="YouTube video player"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen
          ></iframe>
        </div>
        </ion-text>

      </div>
    </ion-content>
  </ion-page>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { IonPage, IonHeader, IonContent } from "@ionic/vue";

export default defineComponent({
  name: "Tab3Page",
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
  margin-top: 15px;
  margin-bottom: 35px;
  align-content: center;
  position: relative;
  margin: auto;
  
}
</style>