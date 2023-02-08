pipeline {
    agent any
    tools{
        maven "maven"
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
                sh 'mvn -B -DskipTests clean package'
                sh 'ls'
            }
        }
    }
}
  
