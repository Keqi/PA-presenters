module ApplicationHelper
  def present(object, deleted=false, klass=nil)
    klass ||= "#{object.class}Presenter".constantize
    presenter = klass.new(object, self)
    yield presenter
    presenter
  end
end
