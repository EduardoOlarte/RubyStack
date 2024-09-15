
require_relative '../model/Model'
class Test

  def self.run

    logic = Model.new

    print "Ingrese un numero: "
    num1= gets.chomp.to_i
    print "Ingrese un numero: "
    num2= gets.chomp.to_i
    print "Ingrese un numero: "
    num3= gets.chomp.to_i

    logic.push_element(num1)
    puts "Elemento #{num1} agregado a la pila."
    
    logic.push_element(num2)
    puts "Elemento #{num2} agregado a la pila."
    
    logic.push_element(num3)
    puts "Elemento #{num3} agregado a la pila."

    peeked_element = logic.peek_element
    if peeked_element.nil?
      puts "La pila está vacía."
    else
      puts "El elemento en la parte superior de la pila es '#{peeked_element}'."
    end

    popped_element = logic.pop_element
    if popped_element.nil?
      puts "La pila está vacía, no se puede hacer pop."
    else
      puts "Elemento '#{popped_element}' eliminado de la pila."
    end

    puts "El tamaño actual de la pila es #{logic.size_of_stack}."

    print "Buscar numero en la pila: "
    num4= gets.chomp.to_i
    if logic.element_exists?(num4)
      puts "El elemento #{num4} existe en la pila."
    else
      puts "El elemento #{num4} no existe en la pila."
    end

    print "Buscar numero en la pila: "
    num5= gets.chomp.to_i
    if logic.element_exists?(num5)
      puts "El elemento #{num5} existe en la pila."
    else
      puts "El elemento #{num5} no existe en la pila."
    end


    popped_element = logic.pop_element
    if popped_element.nil?
      puts "La pila está vacía, no se puede hacer pop."
    else
      puts "Elemento '#{popped_element}' eliminado de la pila."
    end

    puts "El tamaño actual de la pila después de hacer pop es #{logic.size_of_stack}."

  end
end

Test.run
