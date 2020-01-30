pipeline{
	agent any
    
    	environment {
        	WORKSPACE_JENKINS = '$WORKSPACE'
	}	
    	stages{
        	stage('Git'){
            		steps{
		                git 'https://github.com/flaviomrjr/ci-cd.git'
		        }
        	}
        	stage('Deploy'){
            		steps{
            			ansiblePlaybook(inventory: '/etc/ansible/hosts', playbook: '${WORKSPACE}/Avec/ansible/playbooks/bluegreen.yml')	
	    		}
        	}
		stage('PostBuild'){
	    		steps{
				script {
					step([$class: "RundeckNotifier",
					includeRundeckLogs: true,
					jobId: "fabc08e4-a08f-471d-a996-9e51a3ef3676",
					nodeFilters: "",
					rundeckInstance: "Rundeck",
					shouldFailTheBuild: true,
					shouldWaitForRundeckJob: true,
					tags: "",
					taillog: true])
				}
			}
		}		
	}
}
