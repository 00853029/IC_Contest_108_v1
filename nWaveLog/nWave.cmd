wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/JengDeChang/2020_grad_cell/SME.fsdb}
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/\$unit_0x29ffa1f6"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_SME"
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/CurrentState\[1:0\]} \
{/testfixture/u_SME/NextState\[1:0\]} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/has_star} \
{/testfixture/u_SME/i\[31:0\]} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/p_index\[3:0\]} \
{/testfixture/u_SME/p_index_match\[3:0\]} \
{/testfixture/u_SME/p_star_index\[4:0\]} \
{/testfixture/u_SME/patterns\[0:7\]} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/s_index2\[5:0\]} \
{/testfixture/u_SME/s_index\[5:0\]} \
{/testfixture/u_SME/star_index\[4:0\]} \
{/testfixture/u_SME/str_pat\[1:0\]} \
{/testfixture/u_SME/string\[0:31\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/word_begin} \
{/testfixture/u_SME/word_end} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/CurrentState\[1:0\]} \
{/testfixture/u_SME/NextState\[1:0\]} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/has_star} \
{/testfixture/u_SME/i\[31:0\]} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/p_index\[3:0\]} \
{/testfixture/u_SME/p_index_match\[3:0\]} \
{/testfixture/u_SME/p_star_index\[4:0\]} \
{/testfixture/u_SME/patterns\[0:7\]} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/s_index2\[5:0\]} \
{/testfixture/u_SME/s_index\[5:0\]} \
{/testfixture/u_SME/star_index\[4:0\]} \
{/testfixture/u_SME/str_pat\[1:0\]} \
{/testfixture/u_SME/string\[0:31\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/word_begin} \
{/testfixture/u_SME/word_end} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 23007.261279 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 1264857.160977 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 1291894.356556 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/CurrentState\[1:0\]} \
{/testfixture/u_SME/NextState\[1:0\]} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/has_star} \
{/testfixture/u_SME/i\[31:0\]} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/p_index\[3:0\]} \
{/testfixture/u_SME/p_index_match\[3:0\]} \
{/testfixture/u_SME/patterns\[0:7\]} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/s_index2\[5:0\]} \
{/testfixture/u_SME/s_index\[5:0\]} \
{/testfixture/u_SME/str_pat\[1:0\]} \
{/testfixture/u_SME/string\[0:31\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/word_begin} \
{/testfixture/u_SME/word_end} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/p_star_index\[3:0\]} \
{/testfixture/u_SME/star_match_index\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_SME/CurrentState\[1:0\]} \
{/testfixture/u_SME/NextState\[1:0\]} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/has_star} \
{/testfixture/u_SME/i\[31:0\]} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/p_index\[3:0\]} \
{/testfixture/u_SME/p_index_match\[3:0\]} \
{/testfixture/u_SME/patterns\[0:7\]} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/s_index2\[5:0\]} \
{/testfixture/u_SME/s_index\[5:0\]} \
{/testfixture/u_SME/str_pat\[1:0\]} \
{/testfixture/u_SME/string\[0:31\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/word_begin} \
{/testfixture/u_SME/word_end} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_SME/p_star_index\[3:0\]} \
{/testfixture/u_SME/star_match_index\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 1292944.076821 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1241633.560482 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 1286860.115598 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1414989.804968 -snap {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 1416968.924884 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 1414989.804968 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 1409565.550384 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 1415283.007919 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 1410738.362186 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 1413010.685052 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 1411104.865874 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 1412644.181364 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1411031.565136 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 440148.049212 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 1287006.384035 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 1289132.105426 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 1286859.782560 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 1288912.203213 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 1287226.286248 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 1288472.398787 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 1287226.286248 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 1288912.203213 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 927015.466443 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 1292481.949135 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 1260050.037773 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 1287024.709219 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 1258657.323758 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1651739.859351 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 1627184.112246 -snap {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 1591805.511231 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 1603240.426301 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 1606978.763920 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 1626330.158653 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 1665014.622935 -snap {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 1639652.567717 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1637526.846325 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1666920.442113 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 1665014.622935 -snap {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 1593839.606700 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 1640165.672880 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1664208.314821 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 1651527.287212 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1640312.274355 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 1674836.921777 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 1660983.082366 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 1637013.741162 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1671245.185633 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 1630489.975513 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1598750.756121 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetCursor -win $_nWave1 2132723.401921 -snap {("G1" 19)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 2092888.116059 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2121182.200782 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2103809.925965 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2138554.475600 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 2138187.971911 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetCursor -win $_nWave1 2128585.575282 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2131004.499624 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2132763.717327 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvExpandBus -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 2128732.176758 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2130784.597411 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvCollapseBus -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 2138554.475600 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 2100657.994247 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 2089736.184341 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2086804.154836 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
