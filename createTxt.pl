#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

open(my $fh, '>', 'yourname.txt') or die;
print $fh "Name: Nor Adil Bin Ali,\n";
print $fh "Stud Id: 2014988363,\n";
print $fh "Address: AU3/16 Taman Desa Keramat.\n";
close $fh;
print "Create a file yourname.txt done\n";
print "\n";

# Read yourname.txt & write to yourname.bin
print "The following data is read from yourname.txt.\n";
print "\n";
open(DATA, "<yourname.txt") or die "Couldn't open file file.txt, $!";
open (DATA2, ">yourname.bin") or die;
while(<DATA>){
   print "$_";
   print DATA2 $_;
}
close(DATA2);

print "\n";


# Read yourname.bin & write to last.txt
print "The following data is read from yourname.bin and saved in last.txt.\n";
print "\n";open (DATA2, "<yourname.bin") or die;
open (LAST, ">last.txt") or die;
while (<DATA2>){
   print "$_";
   print LAST $_;
}
close(LAST);





