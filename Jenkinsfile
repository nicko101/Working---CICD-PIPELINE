pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'printenv | sort'
        ansiblePlaybook installation: 'ansible', inventory: '/home/oisin/.local/bin', playbook: '/home/oisin/auto-jenkins_v2/jenkins_play1.yml'
        sh 'bash $WORKSPACE/Build/startnodes.sh'
      }
    }

    stage('Test') {
      steps {
        sh 'bash $WORKSPACE/Test/testscript.sh'
      }
    }

    stage('Deploy') {
      steps {
        sh 'bash $WORKSPACE/Deploy/deployer.sh'
      }
    }

  }
}
