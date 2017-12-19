extension(a::Array, ::Val{:count}) = length(a)
extension(a::Array, ::Val{:append}) = x->push!(a, x)

function Base.getproperty(a::Array, name::Symbol)
    extension(a, Val{name}())
end
