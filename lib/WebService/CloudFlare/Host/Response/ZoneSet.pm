package WebService::CloudFlare::Host::Response::ZoneSet;
use Moose;
with 'WebService::CloudFlare::Host::Role::Response';

sub res_map {
    return (
        'result'     => 'result',
        'msg'        => 'msg',
        'action'     => 'request:act',
        'zone_name'  => 'response:zone_name',
        'resolving'  => 'response:resolving_to',
        'forwarding' => 'response:hosted_cnames',
        'hosting'    => 'response:forward_tos',
    );
}



has [qw/ result action /] 
    => ( is => 'rw', isa => 'Str', required => 1 );

has [qw/ msg zone_name resolving_to /] 
    => ( is => 'rw', isa => 'Str', required => 0 );

has [qw/ forward hosted /]
    => ( is => 'rw', isa => 'HashRef[Str]', required => 0 );

1;