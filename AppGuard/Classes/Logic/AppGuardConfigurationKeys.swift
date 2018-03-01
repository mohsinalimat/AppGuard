// The MIT License (MIT)
//
// Copyright (c) 2018 Smart&Soft
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

public enum AppGuardConfigurationKeys: String {
  case deeplink = "update_deeplink"
  case dialogType = "update_dialogType"
  case content = "update_content"
  case actionButtonLabel = "update_actionButtonLabel"
  case changelogContent = "update_changelog_content"
  case title = "update_title"
  case imageUrl = "update_imageURL"
  case laterButtonLabel = "update_laterButtonLabel"
  case maxDaysBetweenDisplay = "udpate_maxDaysBetweenDisplay"
  
  static let allKeys: [AppGuardConfigurationKeys] = [.deeplink,
                                                     .dialogType,
                                                     .content,
                                                     .actionButtonLabel,
                                                     .changelogContent,
                                                     .title,
                                                     .imageUrl]
  
  static let allIntKeys: [AppGuardConfigurationKeys] = [.dialogType, .maxDaysBetweenDisplay]
  static let allStringKeys: [AppGuardConfigurationKeys] = [.deeplink,
                                                        .content,
                                                        .actionButtonLabel,
                                                        .changelogContent,
                                                        .title,
                                                        .imageUrl,
                                                        .laterButtonLabel]
  
  public var userDefaultsCustomKey: String {
    return "AppGuard.UserDefaults.configuration.key.\(self)"
  }
  
  public var userDefaultsKey: String {
    return "AppGuard.UserDefaults.configuration.\(self)"
  }
}