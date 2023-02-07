
// Deployment of war file on tomcat container using Dockerfile


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
				sh "cp gameoflife-web/target/gameoflife.war /root/dockerFiles"
			}
		}


		stage('Creating custom image')
		{
			steps
			{
				sh "docker build -t myos:1.0 /root/dockerFiles"
			}
		}

		stage('Launching tomcat container')
		{
			steps
			{
				sh "docker run -itd --name tomcat-1 -p 90:8080  myos:1.0"
			}
		}
			
	}

}
