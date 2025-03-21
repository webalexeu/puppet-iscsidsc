require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'dsc_iscsiinitiator',
  dscmeta_resource_friendly_name: 'iSCSIInitiator',
  dscmeta_resource_name: 'DSC_iSCSIInitiator',
  dscmeta_module_name: 'iSCSIDsc',
  dscmeta_module_version: '2.0.0',
  docs: 'The DSC iSCSIInitiator resource type.
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
    dsc_isdatadigest: {
      type: 'Optional[Boolean]',
      desc: 'Enables data digest when the initiator logs into the target portal.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_targetportaladdress: {
      type: 'String',
      desc: 'Specifies the IP address or DNS name of the target portal.',

      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_ismultipathenabled: {
      type: 'Optional[Boolean]',
      desc: 'Indicates that the initiator has enabled Multipath I/O (MPIO) and it will be used when logging into the target portal.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_reporttopnp: {
      type: 'Optional[Boolean]',
      desc: 'Specifies that the operation is reported to PNP.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
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
    dsc_isnsserver: {
      type: 'Optional[String]',
      desc: 'Specifies the name of an iSNS Server to register this Initiator with.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_sessionidentifier: {
      type: 'Optional[String]',
      desc: 'This is the current session identifier for this target session.',
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_isheaderdigest: {
      type: 'Optional[Boolean]',
      desc: 'Enables header digest when the initiator logs into the target portal. By not specifying this parameter, the digest setting is determined by the initiator kernel mode driver.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_connectionidentifier: {
      type: 'Optional[String]',
      desc: 'This is the current connection identifier for this target connection.',
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_ispersistent: {
      type: 'Optional[Boolean]',
      desc: 'Specifies that the session is to be automatically connected after each restart.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_ensure: {
      type: "Optional[Enum['Present', 'Absent']]",
      desc: 'Ensures that Target is Absent or Present.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_authenticationtype: {
      type: "Optional[Enum['None', 'OneWayCHAP', 'MutualCHAP']]",
      desc: 'Specifies the type of authentication to use when logging into the target.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_chapsecret: {
      type: 'Optional[String]',
      desc: 'Specifies the CHAP secret to use when establishing a connection authenticated by using CHAP.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_targetportalportnumber: {
      type: 'Optional[Integer[0, 65535]]',
      desc: 'Specifies the TCP/IP port number for the target portal.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'UInt16',
      mof_is_embedded: false,
    },
    dsc_nodeaddress: {
      type: 'String',
      desc: 'Represents the IQN of the discovered target.',
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_isdiscovered: {
      type: 'Optional[Boolean]',
      desc: 'Is the target discovered in this session.',
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_initiatorinstancename: {
      type: 'Optional[String]',
      desc: 'The name of the initiator instance that the iSCSI initiator service uses to send SendTargets requests to the target portal.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_chapusername: {
      type: 'Optional[String]',
      desc: 'Specifies the user name to use when establishing a connection authenticated by using Mutual CHAP.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_initiatornodeaddress: {
      type: 'Optional[String]',
      desc: 'The Initiator Node address assigned to this session.',
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_targetnodeaddress: {
      type: 'Optional[String]',
      desc: 'The Target Node address assigned to this session.',
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_isconnected: {
      type: 'Optional[Boolean]',
      desc: 'Is the target connected to the server.',
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_initiatorportaladdress: {
      type: 'Optional[String]',
      desc: 'Specifies the IP address associated with the target portal.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
  },
)
