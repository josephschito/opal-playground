class Element
  attr_reader :id, :element

  def initialize(id: nil)
    @id = id
    @element = $$[:document].querySelector(id)
  end
end
