pipeline {
    agent any
    tools{
        maven "maven"
        jdk "jdk"
    }
    stages {
        stage('build') {
            steps {
//                 sh '''
//                  env | grep -e PATH -e JAVA_HOME
//                 '''
//                 sh 'mvn --version'
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
  
