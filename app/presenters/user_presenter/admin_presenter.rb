class UserPresenter
  class AdminPresenter < BasePresenter
    def name
      object.name
    end

    def surname
      object.surname
    end

    def user_link
      t.link_to t.user_path(object), t.user_path(object)
    end

    def admin?
      object.admin? ? "YES" : "NO"
    end

    def age
      object.age
    end

    def remove_link
      t.link_to "REMOVE", t.user_path(object), method: :delete unless object.deleted?
    end
  end
end
