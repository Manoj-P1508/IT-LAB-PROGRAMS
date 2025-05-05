#!"C:\Strawberry\perl\bin\perl.exe"

use strict;
use warnings;
use CGI qw(:standard);

print "Content-type: text/html\n\n";

print "<html><head><title>Greeting Page</title></head><body>";

print "<h1>Greetings!</h1>";

my $p = param("p") || "";  

if ($p) 
{
	    my @greetings = ("Good morning", "Welcome", "How are you doing?", "Hello!");
 	    my $i = int rand @greetings;    
    	    print "<p><strong>Hi $p, $greetings[$i]!</strong></p>";
}

print qq(
    <form method="GET">
        <label for="p">Username: </label>
        <input type="text" name="p" id="p">
        <input type="submit" value="Submit">
    </form>
);

print "</body></html>";


# Save your script as greet.pl
# Run Xampp app and start apache server
# Put file in: C:\xampp\cgi-bin\greet.pl
# Run Perl command line Choose the folder by changing the directory
# Execute program in command line by giving program name .pl
# If there is no error Execute this program in browser http://localhost/cgi-bin/greet.pl
