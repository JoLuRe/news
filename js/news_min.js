function loadNews(){contador>=jsonfiles.length&&(alert("Nada más por hoy"),$("#loadmore").prop("disabled",!0)),contador<jsonfiles.length&&($.getJSON(jsonfiles[contador],function(a){var c,b=[];$.each(a,function(a,d){c="",c+="<div class='col-sm-10 col-md-7'><br>",c+="<kbd class='fecha'>"+d.datetime+"</kbd>",c+="<mark class='titulo'><span class='glyphicon glyphicon-circle-arrow-right'></span>"+d.title+"</mark>",c+="<p class='descripcion1'>"+d.description1+"</p>",c+="<p class='descripcion2'>"+d.description2+"</p>",c+="</div>",c+="<div class='col-sm-2 col-md-2'><br>",c+="<img class='img-rounded img-responsive' src='img/"+d.imgmid+"' />",c+="</div>",b.push(c)}),$("<div/>",{html:b.join("")}).appendTo("#more_news")}),contador++)}var jsonfiles=["data/news1.json","data/news2.json"],contador=0;$(document).ready(function(){$("#loadmore").on("click",loadNews),$(window).scrollTop(0)}),$(window).scroll(function(){$(window).scrollTop()+$(window).height()==$(document).height()&&loadNews()});