use strict;
use warnings;

open my $train, ">./training.ctl";
open my $test, ">./testing.ctl";
my @png = glob "./testing/*/*.jpg ./training/*/*.jpg";
my $label_index = 0;
my $image = {};
my $label = {};
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
  if (!defined ($image->{$1})){
    $image->{$1} = 0; 
  }
  else{
    $image->{$1} = $image->{$1} + 1; 
  }
  

  if (!defined ($label->{$2})){
    $label->{$2} = $label_index++; 
  } 
  printf $file "%d\t%d\t./%s/%s/%s.jpg\n", $image->{$1} , $label->{$2}, $1 , $2, $3;
}
close $train;
close $test;

