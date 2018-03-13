extend(f::typeof(+), ::Type{Val{:name}}) = nameof(f)

function Base.getproperty(f::typeof(+), name::Symbol)
    extend(f, Val{name})
end
