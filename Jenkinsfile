node('master') {
  stage('checkout') {
    checkout([$class: 'GitSCM',
         branches: [[name: "main"]],
         userRemoteConfigs: [[url: 'https://github.com/srinikotla/nodejs.git']]
         ])
  }

  stage('build') {
    echo "Building the Node.JS application..."
    echo "Stash the artifacts"
  }
  stage('test') {
    echo "Unstash the artifacts if needed"
    echo "Run the scan/test"
}
node('master') {
  stage('deploy') {
    echo "Unstash the artifacts"
    echo "Run the deploy script..."
  }
}
