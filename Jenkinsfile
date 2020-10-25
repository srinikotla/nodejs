node('master') {
  stage('checkout') {
    checkout([$class: 'GitSCM',
         branches: [[name: "main"]],
         userRemoteConfigs: [[url: 'https://github.com/srinikotla/nodejs.git']]
         ])
  }

  stage('build') {
    echo "Building.."
  }
}
node('master') {
  stage('deploy') {
    echo "Deploying... "
  }
}
