" -------------------------------------------------
"  normalizacion 
" -------------------------------------------------

" KO - nombres de tablas con corchetes
:%s/[\[\]]//g

" KO - tipos
:%s/Long Integer/int/g
:%s/Memo\/Hyperlink/text/g


" KO - columnas con espacios
:%s/\(PSP\) /\1_/g
:%s/Quantitative indicator_ID/\Quantitative_indicator_ID/g
:%s/Source for selection/Source_for_selection/g
:%s/Case Study_Name/Case_Study_Name/g
:%s/Case Study_Short description/Case_Study_Short_description/g


" KO - tabla 'errores de pegado' eliminada manualmente
" KO - columnas con palabras reservadas - borrada manualmente
" Country
" IS			Double, 
:wq
