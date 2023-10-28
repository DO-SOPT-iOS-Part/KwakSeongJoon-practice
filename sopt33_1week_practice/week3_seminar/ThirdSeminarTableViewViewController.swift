//
//  ThirdSeminarTableViewViewController.swift
//  sopt33_1week_practice
//
//  Created by 곽성준 on 2023/10/28.
//

import UIKit

import SnapKit
import Then


final class ThirdSeminarTableViewViewController: UIViewController {
    
    var dataDummy = ItemListData.dummy()
    
    private let tableView = UITableView(frame: .zero, style: .plain).then {
        $0.backgroundColor = .init(red: 33.0 / 255.0,
                                   green: 33.0 / 255.0,
                                   blue: 33.0 / 255.0,
                                   alpha: 1.0)
        $0.separatorColor = .lightGray
        $0.separatorStyle = .singleLine
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
        setTableViewConfig()
    }
    
    private func setLayout() {
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func setTableViewConfig() {
        self.tableView.register(ThirdSeminarTableViewCell.self,
                                forCellReuseIdentifier: ThirdSeminarTableViewCell.identifier)
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension ThirdSeminarTableViewViewController: UITableViewDelegate {}

extension ThirdSeminarTableViewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataDummy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ThirdSeminarTableViewCell.identifier,
                                                       for: indexPath) as? ThirdSeminarTableViewCell else {return UITableViewCell()}
        cell.likeTapCompletion = { [weak self] state in
            guard let self else {return}
            dataDummy[indexPath.row].isLike = state
        }
        cell.bindData(data: dataDummy[indexPath.row])
        return cell
    }
    
}
