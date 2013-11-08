function bug(msg){
    //Criei essa função só para debugar o codigo mais facil
	!msg ? alert("here") : alert(msg);
}

var xml;
var Element={
	elPageMenu:$(".pagemenu"),
        loading:!1,
        elContent:$(".content"),
        elContainer:$("#container"),
        change:function(hash,json){
	Element.elPageMenu.find("a").removeClass("sel");
        this.json=json;
        console.log("Init do componente");

        if(!hash || hash==="home"){
            home=new Home();
            home.load();
	        //topSelles.render(".top_selles");
        }
        else{
            switch(hash){
            	case "sobre":
                    sobre=new Sobre();
                    sobre.load();
                    break;
                case "televendas":
                    teleVendas=new TeleVendas();
                    teleVendas.load();
                    break;
                default:
                    notFound=new NotFound();
                    notFound.load();
            }
       	}
    }
};

var Home=function(){
	this.load=function(){
       xml.each(function(){
            if($(this).attr("name")==="home"){
               Element.elContent.html($(this).find("code").text());
            }
        });
        this.render();
    };
    this.render=function(){
        if(!this.loading){
            //menu.change("sobre");
            this.elContainer.fadeIn();
            slide=new Slides();
            newsflash=new News();
            slide.render("#slider");
        }
        /*$(".user-box a").bind("click",function(a){
                a.preventDefault();
        	modal=new Modal();
        	modal.load();
        });*/
    };
    
    var Slides=function(){
            this.render=function(el){
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
                newsflash.render(".news");
                /*topSelles=new TopSelles();
                topSelles.load();*/
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
            };
	};
	
	var Modal=function(){
	    //Classe modal
	    this.load=function(){
	       console.log("Modal carrega");
	        this.render();
	    };
	    this.render=function(){
	        if(!this.loading){
	        	console.log("Modal abre");
	            //this.elContainer.fadeIn();
	        }
	    };
	};
};


/*var TopSelles=function(){
	this.render=function(el){
		bug("render TopSelles");
		this.el=el;
	};
};*/

var TeleVendas=function(){
    //Classe televendas
    this.load=function(){
		Element.elPageMenu.find("a").removeClass("sel"),$("a[href='#televendas']").addClass("sel");
       xml.each(function(){
            if($(this).attr("name")==="televendas"){
               Element.elContent.html($(this).find("code").text());
            }
        });
        this.render();
    };
    this.render=function(){
        if(!this.loading){
            //menu.disable();
            this.elContainer.fadeIn();
        }
    };
};

var Sobre=function(){
    //Classe sobre
    this.load=function(){
        Element.elPageMenu.find("a").removeClass("sel"),$("a[href='#sobre']").addClass("sel");
       xml.each(function(){
            if($(this).attr("name")==="sobre"){
               Element.elContent.html($(this).find("code").text());
            }
        });
        this.render();
    };
    this.render=function(){
        if(!this.loading){
            this.elContainer.fadeIn();
        }
    };
};

var NotFound=function(){
        //Classe para tela não encontrada
	this.load=function(){
       xml.each(function(){
            if($(this).attr("name")==="notfound"){
               Element.elContent.html($(this).find("code").text());
            }
        });
        this.render();
    };
    this.render=function(){
        if(!this.loading){
            this.elContainer.fadeIn();
        }
    };
};

Home.prototype=Element;
NotFound.prototype=Element;
//TopSelles.prototype=Element;
TeleVendas.prototype=Element;
Sobre.prototype=Element;

$.getJSON( "js/ajax/news.js", function(json) {
	$.ajax({
            //verifica se existe o xml para load das paginas
             type:"GET",
             url:"load.xml",
             dataType:"xml",
             success:function(e){
                 xml=$(e).find("entry");
                 $(window).bind("hashchange", function(){
                     //Caso o xml exista e o hash seja alterado chama o metodo do classe mãe abaixo
                    Element.change(window.location.hash.replace("#",""),json);
                    //Depois de tudo exibe a pagina que por enquanto esta oculta
                    $("#wrap").fadeIn();
                }).trigger("hashchange"); //trigger para assim que entrar no sistema já chamar o metodo acima
             }
    });
	console.log("success");
})
.fail(function() {
    ///Em caso de falha
  console.log("error");
})
.always(function() {
    //Sempre
  console.log("complete");
});