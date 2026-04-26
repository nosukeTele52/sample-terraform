# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a learning repository following the [Terraform for Beginners](https://labex.io/ja/courses/terraform-for-beginners) course on LabEx. Terraform configurations are organized by chapter under `terraform/`.

## Running Terraform

Terraform is executed inside a Docker container (no local Terraform install required):

```sh
# Build the image and open an interactive shell
./exe.sh
```

This builds `my-terraform:latest` from the Dockerfile (based on `hashicorp/terraform:latest`), copies the `terraform/` directory into `/workspace` inside the container, and drops you into a shell.

Inside the container, navigate to the chapter directory and run standard Terraform commands:

```sh
cd chapter3
terraform init
terraform plan
terraform apply
terraform destroy
```

## Repository Structure

- `terraform/chapterN/main.tf` — one `main.tf` per chapter; each chapter is a self-contained Terraform configuration.
- `Dockerfile` — wraps `hashicorp/terraform:latest`; the entrypoint is `/bin/sh` so the container is used interactively.
- `exe.sh` — convenience script to build the image and launch the container.

## Chapter Notes

- **chapter2** — configures the `hashicorp/local` provider (v2.4.0); no resources defined yet.
- **chapter3** — creates a local file (`hello.txt`) via the `local_file` resource; demonstrates the basic resource block syntax.
