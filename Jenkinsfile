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
		
		stage ('deploying war on slave-1')
		{

			agent 
			{
				label 
				{
					label '172.31.44.255'
				}
			}			

			steps
			{	
				echo "slave-1 deployment"
				//sh "sudo rsync -e "ssh -i /root/aws-keypair-1.pem" -avz --progress gameoflife-web/target/gameoflife.war ec2-user@172.31.44.255:/home/ec2-user/apache-tomcat-9.0.67/webapps/ "
				sh "scp -i /root/aws-keypair-1.pem  gameoflife-web/target/gameoflife.war ec2-user@172.31.44.255:/home/ec2-user/apache-tomcat-9.0.67/webapps/""
			}
		}

		stage ('deploying war on slave-2')
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
				echo "slave-2 deployment"
				sh "sudo rsync -e "ssh -i /root/aws-keypair-1.pem" -avz --progress gameoflife-web/target/gameoflife.war ec2-user@172.31.34.216:/home/ec2-user/apache-tomcat-9.0.67/webapps/ "
			}
		}

		stage ('deploying war on slave-3')
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
				echo "slave-3 deployment"
				sh "sudo rsync -e "ssh -i /root/aws-keypair-1.pem" -avz --progress gameoflife-web/target/gameoflife.war ec2-user@172.31.39.23:/home/ec2-user/apache-tomcat-9.0.67/webapps/ "
			}
		}


	}
}
