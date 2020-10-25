node('master') {
  stage('checkout') {
    git "https://github.com/srinikotla/nodejs"
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
