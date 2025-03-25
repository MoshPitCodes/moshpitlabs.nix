{ pkgs, ... }:
let
  # Define code-cursor as a vscode extension
  cursor-vscode = pkgs.vscode-utils.buildVscodeMarketplaceExtension {
    mktplcRef = {
      name = "cursor-vscode";
      publisher = "cursor";
      version = "1.16.0"; # Update to the latest version as needed
      hash = "sha256-Rp5UJAqCFBYarQnvPF+lCiHGKBNrG2h7oTZHOzwMmlg="; # Replace with actual hash
    };
  };
in
{
  programs.code-cursor = {
    enable = true;
    package = pkgs.vscodium;
    profiles.default = {
      extensions =
        with pkgs.vscode-extensions;
        [
          # Your existing extensions
          jnoortheen.nix-ide
          arrterian.nix-env-selector
          ms-vscode.cpptools
          jdinhlife.gruvbox

          # Add code-cursor
          cursor-vscode
        ]
        ++ [
          # Extensions defined in the let block
          cursor-vscode
        ];

      userSettings = {
        # Your existing settings
        "update.mode" = "none";
        "extensions.autoUpdate" = false;
        "window.titleBarStyle" = "custom";
        "window.menuBarVisibility" = "toggle";
        "editor.fontFamily" = "'Maple Mono', 'SymbolsNerdFont', 'monospace', monospace";
        "terminal.integrated.fontFamily" = "'Maple Mono', 'SymbolsNerdFont'";
        "editor.fontSize" = 16;
        "workbench.colorTheme" = "Gruvbox Dark Hard";
        "workbench.iconTheme" = "gruvbox-material-icon-theme";

        # Cursor specific settings
        "cursor.autoComplete.enabled" = true;
        "cursor.api.apiKey" = ""; # You'll need to add your API key here
        "cursor.features.autocompleteTriggers.enabled" = true;
        "cursor.features.chat.enabled" = true;
        "cursor.features.copilot.enabled" = true; # To enable GitHub Copilot integration if desired
        "cursor.features.refactor.enabled" = true;

        # Keep all your other settings
        "material-icon-theme.folders.theme" = "classic";
        "vsicons.dontShowNewVersionMessage" = true;
        "explorer.confirmDragAndDrop" = false;
        "editor.fontLigatures" = true;
        "editor.minimap.enabled" = false;
        "workbench.startupEditor" = "none";
        "editor.formatOnSave" = true;
        "editor.formatOnType" = true;
        "editor.formatOnPaste" = true;
        "workbench.layoutControl.type" = "menu";
        "workbench.editor.limit.enabled" = true;
        "workbench.editor.limit.value" = 10;
        "workbench.editor.limit.perEditorGroup" = true;
        "workbench.editor.showTabs" = "none";
        "files.autoSave" = "onWindowChange";
        "explorer.openEditors.visible" = 0;
        "breadcrumbs.enabled" = false;
        "editor.renderControlCharacters" = false;
        "workbench.activityBar.location" = "hidden";
        "workbench.statusBar.visible" = false;
        "editor.scrollbar.verticalScrollbarSize" = 2;
        "editor.scrollbar.horizontalScrollbarSize" = 2;
        "editor.scrollbar.vertical" = "hidden";
        "editor.scrollbar.horizontal" = "hidden";
        "workbench.layoutControl.enabled" = false;
        "editor.mouseWheelZoom" = true;

        # Your C/C++ settings
        "C_Cpp.autocompleteAddParentheses" = true;
        "C_Cpp.formatting" = "clangFormat";
        "C_Cpp.vcFormat.newLine.closeBraceSameLine.emptyFunction" = true;
        "C_Cpp.vcFormat.newLine.closeBraceSameLine.emptyType" = true;
        "C_Cpp.vcFormat.space.beforeEmptySquareBrackets" = true;
        "C_Cpp.vcFormat.newLine.beforeOpenBrace.block" = "sameLine";
        "C_Cpp.vcFormat.newLine.beforeOpenBrace.function" = "sameLine";
        "C_Cpp.vcFormat.newLine.beforeElse" = false;
        "C_Cpp.vcFormat.newLine.beforeCatch" = false;
        "C_Cpp.vcFormat.newLine.beforeOpenBrace.type" = "sameLine";
        "C_Cpp.vcFormat.space.betweenEmptyBraces" = true;
        "C_Cpp.vcFormat.space.betweenEmptyLambdaBrackets" = true;
        "C_Cpp.vcFormat.indent.caseLabels" = true;
        "C_Cpp.intelliSenseCacheSize" = 2048;
        "C_Cpp.intelliSenseMemoryLimit" = 2048;
        "C_Cpp.default.browse.path" = [ ''''${workspaceFolder}/**'' ];
        "C_Cpp.default.cStandard" = "gnu11";
        "C_Cpp.inlayHints.parameterNames.hideLeadingUnderscores" = false;
        "C_Cpp.intelliSenseUpdateDelay" = 500;
        "C_Cpp.workspaceParsingPriority" = "medium";
        "C_Cpp.clang_format_sortIncludes" = true;
        "C_Cpp.doxygen.generatedStyle" = "/**";

        # Zig settings
        "zig.initialSetupDone" = true;
        "zig.checkForUpdate" = false;
        "zig.zls.path" = "zls";
        "zig.path" = "zig";
        "zig.revealOutputChannelOnFormattingError" = false;
        "zig.zls.enableInlayHints" = false;

        # Nix settings
        "nix.serverPath" = "nixd";
        "nix.enableLanguageServer" = true;
      };

      # Keep your keybindings and add code-cursor specific ones
      keybindings = [
        {
          key = "ctrl+q";
          command = "editor.action.commentLine";
          when = "editorTextFocus && !editorReadonly";
        }
        {
          key = "ctrl+s";
          command = "workbench.action.files.saveFiles";
        }
        # You can add code-cursor specific keybindings here if needed
      ];
    };
  };
}
