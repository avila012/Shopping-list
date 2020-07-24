require "./list.rb"
require "./item.rb"

# Agregar un articulo
# Remover un articulo
# Ver todos los articulos
# Marcar un determinado articulo
# Borrar todos los articulos
# Salir de la aplicación

class ListApp
    attr_writer :list

    def initialize
        @list = List.new        
    end
    
    def run

        puts "***Bienvenido a nuestra lista de compras***"   
        loop do
            puts "a - Agregar un articulo"
            puts "r - Remover un articulo"
            puts "v - Ver todos los articulos"
            puts "m - Marcar un determinado articulo"
            puts "b - Borrar todos los articulos"
            puts "s - Salir de la aplicación"
            puts " "
            print "Introduza una de las opciones de arriba: "
            input = gets.chomp
            puts " "
            

            case input                
            when "a"                 
                print 'Indique el nombre del articulo a agregar: '
                _item = gets.chomp
                @list.add_item(_item)

            when "r"
                puts "Lista de Articulos: "
                @list.show_all
                print 'Indique el numero del articulo que desea remover: '
                _item = gets.chomp.to_i

                if _item >= 0 
                    @list.remove_item(_item)
                    puts " "
                    puts "Lista de Articulos: "
                    @list.show_all
                else
                    puts "El numero de articulo no es correcto"
                end              

            when "b"
                @list.remove_all
                puts "Todos los articulos fueron removidos"
                puts " "

            when "m"
                print 'Indique el numero del articulo a Marcar: '
                _item = gets.chomp.to_i
                @list.check_item(_item)
                puts " "
                puts "Lista de Articulos: "
                @list.show_all
                puts " "

            when "v"
                puts "Lista de Articulos: "
                @list.show_all
                puts " "

            when "s"
                break   
            else
                puts "La opcion indicada no existe." 
                puts " "                                
            end 
            puts "Gracias por utilizar nuestra aplicación"
            puts " "
        end
    end
end

list_app = ListApp.new
list_app.run