use strict;
use warnings;

open my $train, ">./training.ctl";
open my $test, ">./testing.ctl";
my @png = glob "./*/*/*.jpg";
my $id = 0;
for my $png(@png){
  $png =~ /(training|testing)\/(\w+)\/(\w+)\.jpg/;
  my $file;
  my $index;
  if ($1 eq "training" ){
      $file = $train;
  }
  else{
      $file = $test;
  }
  if ($2 eq "cryptotympana_facialis"){
      $index = 0;
  }
  else{
      $index = 1;
  }
  printf $file "%d\t%d\t./%s/%s/%s.jpg\n", $id++ , $index, $1 , $2, $3;
}

close $train;
close $test;

