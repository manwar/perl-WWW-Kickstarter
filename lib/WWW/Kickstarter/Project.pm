
package WWW::Kickstarter::Project;

use strict;
use warnings;
no autovivification;


use WWW::Kickstarter::Object qw( );


our @ISA = 'WWW::Kickstarter::Object';


sub id            { $_[0]{id} }
sub slug          { $_[0]{slug} }
sub name          { $_[0]{name} }
sub url           { $_[0]{urls}{web}{project} }
sub blurb         { $_[0]{blurb} }
sub launched_at   { $_[0]{launched_at} }    # When project started
sub deadline      { $_[0]{deadline} }       # When project ends
sub backers_count { $_[0]{backers_count} }
sub goal          { $_[0]{goal} }
sub pledged       { $_[0]{pledged} }

sub category_id   { $_[0]{category}{id} }
sub category_name { $_[0]{category}{name} }

sub progress      { $_[0]{pledged} / $_[0]{goal} }
sub progress_pct  { sprintf "%.0f", $_[0]{pledged} / $_[0]{goal} * 100 }
   

1;


__END__

=head1 NAME

WWW::Kickstarter::Project - Kickstarter project data


=head1 SYNOPSIS

   use WWW::Kickstarter;

   ~~~


=head1 API CALLS

~~~


=head1 ACCESSORS

=head2 id            

   my $project_id = $project->id;

Returns the numerical project id of the project.


=head2 slug          

   my $project_slug = $project->slug;

Returns the projects's creator-selected project id, or undef if it doesn't have one.


=head2 name          

   my $project_name = $project->name;

Returns the project's name.


=head2 url           

   my $project_url = $project->url;

Returns the web address of the project's main page.


=head2 blurb         

   my $project_blurb = $project->blurb;

Returns a short plain-text description of the project.


=head2 launched_at   

   my $project_launched_at = $project->launched_at;

Returns the epoch timestamp (as returned by C<L<perlfunc/time>>) of the project's launch.


=head2 deadline      

   my $project_deadline = $project->deadline;

Returns the epoch timestamp (as returned by C<L<perlfunc/time>>) of the project's deadline.


=head2 backers_count 

   my $project_backers_count = $project->backers_count;

Returns the number of backers the project has.


=head2 goal          

   my $project_goal = $project->goal;

Returns the amount of USD the project is attempting to raise.


=head2 pledged       

   my $project_pledged = $project->pledged;

Returns the amount of USD that has been pledged to the project.


=head2 category_id   

   my $project_category_id = $project->category_id;

Returns the id of the category of the project.


=head2 category_name 

   my $project_category_name = $project->category_name;

Returns the name of the category of the project.


=head2 progress      

   my $project_progress = $project->progress;

Returns the progress towards the project's goal. E<gt>= 1.00: Goal reached.


=head2 progress_pct  

   my $project_progress_pct = $project->progress_pct;

Returns the progress towards the project's goal as a percent. E<gt>= 100: Goal reached.


=head1 VERSION, BUGS, KNOWN ISSUES, SUPPORT, AUTHORS, COPYRIGHT & LICENSE

See L<WWW::Kickstarter>


=cut
