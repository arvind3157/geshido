class TextController < ApplicationController
    def process_text
        @output_text = ProcessTextService.process_text(params);
    end
end
