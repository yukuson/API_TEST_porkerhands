module API
  class Root < Grape::API
    mount API::V1::Root
    test
  end
end
