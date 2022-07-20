<template>
  <ion-page>
    <ion-header> </ion-header>

  <div class="container">
    <ion-title style="font-size:40px" >Olá meu nome é <b>Emanoel Alves Junior</b></ion-title>
   </div>
  </ion-page>
</template>

<script lang="js">
import { defineComponent } from "vue";
import { IonPage, IonHeader  } from "@ionic/vue";
import axios from 'axios';
import { ref, onMounted } from "vue";

export default defineComponent({
  
  name: "Tab3Page",
  components: { IonHeader, IonPage },
 setup() {
    const posts = ref([]);
    onMounted(async () => {
      const res = await axios.post('/api', {
      query: `{
          allPosts{
                  id
                  title
                  image
                  content
                  date
                  }
              }`,
}, {
    headers: {
      'Content-Type': 'application/json'
    }
  })
  
      posts.value = res.data.data.allPosts;
      console.log(res);
    });

    return {
      posts,
    };
  },
  
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
.center {
    display: flex;
    justify-content: center;
    align-content: center;
    align-items: center;
    width: 50%;
  }
</style>