# Kubernetes::Object::V1alpha1VolumeAttachmentSpec

## Load the model package
```perl
use Kubernetes::Object::V1alpha1VolumeAttachmentSpec;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attacher** | **string** | Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName(). | 
**node_name** | **string** | The node that the volume should be attached to. | 
**source** | [**V1alpha1VolumeAttachmentSource**](V1alpha1VolumeAttachmentSource.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

