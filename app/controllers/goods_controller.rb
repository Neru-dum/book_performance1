class GoodsController < ApplicationController
  def index
  end

  def search_rakuten_api(keyword)
    items = RakutenWebService::Ichiba::Item.search(keyword: keyword)
    images_arr = []
    items.each do |item|
    # したい処理
    puts item['itemName'] #商品名
    puts item['itemPrice'] #価格
    puts item['itemUrl'] #商品のURL
    end
  end
end
