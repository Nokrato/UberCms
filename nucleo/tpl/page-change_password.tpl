<div class="habblet-container" style="float:left; width: 560px;"> 
<div class="cbb clearfix settings"> 
 
<h2 class="title">Cambiar Contrase�a</h2> 
<div class="box-content"> 

<?php if ($updateResult == 1) { ?>
	<div class="rounded rounded-green">
		Listo! Contrase�a Actualizada!<br />
	</div>
	<div>&nbsp;</div>
<?php } ?>

<?php if ($updateResult == 2) { ?>
	<div class="rounded rounded-red">
		Error! Te falta rellenar algunos espacios en blanco.<br />
	</div>
	<div>&nbsp;</div>
<?php } ?>

Cambiar la contrase�a te puede servir de mucho, como cuando se la dijiste a alguien y no tienes confianza, cambiarla...

<br><br>

<form method="post" action="">
<table>
<tr>
<td>Contrase�a Actual <?php if ($error == 1) { ?> <span style="color:red; font-size:10px;">* La contrase�a actual no es valida.</span> <?php } ?></td>
</tr>
<tr>
<td><input type="password" name="cpassword"></td>
</tr>
<tr>
<td><span style="color:#c0bdbd;">Por seguridad escribe tu contrase�a que tienes actualmente.</span><br><br></td>
</tr>
<tr>
<td><br></td>
</tr>

<tr>
<td>Nueva Contrase�a <?php if (($error == 1) || ($error == 2)) { ?> <span style="color:red; font-size:10px;">* Contrase�a Invalida</span> <?php } ?></td>
</tr>
<tr>
<td><input type="password" name="npassword"></td>
</tr>
<tr>
<td><span style="color:#c0bdbd;">Escribe tu nueva contrase�a con <?php echo $min; ?>-<?php echo $max; ?> digitos.</span><br><br></td>
</tr>

<tr>
<td>Reescribe la nueva contrase�a <?php if (($error == 1) || ($error == 2)) { ?> <span style="color:red; font-size:10px;">* Contrase�a Invalida</span> <?php } ?></td>
</tr>
<tr>
<td><input type="password" name="rnpassword"></td>
</tr>
<tr>
<td><span style="color:#c0bdbd;">Reescribe tu nueva contrase�a para saber si no eres un BOT.</span><br><br></td>
</tr>

<tr>
<td><input type="submit" name="submit"></td>
</tr>
</table>
</form>
            	
</div> 

</div> 
</div> 