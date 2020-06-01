class Application
    @@items = [Item.new("Shoes", 150),
        Item.new("suit",1000)]
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)
        if req.path.match(/items/)
            item_name = req.path.split("/items/").last 
            if item =@@items.find do |v| 
                v.name == item_name
            end
                resp.write item.price 
        else 
            resp.status = 400
            resp.write "Item not found"
          end
            else
                resp.write "Route not found"
                resp.status = 404
        end
        resp.finish
end
end