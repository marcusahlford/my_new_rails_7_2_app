class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Temp fix, see:
  # https://discuss.rubyonrails.org/t/project-doesnt-run-in-github-codespaces/84046/5
  skip_before_action :verify_authenticity_token, if: -> { Rails.env.development? }
end
