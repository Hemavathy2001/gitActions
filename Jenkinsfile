pipeline {
    agent any
    tools{
        maven "maven"
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
                sh 'ls -a'
            }
        }
        stage ('publish'){
            steps{
                echo "Java Version....."
                sh 'java --version'
                sh 'mvn --batch-mode deploy'
            }
        }
    }
}
  
