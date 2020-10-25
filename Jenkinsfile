node('master') {
  stage('checkout') {
    git "https://github.com/srinikotla/nodejs.git"
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
