# Development Policy

This repository hosts policy documentation that applies to our general development.

<!-- https://zenn.dev/nameless_sn/articles/awesome_githubrepo_for_2022 -->

## Overview

This _README_ describes the following sections:

* [Getting Started](#getting-started) explains how to build and preview the documentation site in a Docker container.

* [Documentation Workflow](#documentation-workflow) explains how to suggest new topics to add to the policy documentation, how to those suggestions should be made into pull requests, and how those pull requests should be reviewed and merged.

* [Continuous Integration Policies](#continuous-integration-policies) explains how CI tests are used to enforce proper spelling, and style, and how you should fix any errors or warnings that you encounter.

## Getting Started

### Prerequisites

Before you start creating document, please make sure the following requirements:

* Operating System
  * Linux (Ubuntu 18 or later, x86_64)
* Docker 19 and up (required for most plugins)
  * Linux Hosts: Docker requires to [run without sudo](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user)
* Installation Script Requirements
  * bash

### Build and preview your documentation site

Please follow these steps to build and preview a local copy of the documentation site.

1. Check out (clone) a copy of this repository somewhere on your own computer.
2. If you are working on a branch other than `main`, switch that branch now.
3. From your local repository's working directory, run `make serve`.
4. Open [localhost:8080](http://localhost:8080) in a web browser.

## Continuous Integration Policies

## Documentation Workflow

Documentation should be updated as follows:

1. Users open [new issues](https://github.com/nino-kin/craft/issues/new) to request documentation updates.
2. These issues could include correcting inaccuracies or suggesting new topics to be added.
3. Document owners triage open issues and submit pull requests to address them.

We use Antora for documentation. Antora is the multi-repository documentation site generator for tech writers who love writing in AsciiDoc.

## Usage

Preparation

* Set up a `.gitmessage` as a commit template

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
