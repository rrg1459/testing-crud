FactoryBot.define do  # FactoryBot define el objeto para los test
  factory :store, class: 'Store' do  # Asignación del objeto a la clase
    article { Faker::Device.model_name }  # Inicio de datos aleatios
    state { %w(New Uses Damaged Repaired).sample }
    in_warehouse { Faker::Number.between(from: 1, to: 100) }
    on_counter { Faker::Number.between(from: 1, to: 5) }
    price { Faker::Number.between(from: 500, to: 2000) }  # Fin de datos aleatorios
    created_at { "2023-05-14 12:27:14 UTC" }
    updated_at { "2023-05-14 14:07:14 UTC" }
  end
end