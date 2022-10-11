pipeline
{
	agent
	{
		label 'built-in'
	}

stages
{
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
