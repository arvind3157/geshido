require "ruby/openai"

class TextController < ApplicationController

    def process_text
        openai = OpenAI::Client.new(access_token:ENV["OPENAI_API_KEY"])
        @input_text = params[:input_text] || ""
        response = openai.completions(
            parameters: {
                model: "text-davinci-002",
                prompt: @input_text,
                temperature: 0.5,
                max_tokens: 500,
                stop: "."
                }
                )
        if @input_text.empty?
            @output_text = "Enter the prompt!"
        else
            @output_text = response["choices"][0]["text"]
        end
    end
end
