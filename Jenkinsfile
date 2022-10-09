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
		
		stage ('deploying war on slave-1')
		{

			steps
			{	
				echo "slave-1 deployment"
				sh "rm -rf /home/ec2-user/apache-tomcat-9.0.67/webapps/gameoflife*"
				sh "cp /home/ec2-user/jenkins-slave-1/workspace/Assignment-2/gameoflife-web/target/gameoflife.war  /home/ec2-user/apache-tomcat-9.0.67/webapps/"		

			}
		}		


	}
}
