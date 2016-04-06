require 'sax-machine'

module Pombo
  module Webservice
    class CPP
      class Service
        include SAXMachine

        element :Codigo, as: :code
        element :Valor, as: :value do |value|
          Pombo::Support.str_real_to_float value
        end
        element :PrazoEntrega, as: :delivery_time
        element :ValorMaoPropria, as: :value_in_hand do |value|
          Pombo::Support.str_real_to_float value
        end
        element :ValorAvisoRecebimento, as: :value_delivery_notice do |value|
          Pombo::Support.str_real_to_float value
        end
        element :ValorValorDeclarado, as: :value_declared_value do |value|
          Pombo::Support.str_real_to_float value
        end
        element :ValorSemAdicionais, as: :value_without_additions do |value|
          Pombo::Support.str_real_to_float value
        end
        element :EntregaDomiciliar, as: 'delivery_home' do |value|
          value == 'S'
        end
        element :EntregaSabado, as: :delivery_sartuday do |value|
          value == 'S'
        end
        element :Erro, as: :error_code
        element :MsgErro, as: :error_message
        element :obsFim, as: :comments
      end
    end
  end
end