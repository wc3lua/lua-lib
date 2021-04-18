--============================================================================
-- Boolean Expr API ( for compositing trigger conditions and unit filter funcs...)
--============================================================================

Types.boolExpr = 'booleanxpr'

BooleanExpr = {}

local m = BooleanExpr

---@param boolexpr boolexpr
---@return BoolExpr
function m.new(boolexpr)
    return Handle.new(boolexpr, Types.boolExpr)
end

---@param operandA BoolExpr
---@param operandB BoolExpr
---@return BoolExpr
function m.And(operandA, operandB)
    return m.new(And(operandA.handle, operandB.handle))
end

---@param operandA BoolExpr
---@param operandB BoolExpr
---@return BoolExpr
function m.Or(operandA, operandB)
    return m.new(Or(operandA.handle, operandB.handle))
end

---@param operand BoolExpr
---@return BoolExpr
function m.Not(operand)
    return m.new(Not(operand.handle))
end

---@param func code
---@return ConditionFunc
function m.getCondition(func)
    return m.new(Condition(func))
end

---@param c ConditionFunc
function m.destroyCondition(c)
    DestroyCondition(c.handle)
end

---@param func code
---@return FilterFunc
function m.getFilter(func)
    return m.new(Filter(func))
end

---@param f filterfunc
function m.destroyFilter(f)
    DestroyFilter(f.handle)
end

---@param e boolexpr
function m.destroy(e)
    DestroyBoolExpr(e.handle)
end