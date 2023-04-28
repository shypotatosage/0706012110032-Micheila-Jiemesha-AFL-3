//
//  LandmarkCommands.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 16/04/23.
//

import SwiftUI

// Untuk Bisa Memunculkan Sidebar Melalui View Tab
struct LandmarkCommands: Commands {
    // FocusedBinding untuk Track Landmark Yang Sedang Dipilih
    @FocusedBinding(\.selectedLandmark) var selectedLandmark

    var body: some Commands {
        SidebarCommands()
        
        // Tambah Tampilan Untuk Landmark - Mark/Remove As Favorite di Menu Bagian Atas, Kemudian Bisa Menggunakan Keyboard Shortcut Juga (Untuk Kasus Ini = Shift + Option + F)
        CommandMenu("Landmark") {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" : "Mark") as Favorite") {
                selectedLandmark?.isFavorite.toggle()
            }
            .keyboardShortcut("f", modifiers: [.shift, .option])
            .disabled(selectedLandmark == nil)
        }
    }
}

// Simpan Data Selected Landmark
private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

// Ngeset dan Get Selected Landmark
extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue }
    }
}
