// Declarative pipeline ; Sequential execution.
// Build on Jenkins-Master & deploy on multiple slave.



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
				
				//sh "scp -i /home/ec2-user/mumbai-keypair.pem  /root/.jenkins/workspace/Assignment-2/gameoflife-web/target/gameoflife.war ec2-user@172.31.14.85:/home/ec2-user/apache-tomcat-9.0.67/webapps/"

			}
		}

		stage ('deploying war on slave-2')
		{			

			steps
			{	
				echo "slave-2 deployment"
				sh "ls"

				//sh "scp -i /home/ec2-user/mumbai-keypair.pem  /root/.jenkins/workspace/Assignment-2/gameoflife-web/target/gameoflife.war ec2-user@172.31.13.148:/home/ec2-user/apache-tomcat-9.0.67/webapps/"

			}
		}


	}
}
