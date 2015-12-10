class HomeController < ApplicationController
  def inicio
     @titulo = "Inicio"
  end

  def quienes_somos
     @titulo = "Quienes somos"
     @nombre = params[:nombre]
  end

  def presupuesto
     @titulo = "Presupuesto #{params[:numero]}"

     case params[:numero]
         when '1' then redirect_to pares_path
         when '2' then redirect_to bucle_path
         else render :text => "No existe un presupuesto con ese numero"
     end
  end

  def pares
     @array_pares = []
     (1..100).step(1) do |n|
        if n%2 == 0
           @array_pares << n
        end
     end
  end

  def bucle
     @num = 20
  end
end
