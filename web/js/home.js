function bug(msg){
    //Criei essa função só para debugar o codigo mais facil
	!msg ? alert("here") : alert(msg);
}

var Element={
    loading:!1,
    change:function(hash,json){
        this.json=json;
        console.log("Init do componente");
        slide=new Slides();
        newsflash=new News();
        topSelles=new TopSelles();
        sobre=new Sobre();
        teleVendas=new TeleVendas();
        slide.render("#slider");
        //newsflash.render(".news");
        //topSelles.render(".top_selles");
    }
};

var Slides=function(){
    this.render=function(el){
        this.el=el;
        //bug("render slides");
        $("#slider").slides({
                preload: true,
                preloadImage: 'images/loader2.gif',
                play: 4000,
                pause: 2500,
                slideSpeed:700,
                animationStart: function(current){
                        $('.caption').animate({
                                bottom:-35
                        },100);
                        if (window.console && console.log) {
                                //retorna o numero do slide atual
                                console.log('animationStart on slide: ', current);
                        };
                },
                animationComplete: function(current){
                        $('.caption').animate({
                                bottom:0
                        },200);
                        if (window.console && console.log) {
                                //retorna o numero do slide atual
                                console.log('animationComplete on slide: ', current);
                        };
                },
                slidesLoaded: function() {
                        $('.caption').animate({
                                bottom:0
                        },200);
                }
        });
    };
};

var News=function(){
	this.render=function(el){
		var i,length,html="";
		length=Element.json.length;
		this.el=$(el);
		for(i=0;i<length;i++){
			html+="<a href='"+Element.json[i].link+"' target='_blank'><img src='images/news/"+Element.json[i].url+"'/>"+"<p>"+Element.json[i].title+"</p></a>";
		}
		this.el.html(html);
		/*this.news=xml.find("news");
		this.news.each(function(){
			newsflash.el.append(
				"<a href='"+$(this).attr("link")+"' target='_blank'><img src='images/news/"+$(this).attr("url")+"'/>"+
				"<p>"+$(this).attr("title")+"</p></a>"
			);
		});*/
	};
	
	/*Usar para carregar p codigo do produto e exibir detalhes
	this.el.find("div").bind({
			click:function(){
				var cod=parseInt($(this).find("img").attr("id"));
				newsflash.click(cod);
			}
		});
	
	this.click=function(id){
		newsflash.news.each(function(){
			if(parseInt($(this).attr("cod"))===id){
				window.open($(this).attr("link"));
			}
		});
	};*/
};

var TopSelles=function(){
	this.render=function(el){
		bug("render TopSelles");
		this.el=el;
	};
};

var TeleVendas=function(){
    //Classe televendas
    this.load=function(){
       xml.each(function(){
            if($(this).attr("name")==="televendas"){
               Element.elContent.html($(this).find("code").text());
            }
        });
        this.render();
    };
    this.render=function(){
        if(!this.loading){
            menu.disable();
            this.elContainer.fadeIn();
        }
    };
};

var Sobre=function(){
    //Classe sobre
    this.load=function(){
       xml.each(function(){
            if($(this).attr("name")==="sobre"){
               Element.elContent.html($(this).find("code").text());
            }
        });
        this.render();
    };
    this.render=function(){
        if(!this.loading){
            menu.change("sobre");
            this.elContainer.fadeIn();
        }
    };
};

Slides.prototype=Element;
News.prototype=Element;
TopSelles.prototype=Element;
TeleVendas.prototype=Element;
Sobre.prototype=Element;

$.getJSON( "js/ajax/news.js", function(json) {
	$(window).bind("hashchange", function(){
         //Caso o xml exista e o hash seja alterado chama o metodo do classe mãe abaixo
        Element.change(window.location.hash.replace("#",""),json);
        //Depois de tudo exibe a pagina que por enquanto esta oculta
        $("#wrap").fadeIn();
    }).trigger("hashchange"); //trigger para assim que entrar no sistema já chamar o metodo acima
	console.log( "success" );
})
.fail(function() {
    ///Em caso de falha
  console.log( "error" );
})
.always(function() {
    //Sempre
  console.log( "complete" );
});


/*newsflash=new news();
newsflash.render("body");*/