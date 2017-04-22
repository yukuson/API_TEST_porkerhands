module API
  module V1
  include Common
    class Root < Grape::API
      version 'v1', using: :path
      format :json
      post '/' do
        inputs = "#{params[:number]}".split(" ")
        result = inputs.count
        if result != 5
           "5つのカード指定文字を半角スペース区切りで入力してください。（例：'S1 H3 D9 C13 S11'）"
         else
           if inputs.size == inputs.uniq.size
            # "#{ranknamejudge(rankjudge(cards))}"
            # view_test
            "OK"
           else
            "カードが重複しています。"
           end
         end
      end
    end
  end
end
