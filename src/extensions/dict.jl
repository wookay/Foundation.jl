extend(d::Dict, ::Type{Val{:count}}) = length(d)

function Base.getproperty(d::Dict, name::Symbol)
    extend(d, Val{name})
end
