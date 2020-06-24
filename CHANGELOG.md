# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

> Versions 0.x (0.2, 0.3, 0.4, ...) exist to make it easier for me to test Eddy in other projects and figure out how best to move forward with development.
> 
> All code should be considered Work In Progress.
> 
> While the API is still changing, enough code exists that EDI documents can currently be written with Eddy (though I wouldn't recommend use in production environments yet).

<!-- ## master (unreleased) -->

## 0.9.2 (2020-07-24)

### Changed

- Update allowed values for elements `I10` and `I11`


## 0.9.1 (2020-07-23)

### Fixed

- Fix incorrect element names in `TXI` segment.


## 0.9.0 (2020-07-03)

### Added

- New Transaction Set definition:
    - 846
- New Segment definitions:
    - BIA
    - CUR
    - PER
    - QTY
    - SCH
    - SDQ
    - TXI

### Fixed

- Updated method call in `Eddy::Build::TransactionSetBuilder#build_loops`.

## 0.8.4 (2020-01-15)

### Changed

- Updated logic for generating functional group control numbers.

## 0.8.3 (2020-01-15)

### Changed

- Trim trailing newline from the return value of `Eddy::Models::Interchange#render` and `Eddy::Models::TransactionSet#render`.

## 0.8.2 (2020-01-09)

### Fixed

- Account for skipped segments when calculating `SE.NumberOfIncludedSegments`.

### Changed

- Improve messages for `NotImplementedError` exceptions raised  from `R` elements.

## 0.8.1 (2020-01-08)

### Changed

- Add `control_number` attribute to the following classes:
    - `Eddy::Models::Interchange`
    - `Eddy::Models::TransactionSet`
    - `Eddy::Models::FunctionalGroup`

## 0.8.0 (2020-01-08)

### Added

- Allow skipping of segments by setting `Eddy::Models::Segment.skip` to `true`.

## 0.7.0 (2020-01-08)

### Changed

- Allow skipping of required elements by passing `:skip` to `#value=`
- Clean up folder structure.
- Updated segment definition for `Eddy::Segments::N3`; add missing element.
- Assorted YARD fixes:
    - Updated doc comment for `Eddy::Models::Interchange#render` to include yielded params.
    - ```
      [warn]: @see tag (#1) should not be wrapped in {} (causes rendering issues): 
        in file `lib/eddy/summary/segment.rb' near line 118
      ```

## 0.6.0 (2020-01-07)

### Changed

- Updated the implementation of `Loop`.
- Renamed attribute `Loop#repeat` to `Loop#repeat_limit`
- Rename `Eddy::Schema` to `Eddy::Summary` and remove `Summary` postfix from class names, resulting in the following changes:
    - `Eddy::Schema::LoopSummary` -> `Eddy::Summary::Loop`
    - `Eddy::Schema::ElementSummary` -> `Eddy::Summary::Element`
    - `Eddy::Schema::SegmentSummary` -> `Eddy::Summary::Segment`
    - `Eddy::Schema::TransactionSetSummary` -> `Eddy::Summary::TransactionSet`
- Move the following classes into the `Eddy::Models` module:
    - `Element::*`
    - `Segment`
    - `Loop::*`
    - `FunctionalGroup`
    - `TransactionSet`
    - `Interchange`

## 0.5.1 (2020-01-06)

### Changed

- Rename attribute `loop_id` to `id`.

### Fixed

- Fix YARD issues.

## 0.5.0 (2020-01-05)

### Changed

- Updated the implementation of `Eddy::Interchange` and `Eddy::FunctionalGroup`
- Added arguments to the `initialize` methods of the following classes:
    - `Eddy::Segments::GS`
    - `Eddy::Segments::GE`
    - `Eddy::Segments::ISA`
    - `Eddy::Segments::IEA`
- Slightly modified file/folder layout.

### Removed

- `Eddy::SimpleInterchange` and its associated test.

## 0.4.0 (2020-01-05)

### Added

- Support `Eddy::Data::Persistence::ActiveRecord`.

### Changed

- Move generators to separate repo, [tcd/eddy-rails](https://github.com/tcd/eddy-rails).
- Update `Eddy.data` when `Eddy.config.persistence_method` is changed.

## 0.3.0 (2020-01-04)

### Added

- Code for generating Transaction Set classes.
- Code for writing the following transaction sets:
    - 810
    - 850
    - 855
    - 856

### Changed

- Improved messages from validation errors.
- Improved YARD comments for all EDI classes.
- Improved test coverage.

## 0.2.0 (2019-12-26)

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
