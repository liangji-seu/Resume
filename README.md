# Resume

This repository stores Liang Ji's LaTeX resume source and the assets needed to build it locally.

## What To Edit

- Main resume source: `resume-zh_CN.tex`
- Headshot image used by the resume: `photo.png`
- Windows build script: `build-zh_CN.ps1`
- macOS/Linux build script: `build-zh_CN.sh`
- Build notes: `BUILD.md`

The active resume is `resume-zh_CN.tex`. Other `.tex` files are inherited from the original template and are kept as references.

## Build Requirements

Use XeLaTeX. A full TeX distribution is recommended:

- macOS: MacTeX
- Linux: TeX Live
- Windows: MiKTeX or TeX Live

The repository includes local fonts used by the template, so the Chinese resume should build without installing extra Chinese fonts manually.

## Build On macOS/Linux

```bash
./build-zh_CN.sh
```

If the script is not executable:

```bash
chmod +x build-zh_CN.sh
./build-zh_CN.sh
```

## Build On Windows PowerShell

```powershell
.\build-zh_CN.ps1
```

If PowerShell blocks script execution:

```powershell
powershell -ExecutionPolicy Bypass -File .\build-zh_CN.ps1
```

## Output

Both build scripts compile `resume-zh_CN.tex` twice and generate a dated PDF:

```text
梁吉_简历_yyyy-MM-dd.pdf
```

Generated PDFs are intentionally ignored by Git. Commit source files and assets, not build outputs.

## Git Hygiene

Commit these when changed:

- `resume-zh_CN.tex`
- `photo.png`
- `resume.cls`
- `.sty`, `.tex`, `.bst`, `.bib` support files used by the template
- `fonts/`
- `build-zh_CN.ps1`
- `build-zh_CN.sh`
- documentation files such as `README.md` and `BUILD.md`

Do not commit:

- `*.pdf`
- `*.aux`
- `*.log`
- `*.out`
- `*.synctex.gz`
- `tmp/`
- one-off preview/check build outputs

These are covered by `.gitignore`.

## Agent Notes

When modifying the resume:

1. Edit `resume-zh_CN.tex`.
2. Keep `photo.png` as the image filename. The original Chinese-named photo file is ignored to avoid cross-platform filename issues.
3. Prefer XeLaTeX-only syntax compatible with the existing template.
4. Build with the platform script before reporting success.
5. If a PDF is open in a viewer on Windows, compilation may fail because the PDF is locked. Close the viewer and rerun the build.
6. Do not add generated PDFs to Git unless explicitly requested.

## Remote

The intended remote repository is:

```text
git@github.com:liangji-seu/Resume.git
```
