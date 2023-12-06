require 'date'

class Item
  attr_accessor :id, :publish_date, :archived
  attr_reader :genre, :author, :source, :label

  def initialize(id, genre, author, source, label, publish_date, archived)
    @id = id
    self.genre = genre
    self.author = author
    self.source = source
    self.label = label
    @publish_date = publish_date
    @archived = archived
  end

  def genre=(genre)
    # raise ArgumentError, 'Genre must be a Genre object' unless genre.is_a?(Genre)
    # @genre = genre
  end

  def author=(author)
    # raise ArgumentError, 'Author must be an Author object' unless author.is_a?(Author)
    # @author = author
  end

  def source=(source)
    # raise ArgumentError, 'Source must be a Source object' unless source.is_a?(Source)
    # @source = source
  end

  def label=(label)
    # raise ArgumentError, 'Label must be a Label object' unless label.is_a?(Label)
    # @label = label
  end

  def can_be_archived?
    today = Date.today
    # Assuming 'publish_date' is in Date format
    (today - @publish_date).to_i > (365 * 10)
  end

  def move_to_archive
    if can_be_archived?
      @archived = true
    end
    # Else, do nothing as per specifications
  end
end
