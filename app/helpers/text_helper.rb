require "ruby/openai"

module TextHelper
    def process_text(params)
        openai = OpenAI::Client.new(access_token:ENV["OPENAI_API_KEY"])
        @input_text = params[:input_text] || ""
        response = openai.completions(
            parameters: {
                model: "text-davinci-003",
                prompt: @input_text,
                temperature: 0.7,
                max_tokens: 500,
                }
                )
        if @input_text.empty?
            return "Enter the prompt!"
        else
            return response["choices"][0]["text"]
        end
    end
end
