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
		stage ('building project')
		{
			steps
			{	
				sh "mvn clean install"
			}
		}

		stage ('stop Tomcat')
		{
			steps
			{
				dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
				{
					sh "./shutdown.sh"
					echo "Tomcat stopped"
				}
			}
		}


		stage ('war deployment on slave-1')
		{

			steps
			{	
				echo "deploying war on slave-1"
				sh "rm -rf /home/ec2-user/apache-tomcat-9.0.67/webapps/gameoflife*"
				sh "cp /home/ec2-user/jenkins-slave-1/workspace/Assignment-4/gameoflife-web/target/gameoflife.war  /home/ec2-user/apache-tomcat-9.0.67/webapps/"		

			}
		}

		stage ('start Tomcat')
		{
			steps
			{
				dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
				{
					sh "./startup.sh"
					echo "Tomcat started"
				}
			
		}		


	}
}
