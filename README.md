# 

## Table of Contents

1. [Description](#description)
1. [Requirements](#requirements)
1. [Usage](#usage)
1. [Troubleshooting](#troubleshooting)

## Description

This is an auto-generated module, using the [Puppet DSC Builder](https://www.powershellgallery.com/packages/puppet.dsc) to vendor and expose the [](https://www.powershellgallery.com/packages//2.0.0) PowerShell module's DSC resources as Puppet resources.
The _functionality_ of this module comes entirely from the vendored PowerShell resources, which are pinned at [**v2.0.0**](https://www.powershellgallery.com/packages//2.0.0).
The PowerShell module describes itself like this:

> _DSC resources for configuring Windows iSCSI Targets and Initiators._

For information on troubleshooting to determine whether any encountered problems are with the Puppet wrapper or the DSC resource, see the [troubleshooting](#troubleshooting) section below.

## Requirements

This module, like all [auto-generated Puppetized DSC modules](https://forge.puppet.com/dsc), relies on two important technologies in the Puppet stack: the [Puppet Resource API](https://puppet.com/docs/puppet/latest/create_types_and_providers_resource_api.html) and the [puppetlabs/pwshlib](https://forge.puppet.com/puppetlabs/pwshlib) Puppet module.

The Resource API provides a simplified option for writing types and providers and is responsible for how this module is structured.
The Resource API ships inside of Puppet starting with version 6.
While it is _technically_ possible to add the Resource API functionality to Puppet 5.5.x, the DSC functionality has **not** been tested in this setup.
For more information on the Resource API, review the [documentation](https://puppet.com/docs/puppet/latest/about_the_resource_api.html).

The module also depends on the pwshlib module.
This Puppet module includes two important things: the ruby-pwsh library for running PowerShell code from ruby and the base provider for DSC resources, which this module leverages.

All of the actual work being done to call the DSC resources vendored with this module is in [this file](https://github.com/puppetlabs/ruby-pwsh/blob/master/lib/puppet/provider/dsc_base_provider.rb) from the pwshlib module.
This is important for troubleshooting and bug reporting, but doesn't impact your use of the module except that the end result will be that nothing works, as the dependency is not installed alongside this module!

## Usage

You can specify any of the DSC resources from this module like a normal Puppet resource in your manifests.
The examples below use DSC resources from from the [PowerShellGet](https://github.com/PowerShell/PowerShellGet) repository, regardless of what module you're looking at here;
the syntax, not the specifics, is what's important.

For reference documentation about the DSC resources exposed in this module, see the *Reference* Forge tab, or the REFERENCE.md file.

```puppet
# Include a meaningful title for your resource declaration
dsc_psrepository { 'Add team module repo':
    dsc_name               => 'foo',
    dsc_ensure             => present,
    # This location is nonsense, can be any valid folder on your
    # machine or in a share, any location the SourceLocation param
    # for the DSC resource will accept.
    dsc_sourcelocation     => 'C:\Program Files',
    # You must always pass an enum fully lower-cased;
    # Puppet is case sensitive even when PowerShell isn't
    dsc_installationpolicy => untrusted,
}

dsc_psrepository { 'Trust public gallery':
    dsc_name               => 'PSGallery',
    dsc_ensure             => present,
    dsc_installationpolicy => trusted,
}

dsc_psmodule { 'Make Ruby manageable via uru':
  dsc_name   => 'RubyInstaller',
  dsc_ensure => present,
}
```

For more information about using a built module, check out our [narrative documentation](https://puppetlabs.github.io/iac/news/roadmap/2020/03/30/dsc-announcement.html).

### Properties

Note that the only properties specified in a resource declaration which are passed to Invoke-Dsc are all prepended with dsc_.
If a property does _not_ start with dsc_ it is used to control how Puppet interacts with DSC/other Puppet resources - for example,
specifying a unique name for the resource for Puppet to distinguish between declarations or Puppet metaparameters (`notifies, `before, etc).

## Troubleshooting

In general, there are three broad categories of problems:

1. Problems with the way the underlying DSC resource works.
1. Problems with the type definition, where you can't specify a valid set of properties for the DSC resource
1. Problems with calling the underlying DSC resource - the parameters aren't being passed correctly or the resource can't be found

Unfortunately, problems with the way the underlying DSC resource works are something we can't help _directly_ with.
You'll need to [file an issue](https://github.com/dsccommunity/iSCSIDsc) with the upstream maintainers for the [PowerShell module](https://www.powershellgallery.com/packages//2.0.0).

Problems with the type definition are when a value that should be valid according to the DSC resource's documentation and code is not accepted by the Puppet wrapper. If and when you run across one of these, please [file an issue](https://github.com/puppetlabs/Puppet.Dsc/issues/new/choose) with the Puppet DSC Builder; this is where the conversion happens and once we know of a problem we can fix it and regenerate the Puppet modules. To help us identify the issue, please specify the DSC module, version, resource, property and values that are giving you issues. Once a fix is available we will regenerate and release updated versions of this Puppet wrapper.

Problems with calling the underlying DSC resource become apparent by comparing `<value passed in in puppet>` with `<value received by DSC>`.
In this case, please [file an issue](https://github.com/puppetlabs/ruby-pwsh/issues/new/choose) with the [puppetlabs/pwshlib](https://forge.puppet.com/puppetlabs/pwshlib) module, which is where the DSC base provider actually lives.
We'll investigate and prioritize a fix and update the puppetlabs/pwshlib module.
Updating to the pwshlib version with the fix will immediately take advantage of the improved functionality without waiting for this module to be reconverted and published.

For specific information on troubleshooting a generated module, check the [troubleshooting guide](https://github.com/puppetlabs/Puppet.Dsc#troubleshooting) for the puppet.dsc module.

## Known Limitations

Currently, because of the way Puppet caches files on agents, use of the legacy [`puppetlabs-dsc`]() module is **not** compatible with this or any auto-generated DSC module.
Inclusion of both will lead to pluginsync conflicts.

## Source
This is a fork of https://forge.puppet.com/modules/dsc/iscsidsc
This project is temporary until changes will be included in the default icsci dsc module
