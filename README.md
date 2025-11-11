# Training Repo for Terraform - create a tomcat webserver with asg / alb on existing training network

Dependencies:
relies on existing Training account network - vpc = vpc-02755cacb5089fae3 DOES NOT CREATE NETWORK INFRASTRUCTURE

NOTE: no direct connect connection exists for training so no URL connections will work from your desktop

Webserver
runs tomcat 10.1.28
connection via ALB - secure only, will redirect port 80 requests back to port 443 (http -> https)
creates dns alias for ALB
CHECK: wget https://davidwtest.training.tio.systems:8080/


## GitHub Webhooks

This template is set up to make use of our teams shared github webhooks. What these webhooks are and how they are set up can be seen in the modules README: https://github.com/elsevier-bts/autobots-github-actions

> > NOTE: Currently this webhook is set to use the latest Terraform version Elsevier support (1.5.7) but please update this in your repo if this is not the version you are using.

<!-- Below pre-commit information should be retained in all repos.  -->

## Using Pre-Commit Hooks

Git hook scripts are useful for identifying simple issues before submission to code review.We run our hooks on every commit
to automatically point out issues in code such as missing semicolons, trailing whitespace, and debug statements. By pointing
these issues out before code review, this allows a code reviewer to focus on the architecture of a change while not wasting
time with trivial style nitpicks.

### Pre-Requisite

Below are the list of pre-requisites/tools which are being referred/used in [.pre-commit-config.yaml](.pre-commit-config.yaml).
The pre-commit under the hood executes/uses below tools to validate the code.

- [terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs#installation)
- [pre-commit](https://pre-commit.com/#intro)
- [tflint](https://github.com/terraform-linters/tflint#installation)
- [shellcheck](https://github.com/koalaman/shellcheck#installing)
- [Gitleaks](https://github.com/zricethezav/gitleaks#as-a-pre-commit-hook)

### Usage

Below command will install the [pre-commit](https://pre-commit.com/#intro) to your `.git/hooks/pre-commit`.
Once installed all the rules mentioned in [.pre-commit-config.yaml](.pre-commit-config.yaml) will get validated during `git commit`

```bash
pre-commit install
```

It's usually a good idea to run the hooks against all of the files (usually pre-commit will only run on the changed files during git hooks).

```bash
pre-commit run --all-files
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
