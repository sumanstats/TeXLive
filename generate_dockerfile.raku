# Generate Dockerfile with Raku



sub MAIN() {
    my $file = 'Dockerfile';
    my $texlive_version;
    my @years=2018..2020;
    my $prompt = "Which version of texlive version do you want in your Dockerfile? \n";
    if $file.IO.e {
        my $answer=prompt("$file exists. Do you want to overwrite existing $file? \n");
        if $answer ~~/:i y|yes/ {
            $texlive_version=prompt($prompt);
        } elsif $answer ~~/:i N|No/ {
            exit
        } else {
        say "I did not get what that means! :)"
        } 
    } elsif !$file.IO.e {
        $texlive_version=prompt($prompt);
    }
    if $texlive_version ~~/<@years>/ {
        my $dockerfile=qq:to/END/; 
            FROM sumankhanal/texlive-$texlive_version\:small

            RUN tlmgr option repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/$texlive_version/tlnet-final/ \\
                && tlmgr update --self \\
                && tlmgr install moderncv fontawesome5 academicons multirow arydshln
            END
        $file.IO.spurt: $dockerfile;
        say "Dockerfile generated."
    } else {
        say "Invalid year. Choose from "~ @years.join(" or ")
    }
}

