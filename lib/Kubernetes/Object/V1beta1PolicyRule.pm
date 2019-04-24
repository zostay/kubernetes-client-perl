
=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1.13.5

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package Kubernetes::Object::V1beta1PolicyRule;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base ( "Class::Accessor", "Class::Data::Inheritable" );

#
#PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1.13.5

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata( 'attribute_map'        => {} );
__PACKAGE__->mk_classdata( 'openapi_types'        => {} );
__PACKAGE__->mk_classdata( 'method_documentation' => {} );
__PACKAGE__->mk_classdata( 'class_documentation'  => {} );

# new object
sub new {
    my ( $class, %args ) = @_;

    my $self = bless {}, $class;

    foreach my $attribute ( keys %{ $class->attribute_map } ) {
        my $args_key = $class->attribute_map->{$attribute};
        $self->$attribute( $args{$args_key} );
    }

    return $self;
}

# return perl hash
sub to_hash {
    return decode_json( JSON->new->convert_blessed->encode(shift) );
}

# used by JSON for serialization
sub TO_JSON {
    my $self  = shift;
    my $_data = {};
    foreach my $_key ( keys %{ $self->attribute_map } ) {
        if ( defined $self->{$_key} ) {
            $_data->{ $self->attribute_map->{$_key} } = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ( $self, $hash ) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ( $_key, $_type ) = each %{ $self->openapi_types } ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ( $_type =~ /^array\[/i ) {    # array
            my $_subclass = substr( $_type, 6, -1 );
            my @_array    = ();
            foreach my $_element ( @{ $hash->{$_json_attribute} } ) {
                push @_array, $self->_deserialize( $_subclass, $_element );
            }
            $self->{$_key} = \@_array;
        }
        elsif ( exists $hash->{$_json_attribute} )
        {                                 #hash(model), primitive, datetime
            $self->{$_key} =
              $self->_deserialize( $_type, $hash->{$_json_attribute} );
        }
        else {
            $log->debugf( "Warning: %s (%s) does not exist in input hash\n",
                $_key, $_json_attribute );
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ( $self, $type, $data ) = @_;
    $log->debugf( "deserializing %s with %s", Dumper($data), $type );

    if ( $type eq 'DateTime' ) {
        return DateTime->from_epoch( epoch => str2time($data) );
    }
    elsif ( grep( /^$type$/, ( 'int', 'double', 'string', 'boolean' ) ) ) {
        return $data;
    }
    else {    # hash(model)
        my $_instance = eval "Kubernetes::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}

__PACKAGE__->class_documentation(
    {
        description =>
'PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.',
        class    => 'V1beta1PolicyRule',
        required => [],                    # TODO
    }
);

__PACKAGE__->method_documentation(
    {
        'api_groups' => {
            datatype  => 'ARRAY[string]',
            base_name => 'apiGroups',
            description =>
'APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.',
            format    => '',
            read_only => '',
        },
        'non_resource_ur_ls' => {
            datatype  => 'ARRAY[string]',
            base_name => 'nonResourceURLs',
            description =>
'NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as \&quot;pods\&quot; or \&quot;secrets\&quot;) or non-resource URL paths (such as \&quot;/api\&quot;),  but not both.',
            format    => '',
            read_only => '',
        },
        'resource_names' => {
            datatype  => 'ARRAY[string]',
            base_name => 'resourceNames',
            description =>
'ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.',
            format    => '',
            read_only => '',
        },
        'resources' => {
            datatype  => 'ARRAY[string]',
            base_name => 'resources',
            description =>
'Resources is a list of resources this rule applies to.  &#39;*&#39; represents all resources in the specified apiGroups. &#39;*/foo&#39; represents the subresource &#39;foo&#39; for all resources in the specified apiGroups.',
            format    => '',
            read_only => '',
        },
        'verbs' => {
            datatype  => 'ARRAY[string]',
            base_name => 'verbs',
            description =>
'Verbs is a list of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule.  VerbAll represents all kinds.',
            format    => '',
            read_only => '',
        },
    }
);

__PACKAGE__->openapi_types(
    {
        'api_groups'         => 'ARRAY[string]',
        'non_resource_ur_ls' => 'ARRAY[string]',
        'resource_names'     => 'ARRAY[string]',
        'resources'          => 'ARRAY[string]',
        'verbs'              => 'ARRAY[string]'
    }
);

__PACKAGE__->attribute_map(
    {
        'api_groups'         => 'apiGroups',
        'non_resource_ur_ls' => 'nonResourceURLs',
        'resource_names'     => 'resourceNames',
        'resources'          => 'resources',
        'verbs'              => 'verbs'
    }
);

__PACKAGE__->mk_accessors( keys %{ __PACKAGE__->attribute_map } );

1;
