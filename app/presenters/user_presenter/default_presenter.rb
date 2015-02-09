class UserPresenter
  class DefaultPresenter < BasePresenter
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
      t.current_user == object ? object.age : 'HIDDEN'
    end

    def remove_link
      if t.current_user == object
        t.link_to "REMOVE", t.user_path(object), method: :delete
      end
    end
  end
end
