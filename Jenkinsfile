pipeline {
    agent any

    parameters {
        string(name: "INTERNALTEXT", defaultValue: 'olá mundo!', description: "URL da API para o Nginx")
    }
	  
      stages {
       stage("Checkout") {
            steps {
                // Clona o repositório (SCM está automaticamente configurado pelo Jenkins)
                checkout scm
            }
        }
        stage("Build Docker Image") {
            steps {
                script {
                    // Faz o build da imagem Docker usando o Dockerfile e arquivos
                    sh "docker build --no-cache -t custom-nginx ."
		    echo "${INTERNALTEXT}"
                }
            }
        }

        stage("Run Docker Container") {
            steps {
                script {
                    // Executa o contêiner Docker e passa a variável INTERNALTEXT
                    sh "docker run --rm -d -p 9001:80 -e INTERNALTEXT='${params.INTERNALTEXT} custom-nginx"
                }
            }
        }
    }
}
