pipeline 
{
	agent 
	{
		label 
		{
			label '172.31.44.255'
		}
	}

	stages
	{
		/*agent 
		{
			label 
			{
				label '172.31.44.255'
			}
		}*/		
		
		stage ('building project on slave-1')
		{
			steps
			{	
				sh "mvn clean install"
			}
		}

		stage ('Deployment on slave-1')
		{
			steps
			{
				dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
				{
					sh "./shutdown.sh"
					echo "Tomcat stopped"

					echo "deploying war on slave-1"

				sh "rm -rf /home/ec2-user/apache-tomcat-9.0.67/webapps/gameoflife*"
				sh "cp /home/ec2-user/jenkins-slave-1/workspace/Assignment-4/gameoflife-web/target/gameoflife.war  /home/ec2-user/apache-tomcat-9.0.67/webapps/"

					sh "sudo ./startup.sh"
					echo "Tomcat started"
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
					sh "./shutdown.sh"
					echo "Tomcat stopped"

					echo "deploying war on slave-2"

				sh "rm -rf /home/ec2-user/apache-tomcat-9.0.67/webapps/gameoflife*"
				sh "cp /home/ec2-user/jenkins-slave-1/workspace/Assignment-4/gameoflife-web/target/gameoflife.war  /home/ec2-user/apache-tomcat-9.0.67/webapps/"

					sh "sudo ./startup.sh"
					echo "Tomcat started"
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
					sh "./shutdown.sh"
					echo "Tomcat stopped"

					echo "deploying war on slave-3"

				sh "rm -rf /home/ec2-user/apache-tomcat-9.0.67/webapps/gameoflife*"
				sh "cp /home/ec2-user/jenkins-slave-1/workspace/Assignment-4/gameoflife-web/target/gameoflife.war  /home/ec2-user/apache-tomcat-9.0.67/webapps/"

					sh "sudo ./startup.sh"
					echo "Tomcat started"
				}
			}
		}
		


	}
}
