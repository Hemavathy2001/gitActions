pipeline {
    agent any
    tools{
           maven "maven"
//         jdk "jdk"
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn clean install'
                sh 'ls -a'
            }
        }
        stage ('publish'){
            steps{
                echo "Java Version....."
                sh 'java --version'
                //sh 'mvn --batch-mode deploy -s settings.xml'
                withCredentials([usernamePassword(credentialsId: 'git', passwordVariable: 'PASSWORD_VAR', usernameVariable: 'USERNAME_VAR')])
                {
                    sh 'mvn deploy -s  settings.xml -Dserver.username=${USERNAME_VAR} -Dserver.password=${PASSWORD_VAR}'
                }
            }
        }
    }
}
  
