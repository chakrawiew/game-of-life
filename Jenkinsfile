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
		stage ('building project')
		{
			steps
			{	
				sh "mvn clean install"
			}
		}
		
		stage ('deploying war in QA')
		{

			agent 
			{
				label 
				{
					label 'QA'
				}
			}			

			steps
			{	
				sh "rsync -e "ssh -i /root/aws-keypair-1.pem" -avz --progress gameoflife-web/target/gameoflife.war ec2-user@172.31.44.255:/home/ec2-user/apache-tomcat-9.0.67/webapps/ "
			}
		}
	}
}
