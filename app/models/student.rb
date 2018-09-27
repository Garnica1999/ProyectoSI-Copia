class Student < ApplicationRecord
	validates_confirmation_of :clave

	validates :documento, presence: true , length: {minimum: 7}, uniqueness: true
	validates :nombres, presence: true, length: {minimum: 3}
	validates :apellidos, presence: true, length: {minimum: 3}
	validates :es_egresado, presence: true, length: {maximum: 1, minimum: 1}
	validates :clave, presence: true, length: {minimum: 8}


end
