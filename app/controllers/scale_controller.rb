class ScaleController < ApplicationController
  def show
    impId = params[:id]
    unit = params[:unit]
    @scale_datum = ScaleDatum.where('impid = ?', impId)
    @stringForJavascript = "["
    @scale_datum.each do |scale_data|
      time = scale_data.created_at
      weightinlb = scale_data.weightinlb
      if unit == 'kg'
        weightinlb = weightinlb * 0.453592
        @unit = "kg"
      else
        @unit = "lb"
      end

      string = "['" + time.strftime("%Y-%m-%d %H:%M:%S") + "'," + weightinlb.to_s + "],"
      @stringForJavascript = @stringForJavascript + string
    end

    if @stringForJavascript.size > 1
      @stringForJavascript[@stringForJavascript.size - 1] = "]"
    else
      @stringForJavascript = nil
    end

    respond_to do |format|
      format.html
    end
  end

end
