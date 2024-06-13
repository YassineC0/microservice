pipeline {
  agent any
  stages {
    stage("checkout") {
      steps {
        checkout scm
      }
    }
    stage("Test") {
      steps {
        sh 'sudo npm install'
        sh 'npm test'
      }
    }
    stage("Build") {
      steps {
        sh 'npm run build'
      }
    }
    stage("Build Image"){
      steps{
        bat 'docker build -t microservice:1.0 .'
      }
    }
  }
}
