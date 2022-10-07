//
//  Theme.swift
//  
//
//  Created by Manuel M T Chakravarty on 14/05/2021.
//
//  This module defines code highlight themes.

import SwiftUI

/*
/// A code highlighting theme. Different syntactic elements are purely distinguished by colour.
///
public struct Theme: Identifiable {
    public let id = UUID()

    /// The name of the font to use.
    public var fontName: String

    /// The point size of the font to use.
    ///
    public var fontSize: CGFloat

    /// The default foreground text colour.
    public var textColour: OSColor

    /// The background colour.
    public var backgroundColour: OSColor

    /// The colour of the current line highlight.
    public var currentLineColour: OSColor

    /// The colour to use for the selection highlight.
    public var selectionColour: OSColor

    /// The cursor colour.
    public var cursorColour: OSColor

    /// The colour to use if invisibles are drawn.
    public var invisiblesColour: OSColor // NOTE: Currently unused

    public init(fontName: String,
                fontSize: CGFloat,
                textColour: OSColor,
                backgroundColour: OSColor,
                currentLineColour: OSColor,
                selectionColour: OSColor,
                cursorColour: OSColor,
                invisiblesColour: OSColor
    ) {
        self.fontName = fontName
        self.fontSize = fontSize
        self.textColour = textColour
        self.backgroundColour = backgroundColour
        self.currentLineColour = currentLineColour
        self.selectionColour = selectionColour
        self.cursorColour = cursorColour
        self.invisiblesColour = invisiblesColour
    }
}

/// A theme catalog indexing themes by name
typealias Themes = [String: Theme]

extension Theme {

    public static var defaultDark: Theme = Theme(
        fontName: "SFMono-Medium",
        fontSize: 13.0,
        textColour: OSColor(red: 0.87, green: 0.87, blue: 0.88, alpha: 1.0),
        backgroundColour: NSColor(hex: "#292a30"),
        currentLineColour: OSColor(red: 0.19, green: 0.20, blue: 0.22, alpha: 1.0),
        selectionColour: OSColor(red: 0.40, green: 0.44, blue: 0.51, alpha: 1.0),
        cursorColour: OSColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
        invisiblesColour: OSColor(red: 0.33, green: 0.37, blue: 0.42, alpha: 1.0)
    )

    public static var defaultLight: Theme = Theme(
        fontName: "SFMono-Regular",
        fontSize: 13.0,
        textColour: OSColor(red: 0.15, green: 0.15, blue: 0.15, alpha: 1.0),
        backgroundColour: OSColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
        currentLineColour: OSColor(red: 0.93, green: 0.96, blue: 1.0, alpha: 1.0),
        selectionColour: OSColor(red: 0.73, green: 0.84, blue: 0.99, alpha: 1.0),
        cursorColour: OSColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0),
        invisiblesColour: OSColor(red: 0.84, green: 0.84, blue: 0.84, alpha: 1.0)
    )
}

extension Theme {

    /// Font object on the basis of the font name and size of the theme.
    var font: OSFont {
        if fontName.hasPrefix("SFMono") {

            let weightString = fontName.dropFirst("SFMono".count)
            let weight: OSFont.Weight
            switch weightString {
            case "UltraLight": weight = .ultraLight
            case "Thin":       weight = .thin
            case "Light":      weight = .light
            case "Regular":    weight = .regular
            case "Medium":     weight = .medium
            case "Semibold":   weight = .semibold
            case "Bold":       weight = .bold
            case "Heavy":      weight = .heavy
            case "Black":      weight = .black
            default:           weight = .regular
            }
            return OSFont.monospacedSystemFont(ofSize: fontSize, weight: weight)

        } else {

            return OSFont(name: fontName, size: fontSize) ?? OSFont.monospacedSystemFont(ofSize: fontSize,
                                                                                         weight: .regular)

        }
    }
}
*/
