document.getElementById("showProfiles").addEventListener("click", () => {
  chrome.runtime.sendMessage({ action: "getProfiles" }, (response) => {
    document.getElementById("output").innerText = JSON.stringify(response, null, 2);
  });
});