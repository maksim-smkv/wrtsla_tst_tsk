*** Settings ***
Library     ../lib/AsyncWait.py

*** Test Cases ***
Run async wait
    AsyncWait.Wait      10
    AsyncWait.Wait      10
    AsyncWait.Wait      10
    AsyncWait.Wait      10
    AsyncWait.Wait      10
    AsyncWait.Wait      10
    AsyncWait.Wait      10
    AsyncWait.Wait      10
    AsyncWait.Run Loop