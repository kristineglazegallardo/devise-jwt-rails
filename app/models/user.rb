class User < ActiveRecord::Base
  devise :database_authenticatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtBlacklist
         
  self.skip_session_storage = [:http_auth, :params_auth]
end
