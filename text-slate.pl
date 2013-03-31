#!/usr/bin/perl

use Text::Xslate;

    my $tx = Text::Xslate->new(
    syntax     => 'TTerse',
    tag_start  => '{{',
    tag_end    => '}}',
    line_start => undef,
);
print $tx->render_string('Hello, {{lang}} world!', { lang => 'Xslate' });

my $dir;
 
    my %common_config = ( cache_dir => $dir, module => \@module );
    my %xslate = (
        ja => Text::Xslate->new( path => [ $template_ja ], %common_config ),
        en => Text::Xslate->new( path => [ $template_en ], %common_config ),
        ro => Text::Xslate->new( path => [ $template_ro ], %common_config ),
    );
    #$xslate{$lang}->render(...);    
    
