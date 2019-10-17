require 'rubygems'
require 'meli'
require 'json'
require "logger"

meli = Meli.new(1234, "a secret")
SITE_ID = "MLA"
array_ids =["81644614"]
time = Time.now.getutc
logger = Logger.new File.new("#{time}.log", 'w')

if ARGV.length > 0
     for i in 0 ... ARGV.length
        array_ids.push(ARGV[i])
     end
end


array_ids.each do |seller_id|
    
    response = meli.get("sites/#{SITE_ID}/search?seller_id=#{seller_id}")
    resp_hash = JSON.parse response.body
    puts "seller_id:"+seller_id
    logger.info "seller_id:"+seller_id
    puts "site_id:"+resp_hash["site_id"]
    logger.info "site_id:"+resp_hash["site_id"]

    resp_hash["results"].each do |product|
        puts "product_title:"+product["title"]
        logger.info "product_title:"+product["title"]
        category_id = product["category_id"]
        puts "category_id:"+category_id
        logger.info "category_id:"+category_id
        puts "product_id:"+product["id"]
        logger.info "product_id:"+product["id"]
        category_response = meli.get("/categories/#{category_id}")
        resp_category_hash = JSON.parse category_response.body
        puts "category_name:"+resp_category_hash["name"]
        logger.info "category_name:"+resp_category_hash["name"]
        logger.info "---------------"
        puts "---------------"
    end
    puts ".............."
    logger.info ".............."

end