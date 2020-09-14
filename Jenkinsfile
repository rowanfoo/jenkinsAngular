pipeline {
  agent any
  tools {nodejs "nodejs"}

  stages {
    stage('INSTALL PACKAGES') {
      steps {
        sh "npm install"
      }
    }
    stage('TEST') {
      steps {
        echo "insert your testing here"
      }
    }
    stage('BUILD APP') {
      steps {
        sh "node_modules/.bin/ng build --prod"
      }
    }
    stage("BUILD DOCKER") {
      steps {
        script {
          dockerImageBuild = docker.build "rowanf/jenkinsangular:latest"
        }
      }
    }
     stage("DEPLOY DOCKER") {
       steps {
          script {
            docker.withRegistry('', "mydocker-cred") {
              dockerImageBuild.push()
            }
         }
      }
   }
    stage("DEPLOY & ACTIVATE") {
      steps {
        echo 'this part will differ depending on setup'
      }
    }
  }
}
