	<?php

	include_once('aluno.class.php');
		$nome = $_POST['nome_aluno'];
		$nascimento = $_POST['nascimento_aluno'];
		$rg = $_POST['rg_aluno'];
		$cgm = $_POST['cgm_aluno'];
		$curso = $_POST['curso_aluno'];
		$turma = $_POST['turma_aluno'];
		$email = $_POST['email_aluno'];
		$senha = $_POST['senha_aluno'];

		$aluno = new Aluno();
		$aluno->__set("nome",$nome);  
	    $aluno->__set("nascimento",$nascimento);  
	    $aluno->__set("rg",$rg);
	    $aluno->__set("cgm",$cgm);  
	    $aluno->__set("curso",$curso);  
	    $aluno->__set("turma",$turma);
	    $aluno->__set("email",$email);  
	    $aluno->__set("senha",$senha);
	    $aluno->gravar();
	    header("Location: ?pagina=admin");

?>