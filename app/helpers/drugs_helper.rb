module DrugsHelper
  def render_how_to_use(drug)
    simple_format(drug.how_to_use)
  end

  def render_why_i_take_this_drug(drug)
    simple_format(drug.why_i_take_this_drug)
  end
  def render_pregnancy_warning(drug)
    simple_format(drug.pregnancy_warning)
  end
  def render_breastfeeding_warning(drug)
    simple_format(drug.breastfeeding_warning)
  end
  def render_side_effect(drug)
    simple_format(drug.side_effect)
  end
end
