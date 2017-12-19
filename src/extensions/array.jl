extend(a::Array, ::Val{:count}) = length(a)
extend(a::Array, ::Val{:append}) = x->push!(a, x)

function Base.getproperty(a::Array, name::Symbol)
    extend(a, Val{name}())
end
