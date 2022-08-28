import UIKit

class ExerciseCardCollectionViewCell: UICollectionViewCell {
    static let identifier = "ExerciseCardCollectionViewCell"

    private let exImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.backgroundColor = .white.withAlphaComponent(0.2)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()

    private let exLabelView: UILabel = {
        let labelView = UILabel()
        labelView.text = "House"
        labelView.font = UIFont(name: "Sans-serif", size: 16)
        labelView.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        labelView.textColor = .black.withAlphaComponent(0.6)
        labelView.textAlignment = .center
        labelView.backgroundColor = .white.withAlphaComponent(0.3)

        return labelView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(exLabelView)
        contentView.addSubview(exImageView)
        contentView.clipsToBounds = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        exLabelView.frame = CGRect(x: 15, y: contentView.frame.size.height-50, width: contentView.frame.size.width-30, height: 50)

        exImageView.frame = CGRect(x: 15, y: 0, width: contentView.frame.size.width-30, height: contentView.frame.size.height-50)
    }

}
