function bug(msg){
    //Criei essa função só para debugar o codigo mais facil
	!msg ? alert("here") : alert(msg);
}
var xml;
var Element={
    //Classe mãe
    //Abaixo alguns atribudos da aplicação que serão uteis em outros objetos
    elPageMenu:$(".pagemenu"),
    elContent:$(".content"),
    elContainer:$("#container"),
    elMenu:$("nav"),
    loading:!1,
    modalPage:$("#cart"),
    mask:$(".mask"),
    change:function(hash,json){
    //Metodo executado a cada mudança de hash
        $("#search :text").bind({
            click:function(){
                $("label.pre").fadeOut();
            },
            mouseout:function(){
                $("label.pre").fadeIn();
            }
        });
        menu=new Menu();
        cart=new Cart();
        cart.load();
        $(".bcart").removeClass("sel"); //Ao trocar de tela o botão do carrinho precisa voltar ao normal
        this.json=json;
        Element.close();
        if(!hash || hash==="games"){
            this.breadBox("Games");
            games=new Games();
            games.load();
        }
        else{
            switch(hash){
                case "sobre":
                    sobre=new Sobre();
                    this.breadBox(hash.replace("#","").initialCaps());
                    sobre.load();
                    break;
                case "contato":
                    contato=new Contato();
                    this.breadBox(hash.replace("#","").initialCaps()); //InitialCaps para primeira letra maiuscula (method.js)
                    contato.load();
                    break;
                case "minhaconta":                  
                    minhaConta=new MinhaConta();
                    this.breadBox("Minha Conta");
                    minhaConta.load();
                    break;
                case "meuspedidos":
                    meusPedidos=new MeusPedidos();
                    this.breadBox("Meus Pedidos");
                    meusPedidos.load();
                    break;
                case "televendas":
                    teleVendas=new TeleVendas();
                    this.breadBox("Televendas");
                    teleVendas.load();
                    break;
                default:
                    notFound=new NotFound();
                    this.breadBox("Página não Encontrada");
                    notFound.load();
            }
        }
    },
    open:function(){
        //Abre janela modal
        this.modalPage.height(this.elContainer.height()-160); //tamanho do container do modal sera de acordo com o container abaixo dele
        this.modalPage.fadeIn();
        
    },
    close:function(){
            //Pega o modal aberto e fecha. Caso a janela abaixo seja
           //cart.verify(this.json.length);
           this.modalPage.fadeOut();
    },
    breadBox:function(atual){
        //Atualiza BreadCrumb
        this.el=$(".bread-search");
        this.el.find("span").not(".inicial").not(".separador").text(atual);
    },
    maskOpen:function(loader){
        this.loading=!0;
        $("body").addClass("noscroll");
        this.mask.fadeIn();
        if(loader){
            this.mask.find(".loader").fadeIn();
        }
    },
    maskClose:function(loader){
        if(loader){
            setTimeout(function(){
                $(".mask").fadeOut().find(".loader").fadeOut();
                $("body").removeClass("noscroll");
            },1500);
        }
        else{
            $(".mask").fadeOut();
            $("body").removeClass("noscroll");
        }
        this.loading=!1;
    }
    
};

var Menu=function(){
    //Classe Menu
    this.change=function(atual){
        Element.elPageMenu.find("a").removeClass("sel");
        //Ao mudar a opção do menu selecionado
    	$(this.elMenu).find("a").bind("click",function(){
            //Caso o menu clicado for igual ao hash, forçamos o carrinho a fechar, já que o hash não foi mudado
                if($(this).attr("href").replace("#","")===atual){
                    $(".bcart").removeClass("sel");
                    $(this).hasClass("sel") || Element.elMenu.find("a").removeClass("sel"),$(this).addClass("sel");
                    $("#cart").fadeOut();
                }
    	});
        if(atual===""){
            //Caso não tenha hash, a tela sera games então o menu será games. Então a tela atual é games
            atual="games";
        }
        $(this.elMenu).find("a").each(function(){
            //Muda o menu de acordo com o hash
            if($(this).attr("href").replace("#","")===atual){
                $(this).hasClass("sel") || Element.elMenu.find("a").removeClass("sel"),$(this).addClass("sel");
            }
        });
    };
    this.disable=function(){
        //desabilita o menu ao abrir o carrinho
        Element.elMenu.find("a").removeClass("sel");
    };
};


