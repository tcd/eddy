# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<!-- ## master (unreleased) -->

## 0.2.0 (2019-12-26)

Version(s) 0.2.x exist to make it easier for me to test Eddy in other projects and figure out how best to move forward with development.

All code should be considered Work In Progress.

While the API is still changing, enough code exists that EDI documents can currently be written with Eddy (I wouldn't recommend use in production environments yet).

### Added

- Top level configuration (`Eddy.config`).
- Very basic code for reading EDI documents.
- Base code for writing EDI documents.
    - Ruby classes modeling Data Elements, Segments, Transaction Sets, Functional Groups, & Interchanges.
    - Loops are still WIP
- Schemas for describing & defining EDI Transaction Sets, Segments, and Data Elements.
    - JSON Schema files for validation using [davishmcclurg/json_schemer](https://github.com/davishmcclurg/json_schemer).
    - Code for generating Ruby classes from JSON/YAML EDI definition files using [tcd/ginny](https://github.com/tcd/ginny).
    - A simple CLI to streamline code generation (WIP).
- [todo.txt](https://github.com/todotxt/todo.txt) file.
- Rails generators for easy integration with Ruby on Rails projects.

## 0.1.0 (2019-11-26)

Initial release.
