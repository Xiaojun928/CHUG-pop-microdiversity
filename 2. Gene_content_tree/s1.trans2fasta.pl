#!/usr/bin/perl -w 
#transfer matrix data into fasta format
open IN,"accessory_gene_content.txt" || die "$!"; # matrix of gene presence (1) and absence (0)
my $head = <IN>;
chomp $head;
my @gnms = split("\t",$head);
shift @gnms;

my $len_sites = 0;
my %hash;
while(<IN>)
{
		chomp;
		my @sites = split("\t");
		shift @sites;
		for(my $j=0;$j<=$#sites;$j++)
		{
			$hash{$gnms[$j]} .= $sites[$j];
		}
		$len_sites++;
}
close IN;

my $gnm_size = scalar(@gnms);
open OUT,">acc_content.fasta";
#print OUT $gnm_size." $len_sites\n";
foreach(@gnms)
{
	print OUT ">".$_."\n".$hash{$_}."\n";
}
close OUT;
