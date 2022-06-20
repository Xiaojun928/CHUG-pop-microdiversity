#!/usr/bin/perl -w

open IN1,"M1M2";
my @gnm1 = <IN1>;
close IN1;

open IN2,"M3M4M5";
my @gnm2 = <IN2>;
close IN2;

chomp @gnm1;
chomp @gnm2;
my @gnms; push @gnms,@gnm1; push @gnms,@gnm2;


my @list = `ls *.nucalign_re`;
foreach my $file_name(@list)
{
	open IN, "$file_name";
	while(<IN>)
	{
        	chomp;
	        if(/>(MSL\S+)_\d+/)#change according to your data
	        {
			$line=<IN>;
			chomp $line;
			$seq{$1} = $line;
		}
	}
	close IN;
		my ($file) = $file_name =~ /(\S+)\.nucalign_re/;
		open OUT,">$file.arp.tmp";
		print OUT "    SampleName=\"M1M2\"\n";
		print OUT "    SampleSize= 3\n"; #change according to your data
		print OUT "    SampleData= {\n";
		foreach my $g(@gnm1)
		{
			print OUT "        $g 1     ".$seq{$g}."\n";
		}
		print OUT "    }\n";

		print OUT "    SampleName=\"M3M4M5\"\n";
		print OUT "    SampleSize= 30\n"; #change according to your data
		print OUT "    SampleData= {\n";
		foreach my $g(@gnm2)
		{
			print OUT "        $g 1     ".$seq{$g}."\n";
		}
		print OUT "    }\n";
}


