--============================================================================
-- Boolean Expr API ( for compositing trigger conditions and unit filter funcs...)
--============================================================================

BooleanExpr = {}

local m = BooleanExpr

---@param operandA boolexpr
---@param operandB boolexpr
---@return boolexpr
function m.And(operandA, operandB)
    return And(operandA, operandB)
end

---@param operandA boolexpr
---@param operandB boolexpr
---@return boolexpr
function m.Or(operandA, operandB)
    return Or(operandA, operandB)
end

---@param operand boolexpr
---@return boolexpr
function m.Not(operand)
    return Not(operand)
end

---@param func code
---@return conditionfunc
function m.getCondition(func)
    return Condition(func)
end

---@param c conditionfunc
function m.destroyCondition(c)
    return DestroyCondition(c)
end

---@param func code
---@return filterfunc
function m.getFilter(func)
    return Filter(func)
end

---@param f filterfunc
function m.destroyFilter(f)
    return DestroyFilter(f)
end

---@param e boolexpr
function m.destroy(e)
    DestroyBoolExpr(e)
end