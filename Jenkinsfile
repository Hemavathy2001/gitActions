pipeline {
    agent any
    tools{
        maven "maven"
    }
    environment{
        GIT_CREDENTIALS = credentials('git')
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
                sh 'mvn -B -DskipTests clean package'
                sh 'ls'
            }
        }
        stage ('publish'){
            steps{
//                 sh 'mvn --batch-mode deploy'
                echo GIT_CREDENTIALS
                git credentialsId: GIT_CREDENTIALS, url: 'https://github.com/Hemavathy2001/gitActions'
            }
        }
    }
}
  
