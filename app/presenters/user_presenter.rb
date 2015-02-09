class UserPresenter < BasePresenter
  def self.new(object, template, options={})
    return AdminPresenter.new(object, template) if template.current_user.admin?
    return DeletedPresenter.new(object, template) if object.deleted?
    DefaultPresenter.new(object, template)
  end
end
