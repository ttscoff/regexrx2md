# RegExRX2MD

[![RubyGems.org](https://img.shields.io/gem/v/regexrx2md)](https://rubygems.org/gems/regexrx2md)

Convert [RegExRX](https://apps.apple.com/us/app/regexrx/id498370702?mt=12) file to Markdown

## Description

Converts native RegExRX documents to Markdown files containing code snippets that work with [Snibbets](https://brettterpstra.com/projects/snibbets/) or any Markdown viewer.

## Installation

```
$ gem install regexrx2md
```

If you run into errors, try:

```
$ gem install --user-install regexrx2md
```

## Development and Testing

### Quickstart

```
$ git clone https://github.com/ttscoff/regexrx2md.git
$ cd regexrx2md
$ bundle install
```

Run the command below

```
$ bundle exec bin/regexrx2md
```

Open an interactive ruby console with

```
$ bundle exec rake console
```

Primary development tasks are defined as [rake] tasks in the `Rakefile`
and available via `rake`.
View them with

```
$ bundle exec rake -T
```

[rake]: https://ruby.github.io/rake/

### Usage

Run `regexrx2md` in a directory containing `.regexrx` files and all matching files will be processed to Markdown files in a `markdown` subdirectory.

Options:

```
Usage: bin/regexrx2md [OPTIONS] [SOURCE FILE/DIR]

Converts RegExRx files to Markdown, optionally with template.
    If source argument is empty, process all .regexrx files in current directory.

Options:
    -o, --output-dir=DIRECTORY       Output folder
                                     Defaults to "./markdown"
    -p, --prefix=PREFIX              Prefix added before output filenames
                                     Space automatically added after prefix
    -t, --template=TEMPLATE          Use alternate ERB template
    -h, --help                       Display this screen
    -x, --example                    Output the default ERB template to STDOUT
```


### Source code

The [source code] is hosted on GitHub.
Clone the project with

```
$ git clone git@github.com:ttscoff/regexrx2md.git
```

[source code]: https://github.com/ttscoff/regexrx2md

### Requirements

You will need [Ruby] with [Bundler].

Be sure that all commands run under the correct Ruby version, e.g.,
if using [rbenv], install the correct version with

```
$ rbenv install
```

Install the development dependencies with

```
$ bundle install
```

[bundler]: https://bundler.io/
[ruby]: https://www.ruby-lang.org/
[rbenv]: https://github.com/rbenv/rbenv

### Publishing

Use [gem release] to release a new version.

Publishing may be triggered using a [workflow_dispatch on GitHub Actions].

[gem release]: https://github.com/svenfuchs/gem-release
[workflow_dispatch on github actions]: https://github.com/ttscoff/regexrx2md/actions?query=workflow%3Aversion

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/ttscoff/regexrx2md/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

## License

This Ruby gem is licensed under the MIT license.

## Warranty

This software is provided by the copyright holders and contributors "as is" and
any express or implied warranties, including, but not limited to, the implied
warranties of merchantability and fitness for a particular purpose are
disclaimed. In no event shall the copyright holder or contributors be liable for
any direct, indirect, incidental, special, exemplary, or consequential damages
(including, but not limited to, procurement of substitute goods or services;
loss of use, data, or profits; or business interruption) however caused and on
any theory of liability, whether in contract, strict liability, or tort
(including negligence or otherwise) arising in any way out of the use of this
software, even if advised of the possibility of such damage.
