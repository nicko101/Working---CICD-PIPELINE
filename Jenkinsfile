pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'printenv | sort'
        ansiblePlaybook credentialsId: '65b4d7fa-ff37-4a59-8978-ebd2eafe429f', installation: 'ansible', inventory: '/home/oisin/.local/bin', playbook: '/home/oisin/auto-jenkins_v2.yml'
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
