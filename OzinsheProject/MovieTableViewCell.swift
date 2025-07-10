//
//  MovieTableViewCell.swift
//  OzinsheProject
//
//  Created by Adilet Kenesbekov on 10.07.2025.
//

import UIKit
import SnapKit

class MovieTableViewCell: UITableViewCell {

  lazy var movieImage = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "Image")
    imageView.contentMode = .scaleAspectFill
    imageView.layer.cornerRadius = 8
    imageView.clipsToBounds = true
    return imageView
  }()

  lazy var titleLabel = {
    let label = UILabel()
    label.text = "Қызғалдақтар мекені"
    label.font = UIFont(name: "SF-Pro-Display-Bold", size: 14)
    label.textColor = UIColor(named: "movieTitleColor")
    return label
  }()

  lazy var subtitleLabel = {
    let label = UILabel()
    label.text = "2020 • Телехикая • Мультфильм"
    label.font = UIFont(name: "SF-Pro-Display-Regular", size: 12)
    label.textColor = UIColor(named: "movieSubtitleColor")
    return label
  }()

  lazy var playView = {
    let view = UIView()
    let imageView = UIImageView(image: UIImage(named: "Play-Filled"))
    let label = UILabel()

    view.backgroundColor = UIColor(named: "moviePlayColor")
    view.layer.cornerRadius = 8
    label.text = "Қарау"
    label.font = UIFont(name: "SF-Pro-Display-Bold", size: 12)
    label.textColor = UIColor(named: "movieTextColor")

    view.addSubview(imageView)
    view.addSubview(label)

    imageView.snp.makeConstraints { make in
      make.left.equalToSuperview().inset(12)
      make.verticalEdges.equalToSuperview().inset(5)
      make.size.equalTo(16)
    }
    label.snp.makeConstraints{ make in
      make.centerY.equalTo(imageView)
      make.left.equalTo(imageView.snp.right).offset(4)
      make.right.equalToSuperview().inset(12)
    }

    return view
  }()

  lazy var underlineView = {
    let view = UIView()
    view.backgroundColor = UIColor(named: "movieUnderlineColor")
    return view
  }()


  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {

    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupUI()

  }
  
  func setupUI() {
    contentView.addSubview(movieImage)
    contentView.addSubview(titleLabel)
    contentView.addSubview(subtitleLabel)
    contentView.addSubview(playView)
    contentView.addSubview(underlineView)


    movieImage.snp.makeConstraints { make in
      make.top.equalToSuperview().inset(24)
      make.left.equalToSuperview().inset(24)
      make.height.equalTo(104)
      make.width.equalTo(71)
    }

    titleLabel.snp.makeConstraints { make in
      make.top.equalToSuperview().inset(24)
      make.left.equalTo(movieImage.snp.right).offset(17)
      make.right.equalToSuperview().inset(24)

    }
    subtitleLabel.snp.makeConstraints { make in
      make.top.equalTo(titleLabel.snp.bottom).offset(8)
      make.left.equalTo(movieImage.snp.right).offset(17)
      make.right.equalToSuperview().inset(24)
    }
    playView.snp.makeConstraints { make in
      make.top.equalTo(subtitleLabel.snp.bottom).offset(24)
      make.left.equalTo(movieImage.snp.right).offset(17)
    }
    underlineView.snp.makeConstraints { make in
      make.left.equalToSuperview().inset(24)
      make.right.equalToSuperview().inset(24)
      make.height.equalTo(1)
      make.bottom.equalToSuperview().inset(0)
    }
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
