module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output reg match;
output reg [5:0] match_index;
output reg valid;

reg [1:0] CurrentState, NextState;
reg [7:0] string[0:31];
reg [7:0] patterns[0:7];
reg [5:0] s_index, s_index2;
reg [3:0] p_index, p_index_match, p_star_index;
reg [4:0] star_match_index;
reg word_begin, has_star;
reg [1:0] str_pat;
integer i;
always @(posedge clk,posedge reset)begin
    if(reset)begin
        for(i=0;i<32;i=i+1)  string[i] <= 0;
        for(i=0;i<8;i=i+1)  patterns[i] <= 0;
        s_index <= 0;
        s_index2 <= 0;
        p_index <= 0;
        p_index_match <= 0;
        p_star_index <= 0;
        match_index <= 0;
        star_match_index <= 0;
        match <= 0;
        word_begin <= 0;
        has_star <= 0;
    end
    else begin
        case(CurrentState)
            2'b00:begin //input
                valid <= 0;
                match <= 0;
                match_index <= 0;
                str_pat = {isstring, ispattern};
                if(isstring)begin   //isstring
                    string[s_index] <= chardata;
                    s_index <= s_index + 1;
                end
                else if(ispattern)begin  //ispattern
                    patterns[p_index] <= chardata;
                    p_index <= p_index + 1;
                end
                else begin
                    if(s_index != 0)   s_index2 <= s_index;
                end
            end
            2'b01:begin //matching
                case(patterns[p_index_match])
                    8'h5E:begin //^
                        for(i=0;i<7;i=i+1)    patterns[i] <= patterns[i+1];
                        p_index <= p_index -1;
                        word_begin <= 1;
                        // p_index_match <= 1;
                    end
                    8'h2E:begin //.
                        p_index_match <= p_index_match + 1;
                        if(p_index_match+1 == p_index)begin
                            if(has_star)    match_index <= star_match_index;
                            match <= 1;
                        end    
                    end
                    8'h2A:begin //*
                        has_star <= 1;
                        p_star_index <= p_index_match;
                        star_match_index <= match_index;
                        p_index_match <= p_index_match + 1;
                        // if(patterns[p_index_match+1] == string[match_index+star_index])begin
                        //     p_index_match <= p_index_match + 1;
                        // end
                        // else begin
                        //     star_index <= star_index + 1;
                        // end
                    end
                    default:begin
                        if(match)begin
                            if(has_star)    match_index <= star_match_index;
                        end
                        else if((!has_star && string[match_index+p_index_match]==patterns[p_index_match]) || (has_star && (string[match_index+p_index_match-1]==patterns[p_index_match])))begin
                            if(p_index_match == (p_index-1))begin
                                if(word_begin)begin
                                    if((!has_star && (string[match_index-1]==8'h20 || match_index==0)) || (has_star && (string[star_match_index-1]==8'h20 || star_match_index==0)))  begin
                                        if(has_star)    match_index <= star_match_index;
                                        match <= 1;
                                    end
                                    else    begin
                                        if(has_star)   begin
                                            p_index_match <= p_star_index + 1;
                                            match_index <= match_index + 1;
                                        end
                                        else begin
                                            p_index_match <= 0;
                                            match_index <= match_index + 1;
                                        end
                                    end
                                end
                                else    begin
                                    if(has_star)    match_index <= star_match_index;
                                    match <= 1;
                                end
                            end
                            else    p_index_match <= p_index_match + 1;
                        end
                        else if(patterns[p_index_match] == 8'h24 && ((!has_star && string[match_index+p_index_match]==8'h20) || (has_star && string[match_index+p_index_match-1]==8'h20) || (!has_star && (match_index+p_index_match==s_index2) || (has_star && (match_index+p_index_match-1==(s_index2))))))begin //$
                            if(word_begin)begin
                                if(string[match_index-1]==8'h20 || match_index==0)  begin
                                    if(has_star)    match_index <= star_match_index;
                                    match <= 1;
                                end
                                else    begin
                                    if(has_star)   begin
                                        p_index_match <= p_star_index + 1;
                                        match_index <= match_index + 1;
                                    end
                                    else begin
                                        p_index_match <= 0;
                                        match_index <= match_index + 1;
                                    end
                                end
                            end
                            else    begin
                                if(has_star)    match_index <= star_match_index;
                                match <= 1;
                            end
                        end
                        else begin
                            if(has_star)   begin
                                p_index_match <= p_star_index + 1;
                                match_index <= match_index + 1;
                            end
                            else begin
                                match_index <= match_index + 1;
                                p_index_match <= 0;
                            end
                        end
                    end
                endcase

                
            end
            2'b10:begin
                valid <= 1;
                s_index <= 0;
                p_index <= 0;
                p_index_match <= 0;
                star_match_index <= 0;
                word_begin <= 0;
                has_star <= 0;
            end
            2'b11:begin
                
            end
            default:;
        endcase
    end
end

always @(*)begin
    case(CurrentState)
        2'b00:begin
            if((!ispattern)&&(!isstring))    NextState <= 2'b01;
            else    NextState <= 2'b00;
        end
        2'b01:begin
            if(match)   NextState <= 2'b10;
            else if(has_star)begin
                if(match_index == (s_index2)) NextState <= 2'b10;
                else NextState <= 2'b01;
            end
            else if(match_index + p_index -1  > (s_index2))   NextState <= 2'b10;
            else    NextState <= 2'b01;
        end
        2'b10:begin
            NextState <= 2'b00;
        end
        2'b11:begin
            NextState <= 2'b00;
        end
        default:;
    endcase
end
// always @(*)begin
//     case(CurrentState)
//         2'b00:begin
            
//         end
//         2'b10:begin
//         end
//         2'b10:begin
//         end
//         2'b11:begin
//         end
//         default:;
//     endcase
// end

always @(posedge clk,posedge reset) begin
    if(reset)   CurrentState <= 0;
    else    CurrentState <= NextState;
end

endmodule
