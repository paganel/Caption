//
//  SidebarViewController.swift
//  Quick Caption
//
//  Created by Blue on 3/10/19.
//  Copyright © 2019 Bright. All rights reserved.
//

import Cocoa

class SidebarViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource {
    @IBOutlet weak var tableView: NSTableView!
    var episodeProjects: [EpisodeProject] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do view setup here.
    }

    func addNewProject() {
        episodeProjects.append(EpisodeProject())
        tableView.reloadData()
    }

    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        if let view = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "SidebarEpisodeTableCellView"), owner: self) as? SidebarEpisodeTableCellView {
            view.videoFileNameTextField.stringValue = "Some Name"
            view.lastModifiedDateTextField.stringValue = "Some Time"
            return view
        }
        return nil
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return episodeProjects.count
    }

    func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 66
    }

    
    
}
