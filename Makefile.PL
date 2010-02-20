
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;

use File::ShareDir::Install;
install_share "share";


my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Form::Sensible::Reflector::DBIC',
                       'DISTNAME' => 'Form-Sensible-Reflector-DBIC',
                       'AUTHOR' => 'Devin Austin <dhoss@cpan.org>',
                       'ABSTRACT' => 'A Form::Sensible::Form::Reflector subclass to reflect off of DBIC schema classes',
                       'EXE_FILES' => [],
                       'VERSION' => '0.031',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'DateTime' => '""',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Data::Dumper' => '""',
                                        'Test::Simple' => '0.88',
                                        'DBIx::Class' => '""',
                                        'Form::Sensible' => '""',
                                        'Moose' => '0.93'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);

package MY;
use File::ShareDir::Install qw(postamble);


