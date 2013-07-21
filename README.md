# My personal set of git hooks

These hooks automate some tasks with the help of git.

## Installation

    git clone git@github.com:greg0ire/git_template.git ~/.git_template

## Configuration

    git config --global init.templatedir '~/.git_template'

## What's inside ?

For the moment, php hooks only.

### Exuberant Ctags hook

Updates .git/tags file by scanning the project with the ctags command.

### Composer hook

This set of scripts monitor `composer.lock` changes and updates your vendor
dependencies when appropriate.

### Sismo hook

This hook makes [Sismo](http://sismo.sensiolabs.org/) run each time you commit.

### Doctrine hook

This hooks runs the `doctrine:schema:validate` task of a Symfony project and
updates / migrates your database depending on the presence of a
`doctrine-migrations` folder in your vendor directory.

## Usage

Start by creating your hooksrc file:

    mv .git/hooks/hooksrc.sample .git/hooks/hookrc
    
Then edit it to add plugins you wish to activate. The sample file contains the
ctags and composer hooks by default.

## Source

Inspired by [Tim Pope](http://tbaggery.com/)
