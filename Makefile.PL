# stub
sub readme_markdown_from { }
sub author_tests { }

use inc::Module::Install;

name 'Test-SharedFork';
all_from 'lib/Test/SharedFork.pm';

requires 'Test::More' => 0.88; # Test::More 0.88 is really needed

test_requires 'App::Prove';
test_requires 'Test::Requires';
test_requires 'Time::HiRes'; # workaround for redhat. https://github.com/tokuhirom/test-sharedfork/pull/3

tests 't/*.t t/*/*.t t/*/*/*.t';
author_tests 'xt';

readme_markdown_from 'lib/Test/SharedFork.pm';
WriteAll;
