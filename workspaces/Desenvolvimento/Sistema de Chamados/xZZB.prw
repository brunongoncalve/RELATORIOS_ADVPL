#INCLUDE "PROTHEUS.ch"

#INCLUDE "PROTHEUS.ch"

//----------------------------------------------------------------------------------------------------------------------
/* {Protheus.doc} ABERTURA DE CHAMADOS
TELA - ABERTURA DE CHAMADOS
@author    BRUNO NASCIMENTO GON�ALVES
@since     29/11/2023
@version   12/superior
*/
//----------------------------------------------------------------------------------------------------------------------

USER FUNCTION xZZB()

    LOCAL cAlias      := "ZZB"
    PRIVATE cCadastro := "Abertura de chamados"
    PRIVATE aRotina   := { }

    AADD(aRotina, {"Pesquisar",  "AXPESQUI",0,1})
    AADD(aRotina, {"Visualizar", "AXVISUAL",0,2})
    AADD(aRotina, {"Incluir",    "AXINCLUI",0,3})
    AADD(aRotina, {"Alterar",    "AXALTERA",0,4})
    AADD(aRotina, {"Deletar",    "AXDELETA",0,5})

    DBSELECTAREA(cAlias)
    DBSETORDER(1)

    MBROWSE(6,1,22,75,cAlias) 

RETURN NIL


