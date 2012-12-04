#!/usr/bin/perl
####################################
# xxxxxx
# chmod +x xxxx.sh && ./xxxx.sh
####################################
clear

#The folder on the remote system that must be used to store the data
$backup_folder = '/home/ra/Backup'; #Final '/' must NOT be there.
# The user for whom we have set up the key based login
$backup_user = 'ra';
# The IP address/domain name of the remote system. currently my rasperry pi
$backup_server = '192.168.1.5';

use File::Basename;
my $config_file = dirname($0) . "/rsyncnetworkbackup.config";
my @all_locations = removeComments(getFileContents($config_file));

foreach my $folder_locations (@all_locations) {
	my($folder,$backup_location) = split(/\s+/,$folder_locations);

	print "Backing up $folder to $backup_location ... ";
	`rsync -avze ssh $folder $backup_user\@$backup_server:\"$backup_folder/$backup_location\"`;
	print "Done\n";
}

sub getFileContents {
	my $file = shift;
	my @lines;

	open (FILE,$file) || die("Can't open '$file': $!");

	@lines=<FILE>;
	close(FILE);
	return @lines;
}

sub removeComments {
	my @lines = @_;

	@cleaned = grep(!/^\s*#/, @lines); #Remove Comments
	@cleaned = grep(!/^\s*$/, @cleaned); #Remove Empty lines

	return @cleaned;
}
