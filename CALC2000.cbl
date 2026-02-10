000100 identification division.                                         00010011
000200* Program info                                                    00020011
000300 program-id. calc2000.                                            00030011
000400                                                                  00040011
000500* Who wrote it and when                                           00050011
000600* Programmer.: Gabe Dilley & Jacob Schamp                         00060011
000700* Date.......: 2026.01.29                                         00070011
000800* GitHub URL.:                                                    00080011
000900* https://github.com/gawdilley/COBOL-Chapter-1-Assignment         00090011
001000* This program figures out future investment values               00100011
001100                                                                  00110011
001200 environment division.                                            00120011
001300                                                                  00130011
001400 input-output section.                                            00140011
001500                                                                  00150011
001600 data division.                                                   00160011
001700                                                                  00170011
001800 file section.                                                    00180011
001900                                                                  00190011
002000 working-storage section.                                         00200011
002100                                                                  00210011
002200* Values used as input                                            00220011
002300 01  input-values.                                                00230011
002400     05  number-entered              pic 9        value 1.        00240011
002500     05  investment-amount           pic 99999    value 1000.     00250011
002600     05  number-of-years             pic 99       value 10.       00260011
002700     05  yearly-interest-rate        pic 99v9     value 5.5.      00270011
002800                                                                  00280011
002900* Values used for calculations                                    00290011
003000 01  work-fields.                                                 00300011
003100     05  future-value                pic 9(7)v99.                 00310011
003200     05  year-counter                pic 999.                     00320011
003300                                                                  00330011
003400* Values for displaying data                                      00340011
       01 display-fields.
003500     05  edited-whole-value         pic zz,zzz,zz9.               00350011
           05  edited-number-of-years     pic z9.
           05  edited-interest-rate       pic z9.9.
003600     05  edited-decimal-value       pic zzz,zzz.99.               00360011
003700                                                                  00370011
003800 procedure division.                                              00380011
003900                                                                  00390011
004000* Start Program                                                   00400011
004100 000-calculate-future-values.                                     00410011
004200     display "Calculating Future Values".                         00420011
004300                                                                  00430011
004400* Calculate one time                                              00440011
004500     perform 100-calculate-future-value                           00450011
004600                                                                  00460011
004700* Double investment                                               00470011
004800     compute investment-amount = investment-amount * 2            00480011
004900                                                                  00490011
005000* Calculate with new amount                                       00500011
005100     perform 100-calculate-future-value                           00510011
005200                                                                  00520011
005300     display "End of session.".                                   00530011
005400     stop run.                                                    00540011
005500                                                                  00550011
005600* Calculate the future values over the years                      00560011
005700 100-calculate-future-value.                                      00570011
005800      move investment-amount to future-value                      00580011
005900      move 1 to year-counter                                      00590011
006000                                                                  00600011
006100* Loop through each year                                          00610011
006200      perform 120-calculate-next-fv                               00620011
006300           until year-counter > number-of-years                   00630011
006400                                                                  00640011
006500* Show results                                                    00650011
006600      perform 140-display-values.                                 00660011
006700                                                                  00670011
006800* Displays the calculated values                                  00680011
006900 140-display-values.                                              00690011
007000     move future-value to edited-whole-value                      00700011
           move number-of-years to edited-number-of-years 
           move yearly-interest-rate to edited-interest-rate 
           move future-value to edited-decimal-value 
           move investment-amount to edited-whole-value 
007100     display "Future value = " edited-whole-value                 00710011
007200     display  "  Investment Amount: " edited-whole-value          00720011
007300              "  Number of Years: " edited-number-of-years        00730011
007400              "  Yearly Interest Rate: " edited-interest-rate "%" 00740011
007500              "  Future Value: " edited-decimal-value.            00750011
007600                                                                  00760011
007700* Calculate the next year's value                                 00770011
007800 120-calculate-next-fv.                                           00780011
007900     compute future-value rounded =                               00790011
008000         future-value +                                           00800011
008100             (future-value * yearly-interest-rate / 100).         00810011
008200                                                                  00820011
008300* Move on to the next year                                        00830011
008400     add 1 to year-counter.                                       00840011
