class UserPresenter
  class DeletedPresenter < BasePresenter
    def name
      object.name
    end

    def surname
      object.surname
    end

    def user_link
      "DELETED"
    end

    def admin?
      "DELETED"
    end

    def age
      "DELETED"
    end

    def remove_link
      "DELETED"
    end
  end
end
