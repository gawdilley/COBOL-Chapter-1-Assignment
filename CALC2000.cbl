       identification division.
      * Program info
       program-id. calc2000.

      * Who wrote it and when
      * Programmer.: Gabe Dilley & Jacob Schamp  
      * Date.......: 2026.01.29
      * GitHub URL.: 
      * https://github.com/gawdilley/COBOL-Chapter-1-Assignment
      * This program figures out future investment values

       environment division.

       input-output section.

       data division.

       file section.

       working-storage section.

      * Values used as input
       01  input-values.
           05  number-entered              pic 9        value 1.
           05  investment-amount           pic 99999    value 1000.
           05  number-of-years             pic 99       value 10.
           05  yearly-interest-rate        pic 99v9     value 5.5.

      * Values used for calculations
       01  work-fields.
           05  future-value                pic 9(7)v99.
           05  year-counter                pic 999.

      * Values for displaying data
           05  edited-whole-value         pic zz,zzz,zz9.
           05  edited-decimal-value       pic zzz,zzz.99.

       procedure division.

      * Start Program
       000-calculate-future-values.
           display "Calculating Future Values".

      * Calculate one time
           perform 100-calculate-future-value

      * Double investment
           compute investment-amount = investment-amount * 2

      * Calculate with new amount
           perform 100-calculate-future-value

           display "End of session.".
           stop run.

      * Calculate the future values over the years
       100-calculate-future-value.  
            move investment-amount to future-value
            move 1 to year-counter

      * Loop through each year
            perform 120-calculate-next-fv
                 until year-counter > number-of-years

      * Show results
            perform 140-display-values.
            
      * Displays the calculated values
       140-display-values.
           move future-value to edited-whole-value
           display "Future value = " edited-whole-value
           display  "  Investment Amount: " investment-amount
                    "  Number of Years: " number-of-years
                    "  Yearly Interest Rate: " yearly-interest-rate "%"
                    "  Future Value: " future-value.

      * Calculate the next year's value
       120-calculate-next-fv.
           compute future-value rounded =
               future-value +
                   (future-value * yearly-interest-rate / 100).

      * Move on to the next year
           add 1 to year-counter.
