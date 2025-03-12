# Perl program to print 
#!/usr/bin/perl

use strict;
use warnings;

#checks to see is number is divisiable by 3 or 5
sub divisiableby_3or5 {
    my ($num) = @_; 
    return ($num % 3 == 0) || ($num % 5 == 0)
}

sub sumof_3or5 {
    my ($final_num) = @_; # Get the final number from the argument list
    my $sum = 0;

    for (my $i = 0; $i < $final_num; $i++) {
        if (divisible_by_3or5($i)) {
            $sum += $i;
        }
    }
    return $sum;
}

# prints sum
sub print_sum {
    my $final_number = 30000;
    my $result = sumof_3or5($final_number);
    print "Sum of Multiples of 3 or 5: $result\n"
}

print_sum();

