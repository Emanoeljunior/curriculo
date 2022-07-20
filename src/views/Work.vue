<template>
  <ion-page>
    <ion-header> </ion-header>
    <ion-content scroll-y="true">
      <div class="container">
            <blog-post
            v-for="post in posts"
            v-bind:key="post.id"
            v-bind:title="post.title"
          >
        <ion-card>
          <ion-card-header>
            <ion-card-subtitle>{{ post.date }}</ion-card-subtitle>
            <ion-card-title> {{ post.title }}</ion-card-title>
          </ion-card-header>
          <ion-card-content>
            <div class="ion-text-justify">
              {{ post.content }}
            </div>
            <div class="container-img">
               <span v-html="post.image"></span> 
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
  name: "Tab3Page",
  components: { IonHeader, IonContent, IonPage },
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
</style>