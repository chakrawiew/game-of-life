// Declarative pipeline  Parallel execution.
// Build & deploy on multiple slave.



pipeline 
{
	agent 
	{
		label 
		{
			label 'built-in'
		}
	}

	options 
	{
        	skipDefaultCheckout(true)	        // Skip default scm checkout

    	}

	
	stages
	{
		stage('Building & Packaging')	
		{
			parallel
			{
				stage('slave-1')
				{
					agent
					{
						node
						{
							label 'slave-1'
						}
					}
		
					steps
					{
						cleanWs()
						checkout scm
						sh "mvn clean install"
					}
					
				}

				stage('slave-2')
				{
					agent
					{
						node
						{
							label 'slave-2'
						}
					}
		
					steps
					{
						cleanWs()
						checkout scm
						sh "mvn clean install"
					}
					
				}
			
			}

		}

//-----------------------


		stage('Deploying war')	
		{
			parallel
			{
				stage('slave-1')
				{
					agent
					{
						node
						{
							label 'slave-1'
						}
					}
		
					steps
					{
						sh "sudo rm -rf /home/ec2-user/apache-tomcat-9.0.70/webapps/gameoflife*"	
						sh "sudo cp gameoflife-web/target/gameoflife.war /home/ec2-user/apache-tomcat-9.0.70/webapps/"
					}
					
				}

				stage('slave-2')
				{
					agent
					{
						node
						{
							label 'slave-2'
						}
					}
		
					steps
					{
						sh "sudo rm -rf /home/ec2-user/apache-tomcat-9.0.70/webapps/gameoflife*"	
						sh "sudo cp gameoflife-web/target/gameoflife.war /home/ec2-user/apache-tomcat-9.0.70/webapps/"
					}
					
				}
			
			}

		}

	}
}
