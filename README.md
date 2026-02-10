# CALC2000 – COBOL Future Value Calculator

A COBOL program developed for **CIS352: Intro to Enterprise Computing** that calculates and displays the future value of an investment using predefined input values. This project demonstrates foundational COBOL programming concepts, structured program design, numeric editing, and professional documentation practices using GitHub.

---

## 📘 Project Overview

The **CALC2000** program computes the future value of an investment based on:

- Initial investment amount  
- Number of years  
- Yearly interest rate  

Unlike the original version of the program, this implementation removes interactive user input and instead initializes all values directly within the program. The calculation is performed multiple times while doubling the investment amount on each iteration to demonstrate program flow and numeric computation.

---

## ⚙️ Program Behavior

When executed, the program:

1. Displays a program header with descriptive information  
2. Calculates and displays the future value of an investment  
3. Doubles the investment amount  
4. Repeats the calculation two additional times  
5. Formats all numeric output using edited numeric fields  

### Program Output:

Calculating Future Values
Future Value = 1,628.89
Investment Amount: 1,000
Number of Years: 10
Yearly Interest Rate: 5.5%

Future Value = 3,257.79
Investment Amount: 2,000
Number of Years: 10
Yearly Interest Rate: 5.5%

End of session.



---

## 🧠 Concepts Demonstrated

- COBOL program structure and paragraph organization  
- Program header documentation  
- Use of `COMPUTE` statements for arithmetic operations  
- Removal of `ACCEPT` statements and conditional input logic  
- Numeric editing for formatted output  
- Reusable paragraphs with `PERFORM`  
- Professional GitHub repository practices  

---

## 🖥️ Program Screenshots

Below are screenshots showing some of the CALC2000 program changes that we have made

### Program Header
![Program Output](Screenshots/Screenshot%202026-01-29%20130847.png)

### Additional Changes
![Additional Output](Screenshots/Screenshot%202026-01-29%20132629.png)

---

## 📂 Repository Structure

```text
.
├── CALC2000.CBL
├── CALC2000.cbl
├── README.md
├── Screenshots/
│   ├── Screenshot 2026-01-29 130847.png
│   ├── Screenshot 2026-01-29 132629.png
│   ├── Screenshot 2026-01-29 134529.png
│   └── Screenshot 2026-01-29 134605.png
├── Peer Review/
│   └── Jacob Peer Review.pdf

