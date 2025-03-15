# Perl program to print 
#!/usr/bin/perl

use strict;
use warnings;

# Computes the sum of even numbers in the fibonacci sequence below a upper limit
sub sum_even_fibonacci {
    my($curr,$prev,$upperlimit,$sum) = @_; # Function takes in current, previous, upper limit, and sum
    return $sum if $curr >= $upperlimit; # When current number reaches upper limit stop and return sum
    $sum += $curr if $curr % 2 == 0; # If number is even add to sum
    return sum_even_fibonacci($curr + $prev, $curr, $upperlimit, $sum);# Recursive call to compute next fibonacci number
}

# prints sum
sub print_sum {
    my ($currNum) = 2; 
    my ($prevNum) = 1; 
    my ($upperlimitNum) = 1000000000; 
    my ($sumNum) = 0;
    my $result = sum_even_fibonacci($currNum, $prevNum, $upperlimitNum, $sumNum);
    print "Sum of Even Fibonacci Numbers: $result\n"
}

print_sum();
