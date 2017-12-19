extension(a::String, ::Val{:count}) = length(a)

function Base.getproperty(a::String, name::Symbol)
    extension(a, Val{name}())
end
