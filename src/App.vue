<template>
    <div id="app" >
            <router-view/>
                <Footer class="bottom"/>
    </div>
</template>
<script>
import Footer from "./components/Footer";
export default {
    components: { Footer },
    data () {
    }
}

</script>
<style>
* {
  box-sizing: border-box;
}
#app {
    font-family: museo,  sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: left;
    font-weight: normal;
    height: 100%;
    color: #363636;
    background-size: cover;
  /* Add the blur effect */
}


/* Create three equal columns that sits next to each other */
.column {
    -webkit-flex: 1;
    -ms-flex: 1;
    flex: 1;
    margin: 5%;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
    .row {
        -webkit-flex-direction: column;
        flex-direction: column;

    }

}




</style>
