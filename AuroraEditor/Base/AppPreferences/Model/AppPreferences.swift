//
//  AppPreferences.swift
//  Aurora Editor
//
//  Created by Lukas Pistrol on 01.04.22.
//  Copyright © 2023 Aurora Company. All rights reserved.
//
//  This file originates from CodeEdit, https://github.com/CodeEditApp/CodeEdit

import SwiftUI

/// # AppPreferences
///
/// The model structure of settings for `AuroraEditor`
///
/// A `JSON` representation is persisted in `~/Library/com.auroraeditor/preference.json`.
/// - Attention: Don't use `UserDefaults` for persisting user accessible settings.
///  If a further setting is needed, extend the struct like ``GeneralPreferences``,
///  ``ThemePreferences``, or ``TerminalPreferences`` does.
///
/// - Note: Also make sure to implement the ``init(from:)`` initializer, decoding
///  all properties with
///  [`decodeIfPresent`](https://developer.apple.com/documentation/swift/keyeddecodingcontainer/2921389-decodeifpresent)
///  and providing a default value. Otherwise all settings get overridden.
public struct AppPreferences: Codable {

    /// The general global setting
    public var general: GeneralPreferences = .init()

    /// The global settings for text editing
    public var accounts: AccountsPreferences = .init()

    /// The global settings for themes
    public var theme: ThemePreferences = .init()

    /// The global settings for the terminal emulator
    public var terminal: TerminalPreferences = .init()

    /// The global settings for text editing
    public var textEditing: TextEditingPreferences = .init()

    /// The global settings for text editing
    public var sourceControl: SourceControlPreferences = .init()

    public var updates: UpdatePreferences = .init()

    /// Default initializer
    public init() {}

    /// Explicit decoder init for setting default values when key is not present in `JSON`
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.general = try container.decodeIfPresent(GeneralPreferences.self, forKey: .general) ?? .init()
        self.accounts = try container.decodeIfPresent(AccountsPreferences.self, forKey: .accounts) ?? .init()
        self.theme = try container.decodeIfPresent(ThemePreferences.self, forKey: .theme) ?? .init()
        self.terminal = try container.decodeIfPresent(TerminalPreferences.self, forKey: .terminal) ?? .init()
        self.textEditing = try container.decodeIfPresent(TextEditingPreferences.self, forKey: .textEditing) ?? .init()
        self.sourceControl = try container.decodeIfPresent(SourceControlPreferences.self,
                                                           forKey: .sourceControl) ?? .init()
        self.updates = try container.decodeIfPresent(UpdatePreferences.self,
                                                     forKey: .updates) ?? .init()
    }
}
