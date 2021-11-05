import UIKit

class CustomTableViewCell: UITableViewCell
{
    var name:String = ""
    {
        didSet
        {
            if(name != oldValue)
            {
                nameLabel.text = name
            }
        }
    }
    
    var genre: String = ""
    {
        didSet
        {
            if(genre != oldValue)
            {
                genreLabel.text = genre
            }
        }
    }
    
    var nameLabel: UILabel!
    var genreLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // add a new subview for the name Label
        let nameLabelRect = CGRect(x: 0, y: 5, width: 70, height: 15)
        let nameMarker = UILabel(frame: nameLabelRect)
        nameMarker.textAlignment = NSTextAlignment.right
        nameMarker.text = "Name:"
        nameMarker.font = UIFont.boldSystemFont(ofSize: 12)
        contentView.addSubview(nameMarker)
        
        // add a new subview for the genre Label
        let genreLabelRect = CGRect(x: 0, y: 26, width: 70, height: 15)
        let genreMarker = UILabel(frame: genreLabelRect)
        genreMarker.textAlignment = NSTextAlignment.right
        genreMarker.text = "Genre:"
        genreMarker.font = UIFont.boldSystemFont(ofSize: 12)
        contentView.addSubview(genreMarker)
        
        // add a new subview for the name label value
        let nameValueRect = CGRect(x: 80, y: 5, width: 200, height: 15)
        nameLabel = UILabel(frame: nameValueRect)
        contentView.addSubview(nameLabel)
        
        // add a new subview for the genre label value
        let genreValueRect = CGRect(x: 80, y: 26, width: 200, height: 15)
        genreLabel = UILabel(frame: genreValueRect)
        contentView.addSubview(genreLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }

}
