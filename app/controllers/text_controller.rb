class TextController < ApplicationController
    def process_text
        @output_text = helpers.process_text(params);
    end
end
