<template>
    <div class="404">
        <div class="row">
            <div class="column">
            <p class="big">Hoppla!</p>
                <div class="subline">
                    Da haben wir uns vertüddelt, wir konnten die Seite nicht finden...
                    <br>
                </div>
                <p class="fehlercode">Fehlercode: 404</p>
                <div class="links">
                    Hier sind stattdessen andere Hilfreiche Links:
                    <ul>
                        <li><a href="https://becherspende.org">Startseite</a></li>
                        <li><a href="https://becherspende.org/app/#/createyourevent">Dein Event anlegen</a></li>
                        <li><a href="https://becherspende.org/app/#/projects">Unsere Becherspende Projektgebiete</a></li>
                        <li><a href="https://becherspende.org/app/#/about">Über uns</a></li>
                    </ul>
                </div>
            </div>
            <img class="freak" src="~@/assets/img/404freak.svg"/>
        </div>
    </div>
</template>

<script>
export default {
    name: "404"
}
</script>

<style scoped>* {
box-sizing: border-box;
text-align: left;
}
    .big {
        font-size: 10em;
        font-weight: bold;
    }
    .subline {
        font-size: 2em;
    }

    .fehlercode {
        font-weight: bold;
        padding: 2%;
    }

    a {
        color: #363636;
    }
    a:link {
        text-decoration: none;
    }

    a:visited {
        text-decoration: none;
    }
    ul {
        list-style-type:none;
    }

    .freak {
        width: 40em;
        height: auto;
        margin: 0;
        background-repeat: no-repeat;
        bottom: 0;
    }
@media (max-width: 600px) {
    .big {
        display: none;
    }
    .subline {
        font-size: x-large;
    }
    .freak {
        width: 20em;
    }

}
</style>
