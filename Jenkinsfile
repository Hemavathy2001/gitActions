pipeline {
    agent any
    tools{
        maven "maven"
    }
    environment{
        GIT_CREDENTIALS = credentials('GITHUB')
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
                git credentialsId: GIT_CREDENTIALS, url: 'https://github.com/Hemavathy2001/gitActions'
                sh 'mvn --batch-mode deploy'
            }
        }
    }
}
  
