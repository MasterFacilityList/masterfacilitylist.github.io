#!/usr/bin/env bash
mkdocs gh-deploy --commit-message "Update documentation from $(git rev-parse HEAD)"
