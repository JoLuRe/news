
var jsonfiles = ["data/news1.json", "data/news2.json"];
var contador = 0;

$(document).ready(function(){
    $("#loadmore").on("click", loadNews);
    $(window).scrollTop(0);
});

$(window).scroll(function(){
    if($(window).scrollTop() + $(window).height() == $(document).height())
    {
        loadNews();
    }
});

function loadNews()
{
    if(contador >= jsonfiles.length)
    {
          alert("Nada más por hoy");
    }
    if(contador < jsonfiles.length)
    {
        $.getJSON(jsonfiles[contador], function(jsonObject){
            var items = [];
            var str;
            $.each(jsonObject, function(i, gossip){
                str = "";
                str += "<div class='col-sm-10 col-md-7'><br>";
                str += "<kbd class='fecha'>" + gossip.datetime + "</kbd>";
                str += "<mark class='titulo'><span class='glyphicon glyphicon-circle-arrow-right'></span>" + gossip.title + "</mark>";
                str += "<p class='descripcion1'>" + gossip.description1 + "</p>";
                str += "<p class='descripcion2'>" + gossip.description2 + "</p>";
                str += "</div>";
                str += "<div class='col-sm-2 col-md-2'><br>";
                str += "<img class='img-rounded img-responsive' src='img/" + gossip.imgmid + "' />";
                str += "</div>";
                items.push(str);
            });

//            more_news="#more_news" + (contador+1);

            
            $("<div/>", {
//                  "class": "row",
                    html: items.join("")
            }).appendTo("#more_news");
//            }).appendTo(more_news);
        });
        contador++;
        
//        $(more_news).show();
    }
    
}