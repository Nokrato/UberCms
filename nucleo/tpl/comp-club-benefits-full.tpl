<style>

#column1 {
    width: 770px !important;

}
</style>





<div id="column1" class="column">

				<div class="habblet-container ">		
						<div class="cbb clearfix hcred ">

                                                           <h2 class="title">Fa�a parte do <?php include ("nombre.php"); ?> Club
							</h2>
						<script src="%www%/web-gallery/static/js/habboclub.js" type="text/javascript"></script>
<div id="hc-habblet box-content">
    <div id="hc-buy-container">
<div id="hc-buy-buttons" class="hc-buy-buttons">

<?php if(LOGGED_IN == TRUE){ ?>

<form class="subscribe-form" method="post">

   <div style="float: left; margin: 0px;">

    <div class="cbb habboclub-buyentry">
     <h2 class="title" style="background-color: #90a7b7;">
	  <?php if(!$users->hasHC(USER_ID) && !$users->hasVIP(USER_ID)){ ?>
     HC ou VIP?
	  <?php } else if($users->hasVIP(USER_ID)){ ?>
	  Club VIP
	  <?php } else { ?>
	   CLUB VIP
	  <?php } ?>
     </h2>
     <div style="padding: 10px 0px 0px 10px;">
       <p><?php if(!$users->hasHC(USER_ID) && !$users->hasVIP(USER_ID)){ ?>Voc� ainda n�o � um membro.<?php } else { ?>
	   <?php if($users->hasVIP(USER_ID)){ ?>VIP<?php } else { ?>HC<?php } ?> restante: <?php echo $users->GetClubDays(USER_ID); ?> dias<?php } ?></p>
     </div>
     <div style="height: 113px; padding: 10px">
	 <?php if(!$users->hasHC(USER_ID) && !$users->hasVIP(USER_ID)){ ?>
      HC ou VIP? Ser HC lhe dar� mais roupas, cores e presentes mensais, fora outros beneficios. Mas ser um VIP da-lhe tudo que o HC e um pouco mais!
	  <?php } else if($users->hasVIP(USER_ID)){ ?>
	  Seja VIP e consiga mais!
	  <?php } else { ?>
      Voc� pode comprar mais dias como HC ou atualizar seu HC para VIP pelos pre�os apresentados. Voc� vai perder os dias restantes de HC, mas ganham dias livres como VIP em troca.
	  <?php } ?>
     </div>

    </div> 
   </div> 
   
  <div style="float: left;">
     <?php if($users->hasVIP(USER_ID)){ ?>
	 <div class="cbb habboclub-buyentry">
     
      <h2 class="title" style="background-color: #9b9448;"> 
        <?php include ("nombre.php"); ?> Club
      </h2>   
            
    <div style="padding: 10px 0px 0px 10px;">
     <p>Voc� n�o pode ser HC pois j� � VIP.</p>
    </div> 
	<div style="height: 100px; padding: 10px"></div>
   </div> 
	<?php } else { ?>
     <div class="cbb habboclub-buyentry hcbasic">
     
      <h2 class="title" style="background-color: #9b9448;"> 
        <img style="float: left;" alt="hc" src="%www%/web-gallery/v2/images/habboclub_basic_small.png" />
        1 mes
      </h2>   
	 
	     <div style="height: 55px;">
     <img style="position: relative; left: 10px; top: 10px;" alt="credits" src="%www%/web-gallery/v2/images/newcredits/credit_in_white_bg.png" />   
     <span style="position: relative; left: -32px; top: -3px; font-size:1.5em; font-weight:bold; color: #000000;" class="habboclub-offerprice">15</span>           
     <a class="new-button oversize" id="subscribe1" href="#" onclick='habboclub.buttonClick(1, "Confirmar inscri��o"); return false;'><b>Comprar</b><i></i></a>

     <div style="width: 10px;"></div>

    </div> 
   </div> 
  
        
     <div class="cbb habboclub-buyentry hcbasic">
     
      <h2 class="title" style="background-color: #9b9448;"> 
        <img style="float: left;" alt="hc" src="%www%/web-gallery/v2/images/habboclub_basic_small.png" />
        3 meses
      </h2>   
	  
	     <div style="height: 55px;">
     <img style="position: relative; left: 10px; top: 10px;" alt="credits" src="%www%/web-gallery/v2/images/newcredits/credit_in_white_bg.png" />   
     <span style="position: relative; left: -32px; top: -3px; font-size:1.5em; font-weight:bold; color: #000000;" class="habboclub-offerprice">45</span>           
     <a class="new-button oversize" id="subscribe2" href="#" onclick='habboclub.buttonClick(2, "Confirmar inscri��o"); return false;'><b>Comprar</b><i></i></a>

     <div style="width: 10px;"></div>

    </div> 
   </div> 
   <?php } ?>
  
  </div>   
  
   
  <div style="float: left;"> 
		<?php if(!$users->hasVIP(USER_ID) && $users->hasHC(USER_ID)){ ?>
	 <div class="cbb habboclub-buyentry hcvip">
     
      <h2 class="title" style="background-color: #969696;">      
        <img style="float: left;" alt="vip" src="%www%/web-gallery/v2/images/habboclub_vip_small.png" />
        Convertir HC en VIP
      </h2>
            
    <div style="padding: 10px;">

     <img style="float: left;" alt="credits" src="%www%/web-gallery/v2/images/newcredits/credit_in_white_bg.png" />   
     <span style="position: relative; left: -32px; top: 9px; font-size:1.5em; font-weight:bold; color: #000000;" class="habboclub-offerprice">10</span>       
     <a class="new-button oversize" id="subscribe3" href="#" onclick='habboclub.buttonClick(5, "Confirmar inscri��o"); return false;'><b>Comprar</b><i></i></a>

    </div> 
   </div>
	<?php } else { ?>
     <div class="cbb habboclub-buyentry hcvip">
     
      <h2 class="title" style="background-color: #969696;">      
        <img style="float: left;" alt="vip" src="%www%/web-gallery/v2/images/habboclub_vip_small.png" />
        1 mes
      </h2>
            
    <div style="height: 55px;">
     <img style="position: relative; left: 10px; top: 10px;" alt="credits" src="%www%/web-gallery/v2/images/newcredits/credit_in_white_bg.png" />   
     <span style="position: relative; left: -32px; top: -3px; font-size:1.5em; font-weight:bold; color: #000000;" class="habboclub-offerprice">25</span>           
     <a class="new-button oversize" id="subscribe3" href="#" onclick='habboclub.buttonClick(3, "Confirmar inscri��o"); return false;'><b>Comprar</b><i></i></a>

     <div style="width: 10px;"></div>

    </div> 
   </div> 
  
       
     <div class="cbb habboclub-buyentry hcvip">
     
      <h2 class="title" style="background-color: #969696;">      
        <img style="float: left;" alt="vip" src="%www%/web-gallery/v2/images/habboclub_vip_small.png" />
        3 meses 
      </h2>
            
    <div style="height: 55px;">
     <img style="position: relative; left: 10px; top: 10px;" alt="credits" src="%www%/web-gallery/v2/images/newcredits/credit_in_white_bg.png" />   
     <span style="position: relative; left: -32px; top: -3px; font-size:1.5em; font-weight:bold; color: #000000;" class="habboclub-offerprice">60</span>           
     <a class="new-button oversize" id="subscribe4" href="#" onclick='habboclub.buttonClick(4, "Confirmar inscri��o"); return false;'><b>Comprar</b><i></i></a>

     <div style="width: 10px;"></div>

    </div> 
   </div> 
  <?php } ?>
  </div> 
  
</form>
<?php } else { ?>
<div id="hc-habblet" class="box-content">
Entre em sua conta para ver sua situa��o do %shortname% Club
</div>
<?php } ?>
</div>    </div>
</div>

	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 

			     		
				<div class="habblet-container ">		
						<div class="cbb clearfix hcred ">

	
							<h2 class="title">Compare os beneficios
							</h2>
						<div id="habboclub-info" class="box-content" style="position: relative; top: 3px; left: -11px">
 <table cellspacing=0 cellpadding=0>
  <tr>
   <td valign=top>
  <div class="cbb hcnone habboclub-infoentry" style="height: 214px;">
   <h2 class="title" style="height: 53px; background-color: #90a7b7;">
    <span style="position: relative; top: 18px; font-weight: bold">Membro gr�tis</span>

   </h2> 
   <div style="height: 3px"></div>
   <div class="rounded" style="background-color: #ffffff;">
    Look B�sico 
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/clothes_b.png" />
  </div> 
  
  <div class="cbb hcnone habboclub-infoentry" style="height: 83px;">
   <div class="rounded" style="background-color: #ffffff;">
    Cores b�sicas
   </div>

   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/colors_b.png" />
  </div> 
  
  <div class="cbb hcnone habboclub-infoentry" style="height: 101px;">
   <div class="rounded" style="background-color: #ffffff;">
    Roupas e 2 cores de cabelo que voc� pode misturar
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/multicolor_b.png" />
  </div> 
  
  <div class="cbb hcnone habboclub-infoentry" style="height: 185px;">   
  </div> 
  
  <div class="cbb hcnone habboclub-infoentry">

   <div class="rounded" style="background-color: #ffffff;">
    Lista de Amigos com capacidade de 200 Amigos
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/friends_b.png" />
  </div>
  
  <div class="cbb hcnone habboclub-infoentry" style="height: 136px;">   
  </div>  
  
  <div class="cbb hcnone habboclub-infoentry" style="height: 75px;">   
   <div class="rounded" style="background-color: #ffffff;">
    12 Designs de Salas
   </div>

  </div> 
  
  <div class="cbb hcnone habboclub-infoentry" style="height: 65px;">   
  </div>  
  
  <div class="cbb hcnone habboclub-infoentry" >   
   <div class="rounded" style="background-color: #ffffff;">
    1 dan�a
   </div>
  </div>  
  
  <div class="cbb hcnone habboclub-infoentry" >   
   <div class="rounded" style="background-color: #ffffff;">
    Ofertas na feira livre
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/coin_offers.png" />

   <div style="position: relative; top: 13px; left: -2px">
    = 5 ofertas x 1 Moeda
   </div>
  </div>  
  
  </td><td valign=top>
  
  <div class="cbb hcbasic habboclub-infoentry">
   <h2 class="title" style="height: 53px; background-color: #9b9448;">
    <img style="position: relative; top: 5px" alt="xx" src="%www%/web-gallery/v2/images/habboclub_basic_big.png" />
   </h2> 
   <div style="height: 3px"></div>

   <div class="rounded" style="background-color: #ffffff;">
    Looks HC 
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/clothes_hc.png" />
  </div> 
  
  <div class="cbb hcbasic habboclub-infoentry" style="height: 83px;">
   <div class="rounded" style="background-color: #ffffff;">
    Cores HC
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/colors_hc.png" />

  </div> 
  
  <div class="cbb hcbasic habboclub-infoentry">
   <div class="rounded" style="background-color: #ffffff;">
     Roupas e 2 cores de cabelo que voc� pode misturar
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/multicolor_hc.png" />
  </div> 
  
  <div class="cbb hcbasic habboclub-infoentry">
   <div class="rounded" style="background-color: #ffffff;">
    Armario para guardar 5 visuais
   </div>

  </div> 
  
  <div class="cbb hcbasic habboclub-infoentry" style="height: 135px;">
   <div class="rounded" style="background-color: #ffffff;">
	1 Presente HC mensal
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/furni_hc.png" />
  </div> 
  
  <div class="cbb hcbasic habboclub-infoentry">
   <div class="rounded" style="background-color: #ffffff;">
