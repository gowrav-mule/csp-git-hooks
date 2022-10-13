# Git-hooks for CSP repo
This is the common githook library for [csp-mulesoft-service](https://github.com/mulesoft/csp-mulesoft-service)

## Features

- Runs a pre-commit hook, that check if formatting is needed, if so, runs mvn spotless:apply
- Runs a commit hook, where it appends work-item number from branch to git commit message
- To turn off feature
  - for Individual commit, skip run by adding `git commit -m "message" --no-verify`

## Installation
