:: source https://stackoverflow.com/questions/14529246/multiple-choices-menu-on-batch-file
:: color codes from 
:: https://gist.githubusercontent.com/mlocati/fdabcaeb8071d5c75a2d51712db24011/raw/b710612d6320df7e146508094e84b92b34c77d48/win10colors.cmd

@echo off
:START
echo [92m
set SRV=C:\Users\FabioMatricardi\Documents\DEV\#LCPP-MASTER
set DML=C:\Users\FabioMatricardi\Documents\DEV\COLL_SmollModels
echo.
echo ===================================================
echo What MODEL would you like to Run as a llama-server?
echo ===================================================
echo 1  - SmolLM2-360M-Instruct.Q8_0.gguf
echo 2  - SmolLM2-135M-Instruct-f16.gguf
echo 3  - llamaestra-3.2-1b-instruct-v0.1-q8_0.gguf
echo 4  - gemma-2-2b-it-Q5_K_M.gguf
echo 5  - granite-3.1-2b-instruct-Q5_K_L.gguf
echo 6  - granite-3.1-3b-a800m-instruct-Q5_K_L.gguf
echo 7  - Llama-SmolTalk-3.2-1B-Instruct.Q6_K.gguf
echo 8  - Falcon3-1B-Instruct.Q6_K.gguf
echo 9  - orca_mini_v9_1_1B-Instruct.Q8_0.gguf
echo 10 - qwen2.5-1.5b-instruct-q5_k_m.gguf
echo 0 - EXIT

set /p whatapp=

if %whatapp%==1 (goto MODEL1
) else if %whatapp%==2 (goto MODEL2 
) else if %whatapp%==3 (goto MODEL3
) else if %whatapp%==4 (goto MODEL4
) else if %whatapp%==5 (goto MODEL5
) else if %whatapp%==6 (goto MODEL6
) else if %whatapp%==7 (goto MODEL7
) else if %whatapp%==8 (goto MODEL8
) else if %whatapp%==9 (goto MODEL9
) else if %whatapp%==10 (goto MODEL10
) else if %whatapp%==0 (goto QUIT
) else (goto :INVALID)

:MODEL1
cls
echo Starting llama-server API for SmolLM2-360M-Instruct.Q8_0.gguf
echo start cmd.exe /k D:\SmolLM2-360M_gradio\llamacpp\llama-server.exe -m D:\SmolLM2-360M_gradio\llamacpp\model\SmolLM2-360M-Instruct.Q8_0.gguf -c 8192 -ngl 0
start cmd.exe /k "%SRV%\llama-server.exe -m %DML%\SmolLM2-360M-Instruct.Q8_0.gguf -c 8192 -ngl 0"
goto :START

:MODEL2
cls
echo Starting llama-server API for SmolLM2-135M-Instruct-f16.gguf
start cmd.exe /k "%SRV%\llama-server.exe -m %DML%\SmolLM2-135M-Instruct-f16.gguf -c 8192 -ngl 0"
goto :START

:MODEL3
cls
echo Starting llama-server API for llamaestra-3.2-1b-instruct-v0.1-q8_0.gguf
start cmd.exe /k "%SRV%\llama-server.exe -m %DML%\llamaestra-3.2-1b-instruct-v0.1-q8_0.gguf -c 8192 -ngl 0"
goto :START

:MODEL4
cls
echo Starting llama-server API for GEMMA2-2B gemma-2-2b-it-Q5_K_M.gguf
start cmd.exe /k "%SRV%\llama-server.exe -m %DML%\gemma-2-2b-it-Q5_K_M.gguf -c 8192 -ngl 0"
goto :START

:MODEL5
cls
echo Starting llama-server API for GRANITE-3.1-2B-DENSE  granite-3.1-2b-instruct-Q5_K_L.gguf
start cmd.exe /k "%SRV%\llama-server.exe -m %DML%\granite-3.1-2b-instruct-Q5_K_L.gguf -c 8192 -ngl 0"
goto :START

:MODEL6
cls
echo Starting llama-server API for GRANITE-3.1-MOE 3B ACTIVE 800M
start cmd.exe /k "%SRV%\llama-server.exe -m %DML%\granite-3.1-3b-a800m-instruct-Q5_K_L.gguf -c 8192 -ngl 0"
goto :START

:MODEL7
cls
echo Starting llama-server API for Llama-SmolTalk-3.2-1B-Instruct.Q6_K.gguf
start cmd.exe /k "%SRV%\llama-server.exe -m %DML%\Llama-SmolTalk-3.2-1B-Instruct.Q6_K.gguf -c 81192 -ngl 0"
goto :START

:MODEL8
cls
echo Starting llama-server API for Falcon3-1B-Instruct.Q6_K.gguf
start cmd.exe /k "%SRV%\llama-server.exe -m %DML%\Falcon3-1B-Instruct.Q6_K.gguf -c 81192 -ngl 0"
goto :START

:MODEL9
cls
echo Starting llama-server API for orca_mini_v9_1_1B-Instruct.Q8_0.gguf
start cmd.exe /k "%SRV%\llama-server.exe -m %DML%\orca_mini_v9_1_1B-Instruct.Q8_0.gguf -c 81192 -ngl 0"
goto :START

:MODEL10
cls
echo Starting llama-server API for qwen2.5-1.5b-instruct-q5_k_m.gguf
start cmd.exe /k "%SRV%\llama-server.exe -m %DML%\qwen2.5-1.5b-instruct-q5_k_m.gguf -c 81192 -ngl 0"
goto :START

:INVALID
cls
echo [44m [1m [93m
echo INVALID CHOICE
echo [0m
goto :START

:QUIT
cls
echo [91mBYE BYE
echo [0m
pause
exit




