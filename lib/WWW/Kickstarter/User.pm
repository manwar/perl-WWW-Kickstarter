
package WWW::Kickstarter::User;

use strict;
use warnings;
no autovivification;


use WWW::Kickstarter::Object qw( );


our @ISA = 'WWW::Kickstarter::Object';


sub id   { $_[0]{id} }
sub slug { $_[0]{slug} }
sub name { $_[0]{name} }


sub projects_created { my $self = shift;  return $self->ks->user_projects_created($self->id, @_); }


1;


__END__

=head1 NAME

WWW::Kickstarter::User - Kickstarter user data


=head1 SYNOPSIS

   use WWW::Kickstarter;

   ~~~


=head1 API CALLS

=head2 projects_created

   my @projects = $user->projects_created();

Fetches and returns the projects created by the specified user as L<WWW::Kickstarter::Project> objects. The project created last is returned first.

Note that the argument must be the user's numerical id (as returned by C<< $user->id >>).


=head1 ACCESSORS

=head2 id

   my $user_id = $user->id;

Returns the numerical user id of the user.


=head2 slug

   my $user_slug = $user->slug;

Returns the user's self-selected user id, or undef if not available or if it doesn't have one.


=head2 name

   my $user_name = $user->name;

Returns the user's name.


=head1 VERSION, BUGS, KNOWN ISSUES, SUPPORT, AUTHORS, COPYRIGHT & LICENSE

See L<WWW::Kickstarter>


=cut