Lista de amigos com capacidade de 600 amigos
   </div>

   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/friends_hc.png" />
  </div> 
  
  <div class="cbb hcbasic habboclub-infoentry">
   <div class="rounded" style="background-color: #ffffff;">
    Placa HC
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/badge_hc.png" />
  </div> 
  
  <div class="cbb hcbasic habboclub-infoentry" >
   <div class="rounded" style="background-color: #ffffff;">

Prioridade para entrar em salas   </div>
  </div> 
  
  <div class="cbb hcbasic habboclub-infoentry" style="height: 75px;">   
   <div class="rounded" style="background-color: #ffffff;">
    + 8 designs HC
   </div>
   <div style="padding: 10px">Salas con escadas</div>
  </div>  
  
  <div class="cbb hcbasic habboclub-infoentry">   
   <div class="rounded" style="background-color: #ffffff;">

    Comandos 
   </div>
   <div style="padding: 5px;">
    <b>:furni</b> - mostrar mobis<br/>
    <b>:chooser</b> - mostrar os usuarios
   </div>
  </div> 
  
  <div class="cbb hcbasic habboclub-infoentry" >   
   <div class="rounded" style="background-color: #ffffff;">

    4 Dan�as HC
   </div>
  </div>   
  
  <div class="cbb hcbasic habboclub-infoentry" >   
   <div class="rounded" style="background-color: #ffffff;">
    Ofertas na feira lvire
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/coin_offers.png" />
   <div style="position: relative; top: 13px; left: -2px">
    = 5 ofertas gratis
   </div>

  </div>   
  
  </td><td valign=top>
 
  <div class="cbb hcvip habboclub-infoentry">
   <h2 class="title" style="height: 53px; background-color: #969696;">
    <img style="position: relative; top: 5px" alt="xx" src="%www%/web-gallery/v2/images/habboclub_vip_big.png" />
   </h2> 
   <div style="height: 3px"></div>
   <div class="rounded" style="background-color: #ffffff;">
    Looks HC + VIP 
   </div>

   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/clothes_vip.png" />
  </div> 
  
  <div class="cbb hcvip habboclub-infoentry">
   <div class="rounded" style="background-color: #ffffff;">
    Cores HC + VIP
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/colors_vip.png" />
  </div> 
  
  <div class="cbb hcvip habboclub-infoentry" style="height: 101px;">
   <div class="rounded" style="background-color: #ffffff;">

    Roupas e 2 cores de cabelo que voc� pode misturar
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/multicolor.png" />
  </div> 
  
  <div class="cbb hcvip habboclub-infoentry" >
   <div class="rounded" style="background-color: #ffffff;">
    Armario para guardar 10 visuais
   </div>
  </div> 
  
  <div class="cbb hcvip habboclub-infoentry">
   <div class="rounded" style="background-color: #ffffff;">

