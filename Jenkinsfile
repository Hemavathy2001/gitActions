pipeline {
    agent any
    tools{
        maven "maven"
    }
    stages {
//         stage('build') {
//             steps {
//                 sh 'mvn --version'
//                 sh 'mvn -B -DskipTests clean package'
//                 sh 'ls'
//             }
//         }
        stage ('publish'){
            steps{
                sh 'java --version'
//                 sh 'mvn --batch-mode deploy'
            }
        }
    }
}
  
