module RolesUpdate
 extend ActiveSupport::Concern

included do
 after_create :add_user_role
end

def add_user_role
    User.last.update(role: "student")
end
end