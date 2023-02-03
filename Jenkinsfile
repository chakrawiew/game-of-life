// Declarative pipeline ; Sequential execution.
// Build & deploy on single slave



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
		stage ('building & packaging on jenkins-master')
		{
			steps
			{	
				sh "mvn clean install"
			}
		}
		
		stage ('deploying war on slave-1')
		{			

			steps
			{	
				echo "slave-1 deployment"
				sh "ls"
				
				sh "scp -i /home/ec2-user/mumbai-keypair.pem  gameoflife-web/target/gameoflife.war ec2-user@172.31.14.85:/home/ec2-user/apache-tomcat-9.0.70/webapps/"

			}
		}

		stage ('deploying war on slave-2')
		{			

			steps
			{	
				echo "slave-2 deployment"
				sh "ls"

				sh "scp -i /home/ec2-user/mumbai-keypair.pem  gameoflife-web/target/gameoflife.war ec2-user@172.31.13.148:/home/ec2-user/apache-tomcat-9.0.70/webapps/"

			}
		}


	}
}
