pipeline
{
	agent
	{
		label 'built-in'
	}

stages
{
	stage('Stop Tomcat')
	{
		parallel
		{
			stage('Slave-1')
			{
				agent 
				{
					node 
					{
						label '172.31.44.255'
					}
				}			
		
				steps
				{
					dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
					{
						sh"sudo ./shutdown.sh"
					}
				}
			}

			stage('Slave-2')
			{
				agent 
				{
					node 
					{
						label '172.31.34.216'
					}
				}		

				steps
				{
					dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
					{
						sh"sudo ./shutdown.sh"
					}
				}
			}
	
			stage('Slave-3')
			{
				agent 
				{
					node 
					{
						label '172.31.39.23'
					}
				}

				steps
				{
					dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
					{
						sh"sudo ./shutdown.sh"
					}
				}
			}
	 	}
	}

//---------------------------

	stage('Deploying war')
	{
		parallel
		{
			stage('Slave-1')
			{
				agent 
				{
					node 
					{
						label '172.31.44.255'
					}
				}			
		
				steps
				{
					dir('/home/ec2-user/apache-tomcat-9.0.67/webapps/')
					{
						sh"sudo cp /home/ec2-user/jenkins-slave-1/workspace/Assignment-4/gameoflife-web/target/gameoflife.war ."
					}
				}
			}

			stage('Slave-2')
			{
				agent 
				{
					node 
					{
						label '172.31.34.216'
					}
				}		

				steps
				{
					dir('/home/ec2-user/apache-tomcat-9.0.67/webapps/')
					{
						sh"sudo cp /home/ec2-user/jenkins-slave-2/workspace/Assignment-4/gameoflife-web/target/gameoflife.war ."
					}
				}
			}
	
			stage('Slave-3')
			{
				agent 
				{
					node 
					{
						label '172.31.39.23'
					}
				}

				steps
				{
					dir('/home/ec2-user/apache-tomcat-9.0.67/webapps/')
					{
						sh"sudo cp /home/ec2-user/jenkins-slave-3/workspace/Assignment-4/gameoflife-web/target/gameoflife.war ."
					}
				}
			}
	 	}
	}



//---------------------------

	stage('Start Tomcat')
	{
		parallel
		{
			stage('Slave-1')
			{
				agent 
				{
					node 
					{
						label '172.31.44.255'
					}
				}			
		
				steps
				{
					dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
					{
						sh"sudo ./startup.sh"
					}
				}
			}

			stage('Slave-2')
			{
				agent 
				{
					node 
					{
						label '172.31.34.216'
					}
				}		

				steps
				{
					dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
					{
						sh"sudo ./startup.sh"
					}
				}
			}
	
			stage('Slave-3')
			{
				agent 
				{
					node 
					{
						label '172.31.39.23'
					}
				}

				steps
				{
					dir('/home/ec2-user/apache-tomcat-9.0.67/bin')
					{
						sh"sudo ./startup.sh"
					}
				}
			}
	 	}
	}

}
}
