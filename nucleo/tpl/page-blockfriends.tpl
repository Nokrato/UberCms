<div class="habblet-container" style="float:left; width: 560px;"> 
<div class="cbb clearfix settings"> 
 
<h2 class="title">Bloquea peticiones de amigos</h2> 
<div class="box-content"> 

<?php if ($updateResult == 1) { ?>
	<div class="rounded rounded-green">
		�Listo! Ajustes actualizados!<br />
	</div>
	<div>&nbsp;</div>
<?php } ?>

<?php if ($updateResult == 2) { ?>
	<div class="rounded rounded-red">
		�Error! Revisa bien tus datos!<br />
	</div>
	<div>&nbsp;</div>
<?php } ?>

Aqu� podr�s cambiar la configuraci�n de las peticiones de tus amigos, podr�s impedir que te envie peticiones al igual que volver a activarlas, por motivos de seguridad deber�s saber la contrase�a actual, para verificar que eres el due�o de esta cuenta.

<br>
<br>

<form method="post" action="">
<table>
<tr>
<td>Contrase�a actual <?php if ($error == 1) { ?> <span style="color:red; font-size:10px;">* La contrase�a no coincide o es inv�lida.</span> <?php } ?></td>
</tr>
<tr>
<td><input type="password" name="cpassword"></td>
</tr>
<tr>
<td><span style="color:#c0bdbd;">Ingrese la contrase�a actual, por motivos de seguridad.</span><br><br></td>
</tr>
<tr>
<td></td>
</tr>

<tr>
<td> </td>
</tr>
<tr>
<td>Petici�n de amigos</td>
</tr>

<tr>
<td><select name="block">
  	<option value="1">Bloquear</option>
  	<option value="0">Desbloquear</option>
 	</select></td>
</tr>

<tr>
<td><span style="color:#c0bdbd;">Porfavor selecciona la opci�n que deseas.</span><br><br></td>
</tr>

<tr>
<td>Confirmar</td>
</tr>
   
<tr>
<td><select name="rblock">
  	<option value="1">Bloquear</option>
  	<option value="0">Desbloquear</option>
  	</select></td>
</tr>
<tr>
<td><span style="color:#c0bdbd;">Porfavor confirma tu acci�n.</span><br><br></td>
</tr>



<tr>
<td><i></i></td>
</tr>
</table>
<p align="right"><a href="#" id="settings-submit" class="new-button green-button enabled-button"><b>Salvar cambios</b><i></i></a></p>
</form>

<br />

            	
</div> 

</div> 
</div> 