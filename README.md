# CALC2000 – COBOL Future Value Calculator

**Course:** COBOL Programming – Chapter 1 Assignment
**Author:** [Gabe Dilley](https://github.com/gawdilley)
**GitHub:** [COBOL-Chapter-1-Assignment](https://github.com/gawdilley/COBOL-Chapter-1-Assignment)

---

## Description

CALC2000 is a COBOL program that calculates and displays the future value of an investment using predefined input values. Rather than accepting input from the user, all values are initialized directly within the program. The calculation is repeated three times, doubling the investment amount on each iteration, to demonstrate structured program flow and numeric computation.

---

## What the Program Does

### Input
All values are hardcoded directly into working storage:

| Field | Value |
|-------|-------|
| Initial Investment | $1,000.00 |
| Number of Years | 10 |
| Yearly Interest Rate | 5.5% |

### Processing
The program performs the following steps:

1. **Displays** a program header with descriptive information.
2. **Calculates** the future value of the current investment amount using a `COMPUTE` statement.
3. **Displays** the result alongside the investment details.
4. **Doubles** the investment amount.
5. **Repeats** the calculation and display two additional times using a reusable `PERFORM` paragraph.

The future value formula applied is:

```
FUTURE-VALUE = INVESTMENT-AMOUNT * (1 + INTEREST-RATE) ^ NUMBER-OF-YEARS
```

### Output
For each iteration the program prints:
- Future value
- Investment amount
- Number of years
- Yearly interest rate

---

## Example Output

```
Calculating Future Values

Future Value   =  1,628.89
Investment Amount:   1,000
Number of Years:        10
Yearly Interest Rate:  5.5%

Future Value   =  3,257.79
Investment Amount:   2,000
Number of Years:        10
Yearly Interest Rate:  5.5%

Future Value   =  6,515.58
Investment Amount:   4,000
Number of Years:        10
Yearly Interest Rate:  5.5%

End of session.
```

---

## New Concepts Used

- **COBOL program structure** — organizing code across all four divisions (IDENTIFICATION, ENVIRONMENT, DATA, PROCEDURE) following standard COBOL conventions
- **Hardcoded data initialization** — loading predefined values directly into working-storage fields using `MOVE` statements instead of reading from a file or using `ACCEPT`
- **`COMPUTE` for arithmetic** — using the `COMPUTE` statement with exponentiation to calculate compound interest in a single expression
- **`PERFORM` for reusable paragraphs** — calling a shared calculation and display paragraph on each iteration rather than duplicating logic
- **Numeric editing for output** — using edited `PIC` clauses with commas and decimal points to format currency and percentage values for readable terminal output
- **Removing `ACCEPT` statements** — replacing interactive user input with hardcoded working-storage values to produce a fully automated batch-style program

---

## Authors

| Name | Profile |
|------|---------|
| Gabe Dilley | [GitHub](https://github.com/gawdilley) |
