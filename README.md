# GildedRose Kata - PHP Version

## Installation

The kata uses:

- Docker
- Docker compose plugin
- GNU make

Recommended:

- [Git](https://git-scm.com/downloads)

See [GitHub cloning a repository](https://help.github.com/en/articles/cloning-a-repository) for details on how to
create a local copy of this project on your computer.

```sh
git clone git@github.com:Redominus/crafters15-php.git
```

or

```shell script
git clone https://github.com/Redominus/crafters15-php.git
```

Install all the dependencies using docker

```shell script
cd ./crafters15-php
make install
```

## Dependencies

Everything is handled by docker! 

## Folders

- `src` - contains the two classes:
    - `Item.php` - this class should not be changed
    - `GildedRose.php` - this class needs to be refactored, and the new feature added
- `tests` - contains the tests
    - `GildedRoseTest.php` - starter test.
        - Tip: ApprovalTests has been included as a dev dependency, see the PHP version of
          the [Theatrical Players Refactoring Kata](https://github.com/emilybache/Theatrical-Players-Refactoring-Kata/)
          for an example
- `Fixture`
    - `texttest_fixture.php` this could be used by an ApprovalTests, or run from the command line

## Fixture

To run the fixture from the php directory:

```shell
make run-fixture days=10
```

Change **10** to the required days.

## Testing

PHPUnit is configured for testing, a composer script has been provided. To run the unit tests, from the root of the PHP
project run:

```shell script
make tests
```

### Tests with Coverage Report

To run all test and generate a html coverage report run:

```shell script
make test-coverage
```

The test-coverage report will be created in /builds, it is best viewed by opening /builds/**index.html** in your
browser.


## Code Standard

Easy Coding Standard (ECS) is configured for style and code standards, **PSR-12** is used. The current code is not upto
standard!

### Check Code

To check code, but not fix errors:

```shell script
make check-cs
``` 

### Fix Code

ECS provides may code fixes, automatically, if advised to run --fix, the following script can be run:

```shell script
make fix-cs
```

## Static Analysis

PHPStan is used to run static analysis checks:

```shell script
make phpstan
```

**Happy coding**!
