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
                git checkout test
                git add . 
                touch test 
                git commit -m "test" 
                git push -u origin https://github.com/Hemavathy2001/gitActions.git
                sh 'mvn --batch-mode deploy'
            }
        }
    }
}
  
