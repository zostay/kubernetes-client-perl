
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
package Kubernetes::Object::RuntimeRawExtension;

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
#RawExtension is used to hold extensions in external versions.  To use this, make a field which has RawExtension as its type in your external, versioned struct, and Object in your internal struct. You also need to register your various plugin types.  // Internal package: type MyAPIObject struct {  runtime.TypeMeta &#x60;json:\&quot;,inline\&quot;&#x60;  MyPlugin runtime.Object &#x60;json:\&quot;myPlugin\&quot;&#x60; } type PluginA struct {  AOption string &#x60;json:\&quot;aOption\&quot;&#x60; }  // External package: type MyAPIObject struct {  runtime.TypeMeta &#x60;json:\&quot;,inline\&quot;&#x60;  MyPlugin runtime.RawExtension &#x60;json:\&quot;myPlugin\&quot;&#x60; } type PluginA struct {  AOption string &#x60;json:\&quot;aOption\&quot;&#x60; }  // On the wire, the JSON will look something like this: {  \&quot;kind\&quot;:\&quot;MyAPIObject\&quot;,  \&quot;apiVersion\&quot;:\&quot;v1\&quot;,  \&quot;myPlugin\&quot;: {   \&quot;kind\&quot;:\&quot;PluginA\&quot;,   \&quot;aOption\&quot;:\&quot;foo\&quot;,  }, }  So what happens? Decode first uses json or yaml to unmarshal the serialized data into your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked. The next step is to copy (using pkg/conversion) into the internal struct. The runtime package&#39;s DefaultScheme has conversion functions installed which will unpack the JSON stored in RawExtension, turning it into the correct object type, and storing it in the Object. (TODO: In the case where the object is of an unknown type, a runtime.Unknown object will be created and stored.)
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
'RawExtension is used to hold extensions in external versions.  To use this, make a field which has RawExtension as its type in your external, versioned struct, and Object in your internal struct. You also need to register your various plugin types.  // Internal package: type MyAPIObject struct {  runtime.TypeMeta &#x60;json:\&quot;,inline\&quot;&#x60;  MyPlugin runtime.Object &#x60;json:\&quot;myPlugin\&quot;&#x60; } type PluginA struct {  AOption string &#x60;json:\&quot;aOption\&quot;&#x60; }  // External package: type MyAPIObject struct {  runtime.TypeMeta &#x60;json:\&quot;,inline\&quot;&#x60;  MyPlugin runtime.RawExtension &#x60;json:\&quot;myPlugin\&quot;&#x60; } type PluginA struct {  AOption string &#x60;json:\&quot;aOption\&quot;&#x60; }  // On the wire, the JSON will look something like this: {  \&quot;kind\&quot;:\&quot;MyAPIObject\&quot;,  \&quot;apiVersion\&quot;:\&quot;v1\&quot;,  \&quot;myPlugin\&quot;: {   \&quot;kind\&quot;:\&quot;PluginA\&quot;,   \&quot;aOption\&quot;:\&quot;foo\&quot;,  }, }  So what happens? Decode first uses json or yaml to unmarshal the serialized data into your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked. The next step is to copy (using pkg/conversion) into the internal struct. The runtime package&#39;s DefaultScheme has conversion functions installed which will unpack the JSON stored in RawExtension, turning it into the correct object type, and storing it in the Object. (TODO: In the case where the object is of an unknown type, a runtime.Unknown object will be created and stored.)',
        class    => 'RuntimeRawExtension',
        required => [],                      # TODO
    }
);

__PACKAGE__->method_documentation(
    {
        'raw' => {
            datatype  => 'string',
            base_name => 'Raw',
            description =>
              'Raw is the underlying serialization of this object.',
            format    => '',
            read_only => '',
        },
    }
);

__PACKAGE__->openapi_types(
    {
        'raw' => 'string'
    }
);

__PACKAGE__->attribute_map(
    {
        'raw' => 'Raw'
    }
);

__PACKAGE__->mk_accessors( keys %{ __PACKAGE__->attribute_map } );

1;
