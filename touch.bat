@echo off

if "%1%" == ".prettier" (
    goto prettier
)

if "%1%" == ".prettierrc" (
    goto prettier
)

if "%1%" == ".gitignore" (
    goto gitignore
)



goto default


:prettier
curl https://raw.githubusercontent.com/tuannguyen7326/prettier_config/main/config_01/.prettierrc > .prettierrc
goto end

:gitignore
echo .vscode > .gitignore
echo *.ignore.* >> .gitignore
echo node_modules >> .gitignore
goto end


:default
cd . > %*
goto end


:end
echo on