# asm_projects

you need NASM, im using the `NASM version 3.01rc9 compiled on Oct 10 2025` version

download this version from https://www.nasm.us/pub/nasm/releasebuilds/

then:

1. Win + R → `sysdm.cpl`
2. Advanced → Environment Variables
3. System variables → find PATH → Edit
4. Scroll through the list - is `C:\Program Files (x86)\NASM` actually there?
5. If not, click New → type `C:\Program Files (x86)\NASM`
6. Click OK on ALL dialogs (this matters - if you cancel any, it won't save)
7. Close all CMD and 
8. Open new PowerShell or CMD
9. `nasm -v`

10. Check what's actually in system PATH:

```powershell
[System.Environment]::GetEnvironmentVariable("Path","Machine") -split ';' | Select-String "NASM"
```

11. check nasm version:

```powershell
nasm -v
```