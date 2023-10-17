# Using Jenkins in DevOps

[Jenkins](https://www.jenkins.io/doc/book/installing/linux/#red-hat-centos) is a self-contained, open source automation server which can be used to automate all sorts of tasks related to building, testing, and delivering or deploying software.

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [Using Jenkins in DevOps](#using-jenkins-in-devops)
  - [Table of Contents](#table-of-contents)
  - [Installing Jenkins(LTS)](#installing-jenkinslts)
    - [Unlocking Jenkins](#unlocking-jenkins)
    - [Pipeline](#pipeline)

## Installing Jenkins(LTS)

```sh
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo amazon-linux-extras install epel -y
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install jenkins -y
sudo systemctl daemon-reload

sudo systemctl enable --now jenkins
sudo systemctl status jenkins
```

You can see more details [Installing Jenkins on Ubuntu/Debian](https://github.com/mehradi-github/ref-ubuntu#installing-jenkins).

### Unlocking Jenkins

1. Browse to http://localhost:8080
2. The command: `sudo cat /var/lib/jenkins/secrets/initialAdminPassword` will print the password at console.

### Pipeline

The [Snippet Generator](http://localhost:8080/job/first-pipline/pipeline-syntax/) will help you learn the Pipeline Script code which can be used to define various steps.

A Pipeline can be created in one of the following ways:

- [Through Blue Ocean](https://www.jenkins.io/doc/book/pipeline/getting-started/#through-blue-ocean) - after setting up a Pipeline project in Blue Ocean, the Blue Ocean UI helps you write your Pipeline’s Jenkinsfile and commit it to source control.

- [Through the classic UI](https://www.jenkins.io/doc/book/pipeline/getting-started/#through-the-classic-ui) - you can enter a basic Pipeline directly in Jenkins through the classic UI.

- [In SCM](https://www.jenkins.io/doc/book/pipeline/getting-started/#defining-a-pipeline-in-scm) - you can write a Jenkinsfile manually, which you can commit to your project’s source control repository.