2 Presentes VIP por m�s (Um HC outro VIP)  </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/furni_vip.png" />
  </div> 
  
   <div class="cbb hcvip habboclub-infoentry">
   <div class="rounded" style="background-color: #ffffff;">
Lista de amigos com capacidade de 900 amigos   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/friends_vip.png" />
  </div> 
  
  <div class="cbb hcvip habboclub-infoentry">

   <div class="rounded" style="background-color: #ffffff;">
    Emblemas HC + VIP
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/badge_vip.png" />
  </div>
  
  <div class="cbb hcvip habboclub-infoentry" >
   <div class="rounded" style="background-color: #ffffff;">
    Prioridade para entrar en Salas
   </div>
  </div> 
  
  <div class="cbb hcvip habboclub-infoentry">   
   <div class="rounded" style="background-color: #ffffff;">

    + 8 Designs HC + 6 Desings VIP
   </div>
   <div style="padding: 10px">
     Salas com escadas<br/>
     Salas sem paredes
   </div>
  </div>   
  
  <div class="cbb hcvip habboclub-infoentry">   
   <div class="rounded" style="background-color: #ffffff;">
    Comandos
   </div>

   <div style="padding: 5px;">
    <b>:furni</b> - mostra os mobis<br/>
    <b>:chooser</b> - mostra os usuarios<br>
   </div>
  </div>   
  
  <div class="cbb hcvip habboclub-infoentry" >   
   <div class="rounded" style="background-color: #ffffff;">
   4 Dan�as HC
   </div>

  </div>  
  
  <div class="cbb hcvip habboclub-infoentry" >   
   <div class="rounded" style="background-color: #ffffff;">
    Ofertas na feira livre
   </div>
   <img style="float: left; padding: 10px;" alt="xx" src="%www%/web-gallery/v2/images/newhc/coin_offers.png" />
   <div style="position: relative; top: 13px; left: -2px">
    = 10 ofertas gratis 
   </div>
  </div>  
  
   </td> 
  </tr>

 </table>
</div>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
</div>
