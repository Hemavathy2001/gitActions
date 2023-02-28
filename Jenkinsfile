// pipeline {
//     agent any
//     tools{
//            maven "maven"
//     }
//     stages {
//         stage('build') {
//             steps {
//                 sh 'mvn clean install'
//                 sh 'ls -a'
//             }
//         }
//         stage ('publish'){
            
//             steps{
//                 echo "Java Version......."
//                 sh 'java --version'
//                 withCredentials([usernamePassword(credentialsId: 'git', passwordVariable: 'PASSWORD_VAR', usernameVariable: 'USERNAME_VAR')])
//                 {
//                     sh 'mvn deploy -s  settings.xml -Dserver.username=${USERNAME_VAR} -Dserver.password=${PASSWORD_VAR}'
//                 }
//             }
//         }
//     }
// }

pipeline {
    agent any
    tools{
           maven "maven"
    }
    stages {
        stage('build') {
            steps {
//                 sh 'mvn compile'
                   sh 'export JAVA_HOME=$(/usr/libexec/java_home -v 17)' 
                   sh 'mvn --version' 
                   sh 'java --version'
                  
            }
        }
//         stage('test'){
//             steps{
//                 sh 'mvn test'
//             }
//         }
//         stage ('deploy'){     
//             steps{
//                 withCredentials([usernamePassword(credentialsId: 'git', passwordVariable: 'PASSWORD_VAR', usernameVariable: 'USERNAME_VAR')])
//                 {
//                     sh 'mvn deploy -s .m2/settings.xml -Dserver.username=${USERNAME_VAR} -Dserver.password=${PASSWORD_VAR}'
//                 }
//             }
//         }
     }
}
