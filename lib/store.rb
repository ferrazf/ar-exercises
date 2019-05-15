class Store < ActiveRecord::Base
    has_many :employees

    validates :name, length: { minimum: 3 }
    validates :annual_revenue,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 0
    }

  validate :has_apparel
  before_destroy :check_employees

  def has_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      error_mens_apparel
      error_womens_apparel
    end
  end

  def error_mens_apparel
    errors.add(:mens_apparel, "Error: Men's Apparel is missing")
  end

  def error_womens_apparel
    errors.add(:mens_apparel, "Error: Women's Apparel is missing")
  end

  private

def check_employees
    if self.employees.size > 0
      error_destroy
      throw :abort
    end
  end

  def error_destroy
    errors.add(:base, "Cannot destroy store with #{self.employees.size} employees.")
  end

end

end
