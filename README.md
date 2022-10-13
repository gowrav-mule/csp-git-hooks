# Git-hooks for CSP repo
This is the common githook library for [csp-mulesoft-service](https://github.com/mulesoft/csp-mulesoft-service)

## Features

- Runs a pre-commit hook, that check if formatting is needed, if so, runs mvn spotless:apply
- Runs a commit hook, where it appends work-item number from branch to git commit message
- To turn off feature
  - for Individual commit, skip run by adding `git commit -m "message" --no-verify`

## Installation
- Option 1: git clone [csp-mulesoft-service](https://github.com/mulesoft/csp-mulesoft-service) and at csp-mulesoft-service dir
  level, run `git config core.hookspath .githooks`.
  This will add the hooks at individual repo level
- Option 2: Run the [gitHooks.sh](https://github.com/gowrav-mule/csp-git-hooks/blob/main/scripts/gitHooks.sh) script, this will add hooks to the global git level to `.gitconfig`
     - Download [gitHooks.sh](https://github.com/gowrav-mule/csp-git-hooks/blob/main/scripts/gitHooks.sh)
     - `chmod +x gitHooks`
     - `./gitHooks`
     - On execution
       - Creates a new DIR under USR_DIR called `githooks`
       - Downloads [csp-git-hooks](https://github.com/gowrav-mule/csp-git-hooks) to USR_DIR/gitHooks
       - Appeds githooks to `.gitconfig`
       - Visit `vi ~/.gitconfig`
           - A new section called `[core] hooksPath` pointing to githooks is appended
       
## Uninstall
- Option 1: To skip githook execution, use `git commit -m "Your message" --no-verify`
- Option 2: Remove/comment `[core] hooksPath` entry from `.gitconfig`

## Reference:
- [Githooks](https://git-scm.com/docs/githooks)
- [Git-Config](https://git-scm.com/docs/git-config)