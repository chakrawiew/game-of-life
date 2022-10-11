// Declarative pipeline
// Build & deploy on multiple slave. 
// Sequential execution.

pipeline 
{
	agent 
	{
		label 
		{
			label '172.31.44.255'
		}
	}
	
	options 
	{
        	skipDefaultCheckout(true)	        // This is required if you want to clean before build

    	}

	stages
	{		
		
		stage ('building project on slave-1')
		{
			steps
			{	
				cleanWs()	// Clean before build
				checkout scm	// We need to explicitly checkout from SCM here

				//sh "mvn clean install"
			}
		}

		stage ('Deployment on slave-1')
		{
			steps
			{
				dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
				{
					sh "sudo ./shutdown.sh"
					echo "Tomcat stopped"

					echo "deploying war on slave-1"

				sh "sudo rm -rf /home/ec2-user/apache-tomcat-9.0.67/webapps/gameoflife*"

				sh "sudo cp /home/ec2-user/jenkins-slave-1/workspace/Assignment-4/gameoflife-web/target/gameoflife.war  /home/ec2-user/apache-tomcat-9.0.67/webapps/"

					sh "sudo ./startup.sh"
					//echo "Tomcat started"
				}
			}
		}


		

		stage ('building project on slave-2')
		{
		
			agent 
			{
				label 
				{
					label '172.31.34.216'
				}
			}

			steps
			{	
				cleanWs()	// Clean before build
				checkout scm	// We need to explicitly checkout from SCM here
				sh "mvn clean install"
			}
		}
		
		stage ('Deployment on slave-2')
		{
			agent 
			{
				label 
				{
					label '172.31.34.216'
				}
			}			

			steps
			{
				dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
				{
					sh "sudo ./shutdown.sh"
					echo "Tomcat stopped"

					echo "deploying war on slave-2"

				sh "sudo rm -rf /home/ec2-user/apache-tomcat-9.0.67/webapps/gameoflife*"
				sh "sudo cp /home/ec2-user/jenkins-slave-2/workspace/Assignment-4/gameoflife-web/target/gameoflife.war  /home/ec2-user/apache-tomcat-9.0.67/webapps/"

					sh "sudo ./startup.sh"
					//echo "Tomcat started"
				}
			}
		}

		stage ('building project on slave-3')
		{
		
			agent 
			{
				label 
				{
					label '172.31.39.23'
				}
			}

			steps
			{	
				cleanWs()	// Clean before build
				checkout scm	// We need to explicitly checkout from SCM here
				sh "mvn clean install"
			}
		}
		
		stage ('Deployment on slave-3')
		{
			agent 
			{
				label 
				{
					label '172.31.39.23'
				}
			}			

			steps
			{
				dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
				{
					sh "sudo ./shutdown.sh"
					echo "Tomcat stopped"

					echo "deploying war on slave-3"

				sh "sudo rm -rf /home/ec2-user/apache-tomcat-9.0.67/webapps/gameoflife*"
				sh "sudo cp /home/ec2-user/jenkins-slave-3/workspace/Assignment-4/gameoflife-web/target/gameoflife.war  /home/ec2-user/apache-tomcat-9.0.67/webapps/"

					sh "sudo ./startup.sh"
					//echo "Tomcat started"
				}
			}
		}
		
		


	}
}
