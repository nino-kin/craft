# Development Policy

This repository hosts policy documentation that applies to our general development.

## Overview

This _README_ describes the following sections:

* [Getting Started](#getting-started) explains how to build and preview the documentation site in a Docker container.

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

