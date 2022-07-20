module EnsureJsonRequest
	extend ActiveSupport::Concern

	included do
		before_action :ensure_json_request
	end

	def ensure_json_request
		return if request.headers["Accept"] =~ /vnd\.api\+json/
		render body: nil, status: 406
  end
end