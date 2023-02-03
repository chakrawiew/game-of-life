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
						cleanWS()
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
						cleanWS()
						checkout scm
						sh "mvn clean install"
					}
					
				}
			
			}

		}


	}
}
