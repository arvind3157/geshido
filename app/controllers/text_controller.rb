class TextController < ApplicationController
    def process_text
        @input_text = params[:input_text]
        @output_text = "Your input text is: #{@input_text}"
    end

end
