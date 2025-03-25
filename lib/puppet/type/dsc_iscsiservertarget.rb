require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'dsc_iscsiservertarget',
  dscmeta_resource_friendly_name: 'iSCSIServerTarget',
  dscmeta_resource_name: 'DSC_iSCSIServerTarget',
  dscmeta_module_name: 'iSCSIDsc',
  dscmeta_module_version: '2.0.0',
  docs: 'The DSC iSCSIServerTarget resource type.
         Automatically generated from version 2.0.0',
  features: ['simple_get_filter', 'canonicalize', 'custom_insync'],
  attributes: {
    name: {
      type:      'String',
      desc:      'Description of the purpose for this resource declaration.',
      behaviour: :namevar,
    },
    validation_mode: {
      type:      'Enum[property, resource]',
      desc:      'Whether to check if the resource is in the desired state by property (default) or using Invoke-DscResource in Test mode (resource).',
      behaviour: :parameter,
      default:   'property',
    },
    dsc_timeout: {
      type:     'Optional[Integer]',
      desc:     'The maximum time in seconds to wait for the DSC resource to complete.',
      behaviour: :parameter,
    },
    dsc_targetname: {
      type: 'String',
      desc: 'Specifies the name of the iSCSI target.',
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_psdscrunascredential: {
      type: 'Optional[Struct[{ user => String[1], password => Sensitive[String[1]] }]]',
      desc: ' ',
      behaviour: :parameter,
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'PSCredential',
      mof_is_embedded: true,
    },
    dsc_initiatorids: {
      type: 'Array[String]',
      desc: 'Specifies the iSCSI initiator identifiers (IDs) to which the iSCSI target is assigned.',

      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String[]',
      mof_is_embedded: false,
    },
    dsc_ensure: {
      type: "Optional[Enum['Present', 'Absent']]",
      desc: 'Ensures that Server Target is either Absent or Present.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_isnsserver: {
      type: 'Optional[String]',
      desc: 'Specifies the name of an iSNS Server to register this Server Target with.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_paths: {
      type: 'Array[String]',
      desc: 'Specifies the path of the virtual hard disk (VHD) files that are associated with the Server Target.',

      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String[]',
      mof_is_embedded: false,
    },
  },
)
