class BasePresenter
  attr_reader :object

  def initialize(object, template)
    @object = object
    @template = template
  end

  def t
    @template
  end
end
