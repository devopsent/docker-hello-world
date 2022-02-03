pipeline {
  agent {
    node {
      label 'nodejs'
    }

  }
  stages {
    stage('test') {
      steps {
        sh 'npm test'
      }
    }

  }
}