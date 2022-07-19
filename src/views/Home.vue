<template>
  <ion-page>
    <ion-header> </ion-header>
    <ion-content scroll-y="true">
      <div class="container">
        <ion-card>
          <ion-card-header>
            <ion-card-subtitle>Projetos pessoais</ion-card-subtitle>
            <ion-card-title>Bobina de Tesla</ion-card-title>
          </ion-card-header>

          <ion-card-content>
            <div class="ion-text-justify">
              No ultimo ano do ensino fundamental tivemos um trabalho sobre
              tipos de energias, o meu grupo ficou responsável por apresentar
              sobre a energia atômica e radiação. Onde fizemos uma pesquisa
              bibliográfica sobre o tema. No entanto a parte de aplicações
              práticas sempre me chamaram a atenção, como com radiação não
              poderíamos realizar nenhum experimento prático devido a medidas de
              proteção, resolvi ajudar os outros grupos com ideias do que
              implementar para a parte prática. Surgindo então a ideia de
              construir uma bobina de tesla. Acabamos não implementando naquele
              ano, mas essa vontade ficou comigo, e assim que terminei o ensino
              médio pedi ajuda pro meu pai e tiramos esse projeto do papel.
            </div>
            <div class="container-img">
              <ion-img
                class="image"
                src="https://storage.googleapis.com/curriculo-emanoel_curriculo_bucket/uploads/2022/07/18/camera_py.jpg"
              ></ion-img>
            </div>

            <!-- Your virtual scroll content -->
          </ion-card-content>
        </ion-card>

        <ion-text>
          <ion-card-header>
            <ion-card-subtitle
              >Projeto de Automação (Codesys e Factory IO)</ion-card-subtitle
            >
            <ion-card-title>Card Title</ion-card-title>
          </ion-card-header>

          <blog-post
            v-for="post in posts"
            v-bind:key="post.id"
            v-bind:title="post.title"
          >
            {{ post.title }} <br
          /></blog-post>

          <div class="ion-text-justify">
            Esse projeto foi desenvolvido juntamente com o Vinicíus Amancio para
            a disciplina de Laboratório de Automação e Manufatura. Onde é
            utilizado a técnica de Sistema de Eventos Discretos (SED), modelando
            e implementando os surpevisores reduzidos na abordagem modular
            local.
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

<script lang="js">
import { defineComponent } from "vue";
import { IonPage, IonHeader, IonContent } from "@ionic/vue";
import axios from 'axios';
import { ref, onMounted } from "vue";

export default defineComponent({
  
  name: "Tab3Page",
  components: { IonHeader, IonContent, IonPage },
  data:() =>({
  // posts: [
  //   {
  //     id: 1,
  //     title: "Primeiro Post",
  //     content:
  //       '<p><img alt="" src="/media/uploads/2022/07/16/bobina_tesla.jpg" style="height:200px; width:200px" /></p>',
  //   },
  //   {
  //     id: 2,
  //     title: "Post 1",
  //     content:
  //       '<p><img alt="" src="/media/uploads/2022/07/16/bobina_tesla_TU5Py9s.jpg" style="height:200px; width:200px" /></p>',
  //   },
  // ],

  }),
  
 setup() {
    const posts = ref([]);
    onMounted(async () => {
      const res = await axios.post('/api', {
      query: `{
          allPosts{
                  id
                  title
                  }
              }`,
}, {
    headers: {
      'Content-Type': 'application/json'
    }
  })
  
      posts.value = res.data.data.allPosts;
      // console.log(res);
    });

    return {
      posts,
    };
  },

//   setup() {
//       const posts = axios.post('/api', {
//       query: `{
//           allPosts{
//                   id
//                   title
//                   }
//               }`,
// }, {
//     headers: {
//       'Content-Type': 'application/json'
//     }
//   }).then(response => { 
//   console.log(response.data.data.allPosts)
//   return response.data.data.allPosts

//   })


//       return{
//         posts
//       }

//         },
  
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