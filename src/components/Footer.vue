<template>
        <div class="footer">
            <div class="container">
            <span id="footer-logo" ></span>
                <div class="row">
                <ul id="footer-links" class="col-md-9 col-sm-12">
                    <li>
                        <a :href="privacy_link">Datenschutzhinweis</a>
                    </li>
                    <li>
                        <a :href="imprint_link">Impressum</a>
                        </li>
                </ul>
                <div id="copyright" class="col-md-3 col-sm-12">&copy;{{copyright}}</div>
            </div>
        </div>
        </div>
</template>

<script>

export default {
    name: "Footer",
    data () {
        return {
            copyright: '2020, Viva con Agua',
            about_text: 'Viva con Agua setzt sich weltweit für einen menschenwürdigen Zugang zu sauberem Trinkwasser und sanitärer Basisversorgung ein. Mach mit!',
            privacy_link: 'https://www.vivaconagua.org/datenschutzerklaerung',
            imprint_link: 'https://www.vivaconagua.org/impressum',
        }
    },
}
</script>

<style scoped lang="scss">


$blue: #008FC3;
$light_blue: #66D4FC;
$grey: #363636;
@mixin cover {
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;
}
@mixin contain {
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center center;
}

.footer {
	background-color: $grey;
	color: #ffffff;
    bottom: 0;
	position: fixed;
    width: 100%;
	text-align: center;
	h3 {
		font-size: 24px;
		font-family: "johntape",  sans-serif;
		letter-spacing: .29px;
		font-weight: 100;
	}
	p, a, div {
		font-size: 12px;
		font-family: 'roboto', sans-serif;
	}
	#footer-logo {
		position: absolute;
		width: 87px;
		height: 87px;
		left: 50%;
		transform: translateX(-50%);
		top: -50px;
        background-image: url('~@/assets/img/footer_logo.svg');
		@include cover();

       
		@media screen and (min-width: 1200px){
			transform: translateX(-50%) scale(1.5);
		}
	}
	.row {
		@media screen and (min-width: 1200px){
			text-align: left;
		}
		.col-xl-9 {
			@media screen and (min-width: 1200px){
				padding-right: 300px;
				padding-left: 0;
			}
		}
		.col-xl-3 {
			padding-right: 0;
		}

		&:nth-of-type(2)::before {
			content: '';
			display: inline-block;
			background-color: #ffffff;
			height: 1px;
			width: 80vw;
			margin-left: 10vw;
			@media screen and (min-width: 1200px){
				width: 100%;
				margin-left: 0;
			}
		}
	} 
	#footer-links {
		list-style: none;
		padding-left: 0;
		display: flex;
		flex-direction: row;
		padding: 1rem 0 2rem;
		li {
			line-height: 2;
			&:first-of-type::after {
				content: "|";
				display: inline-block;
				width: 15px;
				text-align: center;
			}
			a  {
				text-transform: uppercase;
				color: #ffffff;
			}
		}
		@media screen and (max-width: 767px){
			display: inline-block;
			li:first-of-type::after {
				content: none;
			}
		}
	}
	#contact {
		display: flex;
		justify-content: center;
		height: 70px;
		position: relative;
		@media screen and (min-width: 1200px){
			justify-content: start;
		}
		& > div {
			padding: 0 10px;
			width: 60px;
			position: relative;
		}
		.icons {
			width: 100%;
			position: absolute;
			top: 60px;
			left: 50%;
			transform: translateX(calc(-50%));
			display: none;
			@media screen and (min-width: 1200px){
				padding: 0;
			}
			&.show {
				display: block;       
			}
			a {
				width: 42px;
				height: 42px;
				margin-right: 16px;
				display: inline-block;
			}
		}
		.flag {
			display: none;
			width: 41px;
			height: 41px;
			position: absolute;
			top: 0;
			left: 0;
			@include contain();
			&.show {
				display: inline-block;
			}
		}
	}
	#copyright {
		font-weight: bold;
		@media screen and (min-width: 1200px){
			padding-top: 28px;
		}
	}
}

/* Bugfix for crappy Safari */
@media not all and (min-resolution:.001dpcm) { 
	@supports (-webkit-appearance:none) {
		#first_img  { 
			height: 66.666666667vw;
		}
		#second_img  { 
			height: 66.666666667vw;
		}
		#third_img  { 
			height: 66.666666667vw;
		}
		#fourth_img  { 
			height: 66.666666667vw;
		}
	}
}
</style>
