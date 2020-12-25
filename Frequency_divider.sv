module Frequency_divider(sysClk, modifiedClk, reset);
input logic sysClk, reset;
output logic modifiedClk;
int lastCounted = 0;
bit isFirstTime=1;


  always_ff @(posedge sysClk)
  begin
    if(reset == 1)
      begin
        modifiedClk=0;
      end
   lastCounted = lastCounted +1;
    if(lastCounted == 25000000)
      begin
        if(modifiedClk == 0)
          begin
            modifiedClk =1; 
            lastCounted=0;
          end
      else
        begin
            modifiedClk =0;
            lastCounted=0; 
          end
      end
  
    
  end
endmodule
