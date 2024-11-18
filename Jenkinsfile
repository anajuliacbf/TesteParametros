pipeline {
    agent any

    parameters {
        string(name: "INTERNALTEXT", defaultValue: 'olá mundo!', description: "Texto para o index.html")
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
                    // Executa o container Docker e passa a variável INTERNALTEXT
		    sh "docker rm -f custom-nginx"
                    sh "docker run --name custom-nginx -d -p 9001:80 -e INTERNALTEXT='${params.INTERNALTEXT}' custom-nginx"
                }
            }
        }
    }
}
