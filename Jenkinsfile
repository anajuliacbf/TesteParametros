pipeline {
    agent any

    stages {
	stage('Checkout') {
            steps {
                // Clona o repositório (SCM está automaticamente configurado pelo Jenkins)
                checkout scm
            }
        }

        stage('Run Docker') {
            steps {
                // Chama o script para construir a imagem e rodar o container com o NGINX customizado
                script {
                    sh '''
                    docker build --no-cache -t custom-nginx .
                    docker run --rm -d -p 9001:80 -e NGINX_CUSTOM_MSG="${INTERNALTEXT}" custom-nginx
                    '''
                }
            }
        }
    }
}
