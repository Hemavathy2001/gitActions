pipeline {
    agent any
    tools{
           maven "maven"
//         jdk "jdk"
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn compile'
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
  
