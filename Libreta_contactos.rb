class ContactoAvl
	attr_accessor :right, :left, :value,:height

	def initialize (value)
		@height=0
		@value=value
		@right=nil
		@left=nil
	end
end

class LibretaAvl
	attr_accessor :root

	def initialize
		@root=nil
	end

	def insert (value)
		if @root==nil
			@root=ContactoAvl.new(value)
			@root.height=1
			return
		end
		aux=@root
		until aux==nil
			if value<aux.value
				if aux.left==nil
					aux.left=ContactoAvl.new(value)
					aux.left.height=1	
					return
				end		
				if()
				aux=aux.left
			end	
			if value>aux.value 
				if aux.right==nil
					aux.right = ContactoAvl.new(value)	
					aux.right.height=1
					return
				end
				aux.height=aux.right.height+1
				aux=aux.right
			end		

		end
	end	
	def preorder(nodo)
		if nodo == nil then return end
		print "nodo: ", nodo.value, "\n"
		preorder(nodo.left)
		preorder(nodo.right)
	end
	
	def inorder(nodo)
		if nodo == nil then return end
		inorder(nodo.left)
		print "nodo: ", nodo.value, "\n"
		puts "altura#{nodo.height}"
		inorder(nodo.right)
	end
	
	def postorder(nodo)
		if nodo == nil then return end
		postorder(nodo.left)
		postorder(nodo.right)
		print "nodo: ", nodo.value, "\n"
	end				
end	

Avele = LibretaAvl.new
Avele.insert(50)
Avele.insert(25)
Avele.insert(75)
Avele.insert(1)
Avele.insert(30)
Avele.insert(60)
Avele.insert(100)
Avele.inorder(Avele.root) 
#se subio