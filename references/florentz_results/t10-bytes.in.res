30: Type -> INT
5: RetType -> Type
7: Formals -> epsilon
30: Type -> INT
39: Exp -> NUM B
16: Statement -> Type ID ASSIGN Exp SC
12: Statements -> Statement
36: Exp -> ID
20: Statement -> RETURN Exp SC
13: Statements -> Statements Statement
4: FuncDecl -> RetType ID LPAREN Formals RPAREN LBRACE Statements RBRACE
30: Type -> INT
5: RetType -> Type
7: Formals -> epsilon
31: Type -> BYTE
39: Exp -> NUM B
16: Statement -> Type ID ASSIGN Exp SC
12: Statements -> Statement
31: Type -> BYTE
36: Exp -> ID
36: Exp -> ID
35: Exp -> Exp BINOP Exp
16: Statement -> Type ID ASSIGN Exp SC
13: Statements -> Statements Statement
36: Exp -> ID
20: Statement -> RETURN Exp SC
13: Statements -> Statements Statement
4: FuncDecl -> RetType ID LPAREN Formals RPAREN LBRACE Statements RBRACE
30: Type -> INT
5: RetType -> Type
7: Formals -> epsilon
31: Type -> BYTE
39: Exp -> NUM B
16: Statement -> Type ID ASSIGN Exp SC
12: Statements -> Statement
4: FuncDecl -> RetType ID LPAREN Formals RPAREN LBRACE Statements RBRACE
6: RetType ->  VOID
7: Formals -> epsilon
30: Type -> INT
38: Exp -> NUM
16: Statement -> Type ID ASSIGN Exp SC
12: Statements -> Statement
4: FuncDecl -> RetType ID LPAREN Formals RPAREN LBRACE Statements RBRACE
2: Funcs -> epsilon
3: Funcs -> FuncDecl Funcs
3: Funcs -> FuncDecl Funcs
3: Funcs -> FuncDecl Funcs
3: Funcs -> FuncDecl Funcs
1: Program -> Funcs
