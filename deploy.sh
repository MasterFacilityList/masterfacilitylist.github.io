#!/usr/bin/env bash
mkdocs gh-deploy -m "Update documentation from $(git rev-parse HEAD)"
