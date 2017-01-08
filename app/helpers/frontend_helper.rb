module FrontendHelper
  def scholarship_style_change(scholarship)
    array = []
    if scholarship.discount > 49
      array = ['OliveDrab', 'box box-border']
    elsif scholarship.discount < 26 && scholarship.id.even?
      array = ['FireBush', 'box box-theme']
    else
      array = ['Mojo', 'box box-dark']
    end
    array
  end
end
