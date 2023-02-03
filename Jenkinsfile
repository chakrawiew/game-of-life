
// Declarative pipeline ; Sequential execution.
// Build project on Multiple-Slave and deploy on it.



pipeline 
{
	agent 
	{
		label 
		{
			label 'built-in'
		}
	}

	stages
	{
		stage ('Building & deploying on Slave-1')
		{
			agent
			{
				node 'slave-1'
			}		
			
			steps
			{	
				sh "mvn clean install"

				echo "Deploying war on slave-1"

				sh "sudo rm -rf /home/ec2-user/apache-tomcat-9.0.70/webapps/gameoflife*"	
				sh "sudo cp gameoflife-web/target/gameoflife.war /home/ec2-user/apache-tomcat-9.0.70/webapps/"

			}
		}

		
		stage ('Building & deploying on Slave-2')
		{
			agent
			{
				node 'slave-2'
			}		
			
			steps
			{	
				sh "mvn clean install"

				echo "Deploying war on slave-2"

				sh "sudo rm -rf /home/ec2-user/apache-tomcat-9.0.70/webapps/gameoflife*"	
				sh "sudo cp gameoflife-web/target/gameoflife.war /home/ec2-user/apache-tomcat-9.0.70/webapps/"

			}
		}

	}
}
