class Animal < ApplicationRecord
  belongs_to :kind
  belongs_to :person

  validate :person_can_have_a_swallow
  validate :person_can_have_a_cat
  validate :person_can_have_another_animal

  private

  def person_can_have_a_swallow
    if kind.description == 'Andorinha' && person.age < 18
      errors.add(:base, 'Pessoas devem ter mais de 18 anos para ter andorinhas')
    end
  end

  def person_can_have_a_cat
    if kind.description == 'Gato' && person.name.first.upcase == 'A'
      errors.add(:base, 'Pessoas que tenham nome começando com a letra "A" não podem ter animais do tipo Gato')
    end
  end

  def person_can_have_another_animal
    # NOTE: Person can pass 1000.0 of monthly_cost
    # NOTE: Is invalid only with him already have more than 1000.0
    # if person.animals.sum(:monthly_cost) + monthly_cost > 1000.0
    if person.animals.sum(:monthly_cost) > 1000.0
      errors.add(:base, 'Pessoas que já tiverem custos com animais acima de 1000 não podem ter mais animais')
    end
  end
end
