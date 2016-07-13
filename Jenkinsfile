// Vamos executar em um slave com a tag python-2.7
node('python-2.7') {

	// Apenas clona o código do github
  stage 'Get'
  deleteDir()
  git url: 'https://github.com/wesleyit/python_cartolabot.git'
  
	// Cria o ambiente virtualenv e baixa as dependencias
  stage 'Deps'
  sh '''
    virtualenv virtualenv
    source virtualenv/bin/activate
    pip install -r requirements.txt
  '''
  
	// Roda os testes unitarios
  stage 'Test'
  sh 'bash run_unit_tests.sh'
  
	// Empacota
  stage 'Pack'
  sh 'tar -zcvf release_0.1.tgz *'
  
	// Arquiva
  stage 'Archive'
  archive 'release_0.1.tgz'
}