var Cart=function(){
   this.el=$("#cart");
   this.input=$(".itens");
   this.bcart=$("a.bcart");
   this.load=function(){
       //Da inicio ao load do cart
        $("a.bcart").click(function(a){
            if($(this).hasClass("sel")){
                return false;
            }
            else{
                $(this).addClass("sel");
                a.preventDefault();
                menu.disable();
                Element.close(); //Fecha o modal que estiver aberto, caso esteja
                Element.modalPage=cart.el; //Indica a classe mãe que o carrinho esta aberto
                Element.maskOpen(true);
                cart.render();
                Element.maskClose(true);
                return true;
            }
        });
   };
    this.el.find(".title a").bind({
        //Ao clicar no botão fechar
        click:function(a){
            a.preventDefault();
            $(".bcart").removeClass("sel");
            Element.close();
            menu.change(window.location.hash.replace("#",""));
        }
    });
    this.el.find(".cont").bind("click",function(){
        //Ao clicar no botão continuar busca
        cart.bcart.removeClass("sel");
        Element.close();
    });
   this.add=function(id){
       //Ao adicionar itens ao carrinho
        var car,i,length,temp=0;
        this.input.val(this.input.val()+id); //Pega o valor do hidden e adiciona o id do item clicado
        //Daqui pra baixo são procedimento para atualizar o contador do carrinho
        car=this.input.val().replace(" ","");
        length=car.length;
        for(i=0;i<length;i++){
            //Passa por cada posição da string car
            if(car[i]!==" "){
                //Os valores que não forem nulos atribuimos mais um a variavel tempo que esta contando quantos temos no carrinho
                temp++;
            }
        }
        $(this.bcart).find("span").text(temp); //Coloca o valor no span do contador
   };
    this.render=function(){
        //Abre o carrinho
        Element.open();
    };
    this.verify=function(length){
        //metodo que verifica a quantidade de itens no carrinho para atribuir classe ao botão dos games
        var temp,car,i;
        car=this.input.val().replace(" ","");
        for(i=0;i<=length;i++){
            if(car.indexOf(String(i))!==-1){
                temp = parseInt(car.charAt(car.indexOf(String(i))));  
                $(".box#"+temp).find("a").addClass("remove-cart");             
            }
        }
    };
    this.remove=function(id){
        //Remove itens do carrinho
        var car,id,temp=0;
        car=this.input.val().replace(" ","");
        var id=parseInt(id);
        this.input.val(car.replace(id," ")); //Pega o id clicado e transforma ele em espaço dentro do input
        //Daqui para baixo é um metodo para atualizar o contador
        car=this.input.val().replace(" ","");
        length=car.length;
        for(i=0;i<length;i++){
            if(car[i]!==" "){
                temp++;
            }
        }
        $(this.bcart).find("span").text(temp);
    };
};

