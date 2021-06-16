node {
  def app

  stage('Clone repository') {
      checkout scm
  }

  stage('Test code')  {
       steps {
          sh 'python3  test_name_fuction.py'
       }
  }

  stage('Build image') {
      app = docker.build("saberdocker/wednames:latest")
  }

  stage('Deploy image') {
      docker.withRegistry('https://registry.hub.docker.com', 'jenkinshub') {
        app.push("${env.BUILD_NUMBER}")
        app.push("latest")
      }
  }
} 
   
