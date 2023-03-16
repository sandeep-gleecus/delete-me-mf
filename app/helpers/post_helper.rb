module PostHelper
  def post_date(date)
    date.strftime("%d %b %Y")
  end
end
