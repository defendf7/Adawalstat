# Adawalstat
Tool that provide individual status of Ada wallets

# Background
In the Cardano Ecosystem, a Stake Pool Operator (SPO) plays a major role.  Because of this, an aspect of SPO that
is becoming increasingly important is its interaction with its own delegators.  This led to the idea for the
creation of the tool Adawalstat which has the purpose to provide individual status to each delegators about their wallets,
at first status such as wallet live Ada amount (but can always be expanded to more complex information such as NFTs, and Defi info, etc.).
This repository provides the resources and documentation you need in order to make use of the Adawalstat tool.

# Pre-Requisites
1. Must have support for Macro-enabled Workbook in Excel
2. Must have Existing Telegram Bot Set-up that can interact individually to Telegram users
3. A ready list of Delegator's Stake Key Address with corresponding Telegram Chat ID 

# Step-by-Step Guide
1. In your local computer, open the file Adawalstat.xlsm and allow to enable workbook macro execution.
2. Update the columns of the workbook to your desired information of delegator's stake key addresses,
    their matching telegram chat ID and telegram name, and then the live Ada amount of wallet
    using the stake key address as reference.
3. Update the other needed information in the workbook such as the Telegram Bot Token, the epoch no. for this wallet report,
    the exchange rate against 1 ada in terms of your local currency, and the date of the exchange rate.
4. With all relevant information updated in the workbook, execute the macro by "ctrl + w".  An output file "walreport.sh"
    shall be generated on the same folder where Adawalstat tool is located.
5. "walreport.sh" is a shell script file, which you can execute in a Linux operating system by issuing it as command "./walreport.sh".
    Upon execution, it automatically sends the wallet information individually via the Telegram Bot to each Telegram users according
    to the Stake Key Addresses in the list.
