<!--- Register repository https://api.reuse.software/register, then add REUSE badge:
[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/REPO-NAME)](https://api.reuse.software/info/github.com/SAP-samples/REPO-NAME)
-->

# FioriAR Mobile Augmented Reality - Tutorial Sample Project

## Description

This repository is backing up the [Build an Augmented Reality Experience app with FioriAR](https://developers.sap.com/tutorials/fiori-ios-btp-fioriar.html) tutorial on the [SAP Developers Center](https://developers.sap.com/). The project included in this repository is the result of completing the above mentioned tutorial. The project is not to be seen as production ready code!

## Requirements

To run this project you need to full-fill the following requirements:

- macOS ready machine with macOS Catalina or newer
  
- physical iOS device with iOS 14 or higher
  
- Xcode 14 or newer

## Download and Installation

1. Clone the repository to your local machine.

2. Open the .xcodeproj file with Xcode.

3. Add a valid Development Team in order to run the app.

4. Lookup the OAuth values on SAP Mobile Services and replace them with the placeholder in the Swift file [AuthenticationParams](https://github.com/SAP-samples/mobile-augmented-reality/blob/main/FioriARSceneExample/FioriARSceneExample/Utils/AuthenticationParams.swift).

> NOTE: If you don't know how to setup your project environment on SAP Mobile Services, please refer to the corresponding tutorial mentioned above.

5. Run the app on a physical device.

## Known Issues

None

## How to obtain support

[Create an issue](https://github.com/SAP-samples/mobile-augmented-reality/issues) in this repository if you find a bug or have questions about the content.
 
For additional support, [ask a question in SAP Community](https://answers.sap.com/questions/ask.html).

## Contributing

If you wish to contribute code, offer fixes or improvements, please send a pull request. Due to legal reasons, contributors will be asked to accept a DCO when they create the first pull request to this project. This happens in an automated fashion during the submission process. SAP uses [the standard DCO text of the Linux Foundation](https://developercertificate.org/).

## License

Copyright (c) 2022 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSES/Apache-2.0.txt) file.