var Games=function(){
    //Classe dos games
    var json=Element.json;
    this.load=function(){
        //Carrega xml dentro do content
       xml.each(function(){
            if($(this).attr("name")==="games"){
               Element.elContent.html($(this).find("code").text());
            }
        });
        this.render();
    };
    this.render=function(){
        //renderiza o accordion
        this.result=$(".result");
        this.accordion=$(".result .accordion");
        this.sidebar=$(".result .sidebar");
        //this.box;
        if(!this.loading){
            menu.change("games");
            Element.maskOpen(true);
            this.accordion.find(".count").find("span").html(Element.json.length);
            Element.maskClose(true);
            this.creatBox();
            this.elContainer.fadeIn(); //Exibe o conteudo inserido
        }
        else{
            return false;
        }
        return true;
    };
    this.creatBox=function(){
        //Metodo que cria os games na tela
        var i,length=json.length,html="";
        for(i=0;i<length;i++){
            //Para cada linha do json cria um box com as propriedades
            html+="<div class='box' id='"+json[i].cod+"'>";
            html+="<img src='./images/games/large/"+json[i].cod+".jpg'/>";
            html+="<div class='box-info'><h1>"+json[i].name+"</h1><h4>"+json[i].category+"</h4><h2><span>R$</span>"+String(json[i].preco).replace(".",",")+"</h2><div class='button-cart'><a href='#"+json[i].cod+"' class='button add-cart'></a></div></div>";
            html+="</div>";
        };
        this.result.append(html); //Joga o html dentro da div result
        cart.verify(length);
        this.result.find(".box").bind("click",function(){
            //Ao clicar em algum dos games
            detail=new Detail();
            detail.creat($(this).attr("id"),$(this).find("a").hasClass("remove-cart"));
        });
        this.result.find(".button-cart a").bind("click",function(a){
            //Ao clicar no botão carrinho
            a.preventDefault();
            if($(this).hasClass("remove-cart")){
                cart.remove($(this).attr("href").replace("#"," "));
                $(this).removeClass("remove-cart");
            }
            else{
                $(this).addClass("remove-cart");
                cart.add($(this).attr("href").replace("#"," "));
            }            
            return false;
        });
    };
    
    var Detail=function(){
        //Sub Classe Detail de Games
        this.el=$("#detail");
       this.creat=function(id,status_cart){
           //Cria modal de detalhes de acordo com o game clicado
           this.desc=$(".desc-side");
           this.info=$(".info-side");
           this.require=$(".require-side");
            var i=0,id=parseInt(id),img;
            for(i=0;i<json.length;i++){
                //Passa em cada linha do json
                if(json[i].cod===id){
                    //Caso o codigo da linha seja igual ao game clicado
                    this.el.find(".title p").text(json[i].name);
                    this.desc.find("img").attr("src","./images/games/thumb/"+id+".jpg");
                    this.desc.find(".desc").find(".category").text(json[i].category);
                    this.desc.find(".desc").find(".desenvolvedora").text(json[i].desenvolvedor);
                    this.desc.find(".desc").find(".d_lanc").text(json[i].date);
                    this.info.find(".info").text(json[i].descricao);
                    this.info.find(".price").find(".valor").text(json[i].preco.replace(".",","));
                    this.info.find(".price").find("a").attr("href","#"+id);
                    this.require.find(".proc").text(json[i].processador);
                    this.require.find(".v_proc").text(json[i].velocidade_proc);
                    this.require.find(".ram").text(json[i].ram);
                    this.require.find(".ram").text(json[i].ram);
                    this.require.find(".hd").text(json[i].hd);
                    this.require.find(".video").text(json[i].video);
                    this.require.find(".m_video").text(json[i].mem_video);
                    this.require.find(".so").text(json[i].so);
                    //Status do botão carrinho
                    if(status_cart){
                        this.info.find(".price").find("a").addClass("remove-cart");
                    }
                    else{
                        this.info.find(".price").find("a").removeClass("remove-cart");
                    }
                }
            }

            Element.modalPage=this.el; //Indica a classe mae que o detail está aberto
            Element.open();
            this.el.find(".title a").bind({
                click:function(a){
                    //Ao clicar no fechar
                    a.preventDefault();
                    Element.close();
                }
            });
            $(".price").find("a").unbind("click").bind("click",function(a){
                /*Ao clicar no botão carrinhho (Unbind utilizado, pois quando o botão é pressionado a função era executada duas vezes*/
                a.preventDefault();
                if($(this).hasClass("remove-cart")){
                    $("a[href='#"+id+"']").removeClass("remove-cart");
                    cart.remove($(this).attr("href").replace("#"," "));
                }
                else{
                    $("a[href='#"+id+"']").addClass("remove-cart");
                    cart.add($(this).attr("href").replace("#"," "));
                }  
            });
       };
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
            Element.elPageMenu.find("a").removeClass("sel"),$("a[href='#televendas']").addClass("sel");
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

var MinhaConta=function(){
    //Classe minha conta
    this.load=function(){
        menu.disable();
        Element.elPageMenu.find("a").removeClass("sel"),$("a[href='#minhaconta']").addClass("sel");
        xml.each(function(){
             if($(this).attr("name")==="minhaconta"){
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

var MeusPedidos=function(){
    //Classe meus pedidos
    this.load=function(){
        menu.disable();
        Element.elPageMenu.find("a").removeClass("sel"),$("a[href='#meuspedidos']").addClass("sel");
        xml.each(function(){
             if($(this).attr("name")==="meuspedidos"){
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
            menu.disable();
            Element.elPageMenu.find("a").removeClass("sel");
            this.elContainer.fadeIn();
        }
    };
};

//Fazendo a herança entre as classes
Menu.prototype=Element;
Cart.prototype=Element;
Games.prototype=Element;
TeleVendas.prototype=Element;
MinhaConta.prototype=Element;
NotFound.prototype=Element;
MeusPedidos.prototype=Element;

$.getJSON( "js/ajax/games.js", function(json) {
    //Tudo começa por aqui
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
                $(".bcart").find("span").text($(".itens").val().replace(" ","").length); /*Verifica a quantidade de itens no carrinho e atualiza o botao*/
             }
    });
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