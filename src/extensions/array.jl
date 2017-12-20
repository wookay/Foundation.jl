extend(a::Array, ::Type{Val{:count}}) = length(a)
extend(a::Array, ::Type{Val{:append}}) = x->push!(a, x)

function Base.getproperty(a::Array, name::Symbol)
    extend(a, Val{name})
end
