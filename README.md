# Eddy

[![Build Status](https://travis-ci.org/tcd/eddy.svg?branch=master)][travis-ci]
[![Coverage Status](https://coveralls.io/repos/github/tcd/eddy/badge.svg?branch=master)][coveralls]
[![License](https://img.shields.io/github/license/tcd/eddy)][license]
[![Documentation](http://img.shields.io/badge/docs-rubydoc.info-blue.svg)][docs]

[travis-ci]: https://travis-ci.org/tcd/eddy
[coveralls]: https://coveralls.io/github/tcd/eddy?branch=master
[license]: https://github.com/tcd/eddy/blob/master/LICENSE.txt
[docs]: https://www.rubydoc.info/gems/eddy/0.1.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eddy'
```

And then execute:

```sh
bundle
```

### With Rails

Once installed, run

```sh
rails g eddy:install eddy:migration
rails db:migrate
```

## Validation

- Ensures values passed to `ID` elements are acceptable.
- Accepts `Time` objects for `DT` and `TM` elements.
- Makes sure element values aren't set above `max` length.
- Pads strings and numbers to ensure `min` length is met.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tcd/eddy.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Alternatives (in Ruby)

- [irobayna/stupidedi](https://github.com/irobayna/stupidedi) - Ruby API for parsing and generating ASC X12 EDI transactions
- [spiridonov/baldr](https://github.com/spiridonov/baldr) - Lightweight EDI X12 translator
- [~~mjpete3/x12~~](https://github.com/mjpete3/x12) [tcd/x12](https://github.com/tcd/x12) - A gem to handle parsing and generation of ANSI X12 documents.

### See Also

- [michaelachrisco/Electronic-Interchange-Github-Resources](https://github.com/michaelachrisco/Electronic-Interchange-Github-Resources) - List of EDI (Mostly) Github Resources
