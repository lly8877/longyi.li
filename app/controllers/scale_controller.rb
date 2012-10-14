class ScaleController < ApplicationController
  def show
    impId = params[:id]
    @scale_datum = ScaleDatum.where('impid = ?', impId)
    @stringForJavascript = "["
    @scale_datum.each do |scale_data|
      time = scale_data.created_at
      weightInLb = scale_data.weightinlb
      string = "['" + time.strftime("%Y-%m-%d %H:%M:%S") + "'," + weightInLb.to_s + "],"
      @stringForJavascript = @stringForJavascript + string
    end

    if @stringForJavascript.size > 1
      @stringForJavascript[@stringForJavascript.size - 1] = "]"
    else
      @stringForJavascript = nil
    end
    p @stringForJavascript

    respond_to do |format|
      format.html
    end
  end

end
