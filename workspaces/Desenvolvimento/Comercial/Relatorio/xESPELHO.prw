#INCLUDE "RPTDEF.CH"
#INCLUDE 'TOPCONN.ch'
#INCLUDE "FWPrintSetup.ch"
#INCLUDE "protheus.ch"

//----------------------------------------------------------------------------------------------------------------------
/* {Protheus.doc} ESPELHO DE DEVOLU��O
RELATORIO - ESPELHO DE DEVOLU��O
@author    BRUNO NASCIMENTO GON�ALVES
@since     15/02/2024
@version   12/superior
*/
//----------------------------------------------------------------------------------------------------------------------

USER FUNCTION xESPELHO()

    LOCAL lExisteArquivo := FILE("tmp\arquivo.txt", 1, .T.)
    LOCAL cTextHtml      := ""
    LOCAL cQuery         := ""
    LOCAL cQuery1        := ""
    
    cQuery := " SELECT TOP 1 "  + CRLF
    cQuery += " A.[A1_CGC], " + CRLF
    cQuery += " A.[A1_NOME], " + CRLF
    cQuery += " A.[A1_END], " + CRLF
    cQuery += " A.[A1_INSCR] " + CRLF
    cQuery += " FROM " + RETSQLNAME("SA1") + " A " + CRLF
    cQuery += " WHERE A.[D_E_L_E_T_] = ' ' AND A.[A1_MSBLQL] =  '2'"

    cAlias := MPSYSOPENQUERY(cQuery)

    cQuery1 := " SELECT TOP 10 "  + CRLF
    cQuery1 += " A.[A1_CGC], " + CRLF
    cQuery1 += " A.[A1_NOME], " + CRLF
    cQuery1 += " A.[A1_END], " + CRLF
    cQuery1 += " A.[A1_INSCR] " + CRLF
    cQuery1 += " FROM " + RETSQLNAME("SA1") + " A " + CRLF
    cQuery1 += " WHERE A.[D_E_L_E_T_] = ' ' AND A.[A1_MSBLQL] =  '2'"

    cAlias1 := MPSYSOPENQUERY(cQuery1)

    cTextHtml += " <!DOCTYPE html> " + CRLF
    cTextHtml += " <html> " + CRLF
    cTextHtml += " <head> " + CRLF
    cTextHtml += " <style> " + CRLF
    cTextHtml += " table { " + CRLF
    cTextHtml += " width:100%; " + CRLF
    cTextHtml += " } " + CRLF
    cTextHtml += " table, th, td { " + CRLF
    cTextHtml += " border: 1px solid black; " + CRLF
    cTextHtml += " border-collapse: collapse; " + CRLF
    cTextHtml += " } " + CRLF
    cTextHtml += " th, td { " + CRLF
    cTextHtml += " padding: 15px; " + CRLF
    cTextHtml += " text-align: left; " + CRLF
    cTextHtml += " } " + CRLF
    cTextHtml += " </style> " + CRLF
    cTextHtml += " </head> " + CRLF
    cTextHtml += " <body> " + CRLF
    cTextHtml += " " + CRLF
    cTextHtml += " <table> " + CRLF
    cTextHtml += " <tr> " + CRLF
    cTextHtml += " <th><center><img src='C:\tmp\LGMID.png'></center></th> " + CRLF
    cTextHtml += " <th><center><h4>MODELO DE NOTA FISCAL DE DEVOLU��O</h4></center></th> " + CRLF
    cTextHtml += " <th><center><h4>N� DA DEVOLU��O <br> 8 <br> DATA DA DEVOLU��O <br> 22/06/2024</h4></center></th> " + CRLF
    cTextHtml += " </tr> " + CRLF
    cTextHtml += " </table> " + CRLF
    cTextHtml += " <br> " + CRLF
    cTextHtml += " <h3>1 - Remente</h3> " + CRLF
    cTextHtml += " <table> " + CRLF
    cTextHtml += " <tr> " + CRLF
    cTextHtml += " <th>CNPJ</th> " + CRLF
    cTextHtml += " <th>RAZAO SOCIAL</th> " + CRLF
    cTextHtml += " <th>ENDERE�O</th> " + CRLF
    cTextHtml += " <th>INSCRI��O ESTADUAL</th> " + CRLF
    cTextHtml += " </tr> " + CRLF
    cTextHtml += " <tr> " + CRLF
    cTextHtml += " <td> "+ (cAlias)->A1_CGC +"</td> " + CRLF
    cTextHtml += " <td> "+ (cAlias)->A1_NOME +"</td> " + CRLF
    cTextHtml += " <td> "+ (cAlias)->A1_END +"</td> " + CRLF
    cTextHtml += " <td> "+ (cAlias)->A1_INSCR +"</td> " + CRLF
    cTextHtml += " </tr> " + CRLF
    cTextHtml += " </table> " + CRLF
    cTextHtml += " <br> " + CRLF
    cTextHtml += " <h3>2 - Natureza de Opera��o</h3> " + CRLF
    cTextHtml += " <table> " + CRLF
    cTextHtml += " <tr> " + CRLF
    cTextHtml += " <th>DEVOLU��O</th> " + CRLF
    cTextHtml += " </tr> " + CRLF
    cTextHtml += " </table> " + CRLF
    cTextHtml += " <br> " + CRLF
    cTextHtml += " <h3>3 - DESTINATARIO</h3> " + CRLF
    cTextHtml += " <table> " + CRLF
    cTextHtml += " <tr> " + CRLF
    cTextHtml += " <th>CNPJ</th> " + CRLF
    cTextHtml += " <th>RAZAO SOCIAL</th> " + CRLF
    cTextHtml += " <th>ENDERE�O</th> " + CRLF
    cTextHtml += " <th>INSCRI��O ESTADUAL</th> " + CRLF
    cTextHtml += " </tr> " + CRLF
    cTextHtml += " <tr> " + CRLF
    cTextHtml += " <td> "+ (cAlias)->A1_CGC +"</td> " + CRLF
    cTextHtml += " <td> "+ (cAlias)->A1_NOME +"</td> " + CRLF
    cTextHtml += " <td> "+ (cAlias)->A1_END +"</td> " + CRLF
    cTextHtml += " <td> "+ (cAlias)->A1_INSCR +"</td> " + CRLF
    cTextHtml += " </tr> " + CRLF
    cTextHtml += " </table> " + CRLF
    cTextHtml += " <br> " + CRLF
    cTextHtml += " <h3>4 - Dados do Produto</h3> " + CRLF
    cTextHtml += " <table> " + CRLF
    cTextHtml += " <tr> " + CRLF
    cTextHtml += " <th>PROD</th> " + CRLF
    cTextHtml += " <th>DESCRI��O DO PRODUTO</th> " + CRLF
    cTextHtml += " <th>CL FISCAL</th> " + CRLF
    cTextHtml += " <th>CFOP</th> " + CRLF
    cTextHtml += " <th>UN</th> " + CRLF
    cTextHtml += " <th>QTDE</th> " + CRLF
    cTextHtml += " <th>VL UNI</th> " + CRLF
    cTextHtml += " <th>VL TOTAL</th> " + CRLF
    cTextHtml += " <th>BASE ICMS</th> " + CRLF
    cTextHtml += " <th>VL ICMS</th> " + CRLF
    cTextHtml += " <th>VL IPI</th> " + CRLF
    cTextHtml += " <th>%ICMS</th> " + CRLF
    cTextHtml += " <th>%IPI</th> " + CRLF
    cTextHtml += " <th>BASE ST</th> " + CRLF
    cTextHtml += " <th>VL ST</th> " + CRLF
    cTextHtml += " <th>MVA</th> " + CRLF
    WHILE (cAlias1)->(!EOF())
        cTextHtml += " <tr> " + CRLF
        cTextHtml += " <td> "+ (cAlias1)->A1_CGC +"</td> " + CRLF
        cTextHtml += " <td> "+ (cAlias1)->A1_NOME +"</td> " + CRLF
        cTextHtml += " <td> "+ (cAlias1)->A1_END +"</td> " + CRLF
        cTextHtml += " <td> "+ (cAlias1)->A1_INSCR +"</td> " + CRLF
        (cAlias1)->(DBSKIP())
    ENDDO
    (cAlias1)->(DBCLOSEAREA())  
    cTextHtml += " </tr> " + CRLF
    cTextHtml += " </table> " + CRLF
    cTextHtml += " <br> " + CRLF
    cTextHtml += " <h3>5 - Dados do Adicionais</h3> " + CRLF
    cTextHtml += " " + CRLF
    cTextHtml += " </body> " + CRLF
    cTextHtml += " </html> " + CRLF
    
    IF lExisteArquivo
        RETURN "O arquivo j� existe no servidor."
    ELSE
        hArquivo := FCREATE("tmp\arquivo.html") 
        IF hArquivo > 0
            FWRITE(hArquivo, cTextHtml)
            FCLOSE(hArquivo)
            RETURN "Arquivo criado com sucesso!"
        ELSE
            RETURN "Erro ao criar o arquivo."
        ENDIF
    ENDIF

RETURN 

