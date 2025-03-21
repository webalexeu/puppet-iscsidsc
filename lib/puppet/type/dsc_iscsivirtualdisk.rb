require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'dsc_iscsivirtualdisk',
  dscmeta_resource_friendly_name: 'iSCSIVirtualDisk',
  dscmeta_resource_name: 'DSC_iSCSIVirtualDisk',
  dscmeta_module_name: 'iSCSIDsc',
  dscmeta_module_version: '2.0.0',
  docs: 'The DSC iSCSIVirtualDisk resource type.
         Automatically generated from version 2.0.0',
  features: ['simple_get_filter', 'canonicalize'],
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
    dsc_disktype: {
      type: "Optional[Enum['Dynamic', 'Fixed', 'Differencing']]",
      desc: 'Specifies the type of the VHDX.',

      mandatory_for_get: false,
      mandatory_for_set: false,
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
    dsc_physicalsectorsizebytes: {
      type: "Optional[Enum['512', '4096']]",
      desc: 'Specifies the physical sector size, in bytes, for the VHDX.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'UInt32',
      mof_is_embedded: false,
    },
    dsc_ensure: {
      type: "Optional[Enum['Present', 'Absent']]",
      desc: 'Ensures that Virtual Disk is either Absent or Present.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_logicalsectorsizebytes: {
      type: "Optional[Enum['512', '4096']]",
      desc: 'Specifies the logical sector size, in bytes, for the VHDX.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'UInt32',
      mof_is_embedded: false,
    },
    dsc_description: {
      type: 'Optional[String]',
      desc: 'Specifies the description for the iSCSI virtual disk.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_parentpath: {
      type: 'Optional[String]',
      desc: 'Specifies the parent virtual disk path if the VHDX is a differencing disk.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_blocksizebytes: {
      type: 'Optional[Integer[0, 4294967295]]',
      desc: 'Specifies the block size, in bytes, for the VHDX.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'UInt32',
      mof_is_embedded: false,
    },
    dsc_path: {
      type: 'String',
      desc: 'Specifies the path of the VHDX file that is associated with the iSCSI virtual disk.',
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_sizebytes: {
      type: 'Optional[Integer[0, 18446744073709551615]]',
      desc: 'Specifies the size, in bytes, of the iSCSI virtual disk.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'UInt64',
      mof_is_embedded: false,
    },
  },
)
