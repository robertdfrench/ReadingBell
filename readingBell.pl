#!/usr/bin/perl
if (scalar(@ARGV) < 3) {
	print "Usage: \n";
	print "\t $0 [start_page] [num_pages_to_read] [num_seconds_per_page]\n";
	exit(0);
}
$start_page = $ARGV[0];
$num_pages = $ARGV[1];
$seconds_per_page = $ARGV[2];

print "Reading from $start_page to " . ($start_page + $num_pages - 1) . " in " . ($seconds_per_page * $num_pages) . " seconds.\n";

for(my $offset = 0; $offset < $num_pages; $offset++) {
	print "\aYou should be on page " . ($start_page + $offset) . "\n";
	sleep($seconds_per_page);
}
print "\a\a\a STOP READING \a\a\a\n";
