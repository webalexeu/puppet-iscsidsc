@{
    # Version number of this module.
    ModuleVersion         = '2.0.0'

    # ID used to uniquely identify this module
    GUID                  = 'f2793754-6dc7-439a-a779-b1529b5e704c'

    # Author of this module
    Author                = 'DSC Community'

    # Company or vendor of this module
    CompanyName           = 'DSC Community'

    # Copyright statement for this module
    Copyright             = 'Copyright the DSC Community contributors. All rights reserved.'

    # Description of the functionality provided by this module
    Description           = 'DSC resources for configuring Windows iSCSI Targets and Initiators.'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion     = '4.0'

    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion            = '4.0'

    # Processor architecture (None, X86, Amd64) required by this module
    ProcessorArchitecture = 'None'

    # Functions to export from this module
    FunctionsToExport     = @()

    # Cmdlets to export from this module
    CmdletsToExport       = @()

    # Variables to export from this module
    VariablesToExport     = @()

    # Aliases to export from this module
    AliasesToExport       = @()

    # DSC resources to export from this module
    DscResourcesToExport  = @('iSCSIInitiator','iSCSIServerTarget','iSCSIVirtualDisk')

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData           = @{

        PSData = @{
            # Set to a prerelease string value if the release should be a prerelease.
            Prerelease   = 'preview0003'

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags       = @('DesiredStateConfiguration', 'DSC', 'DSCResource', 'iSCSI', 'Target', 'Initiator')

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/dsccommunity/iSCSIDsc/blob/main/LICENSE'

            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/dsccommunity/iSCSIDsc'

            # A URL to an icon representing this module.
            IconUri      = 'https://dsccommunity.org/images/DSC_Logo_300p.png'

            # ReleaseNotes of this module
            ReleaseNotes = '## [2.0.0-preview0003] - 2021-01-21

### Changed

- Transferred ownership to DSCCommunity.org - Fixes [Issue #50](https://github.com/dsccommunity/iSCSIDsc/issues/50).
- Fix hash table style guideline violations.
- Added .gitattributes file to fix bug publishing examples - Fixes [Issue #40](https://github.com/PlagueHO/iSCSIDsc/issues/40).
- Opted into Common Tests ''Common Tests - Validate Localization'' - Fixes [Issue #44](https://github.com/PlagueHO/iSCSIDsc/issues/44).
- Renamed `iSCSIDsc.ResourceHelpers` module to `iSCSIDsc.Common`
  to align to other modules.
- Renamed all localization strings so that they are detected by
  ''Common Tests - Validate Localization''.
- Fixed issues with mismatched localization strings.
- Replaced `iSCSIDsc.Common` module with the latest version from
  [DSCResource.Template](https://github.com/PowerShell/DSCResource.Template).
- Fix minor style issues in statement case.
- Fix minor style issues in hashtable layout.
- Correct other minor style issues.
- Enabled PSSA rule violations to fail build - Fixes [Issue #27](https://github.com/PlagueHO/iSCSIDsc/issues/27).
- Updated tests to meet Pester v4 standard.
- Added Open Code of Conduct.
- Refactored module folder structure to move resource
  to root folder of repository and remove test harness - Fixes [Issue #36](https://github.com/PlagueHO/iSCSIDsc/issues/36).
- Converted Examples to support format for publishing to PowerShell
  Gallery.
- Opted into common tests:
  - Common Tests - Validate Example Files To Be Published
  - Common Tests - Validate Markdown Links
  - Common Tests - Relative Path Length
  - Common Tests - Relative Path Length
- Update to new format LICENSE.
- Added .VSCode settings for applying DSC PSSA rules - fixes [Issue #37](https://github.com/PlagueHO/iSCSIDsc/issues/37).
- BREAKING CHANGE: Changed resource prefix from MSFT to DSC.
- Updated to use continuous delivery pattern using Azure DevOps - fixes
  [Issue #52](https://github.com/dsccommunity/iSCSIDsc/issues/52).
- Update build badges in `README.md` with correct build IDs.
- Removed unused test helper function `New-VDisk`.
- Added test helper function `Assert-CanRunIntegrationTest` to validate if
  integration tests can be successfully run on a machine.
- Fixed build failures caused by changes in `ModuleBuilder` module v1.7.0
  by changing `CopyDirectories` to `CopyPaths` - Fixes [Issue #58](https://github.com/dsccommunity/iSCSIDsc/issues/58).
- Updated to use the common module _DscResource.Common_ - Fixes [Issue #53](https://github.com/dsccommunity/iSCSIDsc/issues/53).
- Pin `Pester` module to 4.10.1 because Pester 5.0 is missing code
  coverage - Fixes [Issue #60](https://github.com/dsccommunity/iSCSIDsc/issues/60).
- Automatically publish documentation to GitHub Wiki - Fixes [Issue #61](https://github.com/dsccommunity/iSCSIDsc/issues/61).
- Renamed `master` branch to `main` - Fixes [Issue #63](https://github.com/dsccommunity/iSCSIDsc/issues/63).

'
        } # End of PSData hashtable
    } # End of PrivateData hashtable
}




