require 'rest_client'
class JenkinsController < ApplicationController
  before_filter :set_imp_path
  def set_imp_path
    @imp_path = "https://api.electricimp.com/v1/65361dfe24ee4067/30cfe76dc261805a"
  end

  def notify

    index = -1
    if (params['build']['phase'] == "STARTED")
      index = 0
    elsif (params['build']['phase'] == "COMPLETED")
      if (["SUCCESS", "ABORTED"].include? params['build']['status'])
        index = 1
      else
        index = 2
      end
    end
    if index != -1
      RestClient::Request.execute(method: :post,
        url: "http://huantengsmart.com/api/v3/dashboard/generic_module/618/data",
        payload: "id=618&channel=0&value=#{index}",
        headers: {Authorization: 'token 832c0dcb9db7bf01e338e7b3c0095166'}
      )
    end
    render :nothing => true
  end

end
