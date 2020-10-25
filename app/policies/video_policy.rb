class VideoPolicy < ApplicationPolicy
    class Scope < Scope
        def resolve
            user.videos
        end
    end
end