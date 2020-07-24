require "./item.rb"

class List
    attr_writer :items

    def initialize()
      @items = Array.new 
    end
    
    def add_item(text)
        item = Item.new(text)
        @items.push(item)
        puts "Articulo Agregado."
    end

    def remove_item(index)
        @items.delete_at(index)
        puts "Articulo Removido."        
    end

    def check_item(index)
        @items[index].checked = true
        puts "El articulo #{index} ha sido marcado."
    end

    def remove_all
        @items.clear
        puts "Todos los articulos fueron removidos."
        puts " "
    end
   
    def show_all
        if @items.length == 0 
            puts "No hay articulos en tu lista de compras"
            puts " "
        else
            @items.each_index do |index|
                puts index.to_s + " - " + @items[index].to_s
            end
            puts " "
        end
    end
end