pipeline {
    agent any
    stages {
        stage('One') {
                steps {
                        echo 'Jenkins test'
			
                }
        }
	    stage('Two'){
		    
		steps {
			input('Do you want to proceed?')
        }
	    }
        
        stage('Three') {
                parallel {
                        stage('Unit Test') {
                                steps{
                                        echo "Running terraform"
                                }
                        }
                        stage('Integration test') {
                        agent {
                                terraform {
                                        apply
                                        }
			}
				steps {
					echo 'Running the integration test..'
				}
                               
			}  }
        }
    }
}
