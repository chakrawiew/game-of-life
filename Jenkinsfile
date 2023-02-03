
// Declarative pipeline ; Sequential execution.
// Build project on Slave and deploy on it.



pipeline 
{
	agent 
	{
		label 
		{
			label 'slave-1'
		}
	}

	stages
	{
		stage ('Building project on Slave-1')
		{
			steps
			{	
				sh "mvn clean install"
			}
		}
		
		stage ('Deploying war on Slave-1')
		{			

			steps
			{		
					echo "slave-1 deployment"

					sh "rm -rf /home/ec2-user/apache-tomcat-9.0.70/webapps/gameoflife*"	
					sh "cp gameoflife-web/target/gameoflife.war /home/ec2-user/apache-tomcat-9.0.70/webapps/"	

			}
		}

	}
}
