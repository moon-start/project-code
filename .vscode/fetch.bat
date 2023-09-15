@echo off
chcp 65001 > nul 
@REM editorLangId: 设置在特定语言模式下生效，例如 "bat" 表示批处理文件，"python" 表示 Python 文件。

@REM resourceLangId: 设置在资源（文件）的语言标识下生效。与 editorLangId 不同，它适用于整个文件而不是仅限于编辑器。

@REM resourceExtname: 设置在特定文件扩展名下生效，例如 ".json" 表示 JSON 文件。

@REM editorHasSelection: 设置在编辑器中是否有文本选中时生效。

@REM resourceScheme: 设置在资源的 URI 方案（例如 "file"、"http"）下生效。

@REM config.someSetting: 设置在某个具体的配置项的值满足条件时生效。

@REM explorerResourceIsFolder: 设置在资源是文件夹时生效。

@REM explorerViewletId: 设置在特定的资源视图（例如资源管理器）中生效。

@REM explorerResourceIsRoot: 设置在资源是根目录时生效。

@REM activeEditor: 设置在当前活动编辑器（文件）匹配条件时生效。

@REM workspaceFolderCount: 设置在工作区包含的文件夹数目匹配条件时生效。
@REM --------------------------------------------------
set "nameA=Peg-L"
set "nameB=Peg-L"
set "APP= https://github.com/%nameB%/project-code.git"
git remote rm   %nameA%   > nul 2>nul
git remote add  %nameA%    %APP%
@REM --------------------------------------------------
@REM --------------------------------------------------
set "nameA=魚魚"
set "nameB=JiaYu0220"
set "APP= https://github.com/%nameB%/project-code.git"
git remote rm   %nameA%   > nul 2>nul
git remote add  %nameA%    %APP%
@REM --------------------------------------------------
@REM --------------------------------------------------
set "nameA=貓咪"
set "nameB=HotDogCat0228"
set "APP= https://github.com/%nameB%/project-code.git"
git remote rm   %nameA%   > nul 2>nul
git remote add  %nameA%    %APP%
@REM --------------------------------------------------
@REM --------------------------------------------------
set "nameA=笨笨貓"
set "nameB=moon-start"
set "APP= https://github.com/%nameB%/project-code.git"
git remote rm   %nameA%   > nul 2>nul
git remote add  %nameA%    %APP%
@REM --------------------------------------------------
@REM
@REM @REM 這邊會中斷 npx vite 所以寫在 tasks.json
git config --global   pull.rebase true
git config --global   pull.ff     true
@REM @REM git config --global   pull.rebase false



@REM git remote -v   




@REM @REM 設置::
@REM git config  alias.up-D "!f() { git add .;git commit -m 123;git reset --hard HEAD~1;};f" 
@REM git config  alias.up-m "!f() { git commit --amend -m "$1"; };f" 
@REM git config  alias.up-m "!f() { git checkout main;git branch -D moon;git checkout -b   moon 阿榮/main;git cherry-pick   main~$1..main; };f" 
@REM @REM git checkout -b   moon 阿榮/main
@REM @REM git cherry-pick   main~2..main
@REM git config  alias.cd "!git checkout main"
@REM git checkout main
@REM cls


@REM cd %cd%\\.vscode 
@REM 只限定 阿榮的 main 分支
git fetch Peg-L main
git fetch 貓咪  main
git fetch 魚魚  main
git fetch 笨笨貓  main
git remote -v


git config --global   pull.rebase true
git config --global   pull.ff     true



@REM 合併
@REM git merge 阿榮/main
@REM git commit --amend -m "[git merge] %date% %time%" 



git config  alias.cd-main "!f() { git checkout $1;git switch -c $1;};f" 
echo. @ git cd-main $1 @ git cd-main 阿貓/main