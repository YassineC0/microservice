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
        bat 'npm install'
        bat 'npm test'
      }
    }
    stage("Build") {
      steps {
        bat 'npm run build'
      }
    }
    stage("Build Image"){
      steps{
        bat 'docker build -t microservice:1.0 .'
      }
    }
  }
}
