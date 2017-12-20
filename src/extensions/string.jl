extend(s::String, ::Type{Val{:count}}) = length(s)

function Base.getproperty(s::String, name::Symbol)
    extend(s, Val{name})
end
