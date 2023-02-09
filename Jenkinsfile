
// Deployment of war file on tomcat docker container using  docker-compose with Dockerfile.
// Present in this repo -> Dockerfile and docker-compose.yaml  


pipeline
{
	agent
	{
		label 'built-in'
	}

	options
	{
		skipDefaultCheckout(true)
	}

	stages
	{
		stage('Building & Packaging')
		{
			steps
			{
				cleanWs()
				checkout scm

				sh "mvn clean install"
			}
		}


		stage('Launching tomcat container')
		{
			steps
			{
				sh "docker-compose up -d"
			}
		}

			
	}

}
