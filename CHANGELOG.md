# CHANGELOG

## v0.8.0 (2016-05-18)

**Features**

- auto-create missing Rubygem bin paths to silence Fish warnings

**Improvements**

- some tests wheren't testing the expected outcome, they now do

**Fixes**

- set `GEM_PATH` correctly, Rubygems uses `:` instead of Fish' spaces as a path
  separator

- correctly reset `PATH` when running `chruby_reset`

## v0.7.2 (2016-01-19)

**Improvements**

- make 0.7.x compatible with Fish 2.2.0, as it was before

## v0.7.1 (2016-01-18)

**Fixes**

- show active Ruby version on running `chruby`

## v0.7.0 (2016-01-18)

**Features**

- update to work with latest chruby

**Improvements**

- use [Fishtape][] for tests
- update test suite to equal bash' chruby suite
- run bash' chruby in sanitised environment to prevent env variable leakage

**Fixes**

- run bash' chruby in an interactive shell to support sourcing `~/.bash_profile`

## v0.6.0 (2014-05-20)

**Features**

- use `CHRUBY_ROOT` instead of `CHRUBY_SOURCE` to define custom chruby path,
  see: 11904eb573526c14358acc1ac8c5ec25de44c6aa

**Improvements**

- reduce possible number of `chruby-bash` calls when calling `chruby` by 1
- add `CHRUBY_VERSION` global variable
- run tests on multiple Fish versions

**Fixes**

- Only run `chruby_use` through `chruby_auto` if active Ruby version doesn't
  match `.ruby-version` (thanks @dalizard)

- Work around fish-shell/fish-shell#1168 (thanks @schisamo)

## v0.5.4 (2014-04-26)

**Improvements**

- run `chruby_auto` before every command
- add tests for `chruby_auto`
- return `CHRUBY_FISH_VERSION` on `chruby --version`

**Fixes**

- run bash `chruby_auto` only once
- allow overriding ruby version using `chruby` when `.ruby-version` is present

## v0.5.3 (2014-04-25)

**Improvements**

- add tests for `chruby`, `chruby_use` and `chruby_reset`
- return correct exit code if `chruby` fails
- add missing global variables: `CHRUBY_FISH_VERSION`, `RUBIES`, `GEM_ROOT`

**Fixes**

- only set `GEM_PATH` variable if required
- use `(id -u)` instead of (non-existent) `$UID` to determine user ID

## v0.5.2 (2014-04-24)

**Fixes**

- Make chruby_auto only run on path changes and not override manual `chruby`

## v0.5.1 (2014-04-24)

**Improvements**

- Clean up files

## v0.5.0 (2014-04-23)

**Features**

- Initial commit of `chruby-fish` wrapper scripts
