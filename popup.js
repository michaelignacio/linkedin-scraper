document.addEventListener("DOMContentLoaded", () => {
  const urlsInput = document.getElementById("urls");
  const processBtn = document.getElementById("processUrls");
  const showProfilesBtn = document.getElementById("showProfiles");
  const copyBtn = document.getElementById("copyToClipboard");
  const clearBtn = document.getElementById("clearProfiles");
  const output = document.getElementById("output");

  // Handle URL processing
  processBtn.addEventListener("click", () => {
    const urls = urlsInput.value
      .split("\n")
      .map(url => url.trim())
      .filter(url => url.length > 0);
    
    if (urls.length > 0) {
      chrome.runtime.sendMessage({ 
        action: "processUrls", 
        data: urls 
      }, (response) => {
        output.innerText = response.message || "Processing started";
      });
    } else {
      output.innerText = "Please enter at least one valid URL";
    }
  });

  // Handle showing profiles
  showProfilesBtn.addEventListener("click", () => {
    chrome.runtime.sendMessage({ action: "getProfiles" }, (response) => {
      const formatted = JSON.stringify(response, null, 2);
      output.innerText = formatted;
      copyBtn.disabled = formatted.length === 0;
    });
  });

  // Handle copying to clipboard
  copyBtn.addEventListener("click", () => {
    navigator.clipboard.writeText(output.innerText)
      .then(() => {
        output.innerText = "Copied to clipboard!";
        setTimeout(() => {
          showProfilesBtn.click();
        }, 1000);
      })
      .catch(() => {
        output.innerText = "Failed to copy to clipboard";
      });
  });

  // Handle clearing profiles
  clearBtn.addEventListener("click", () => {
    chrome.runtime.sendMessage({ action: "clearProfiles" }, (response) => {
      output.innerText = "All profiles cleared";
      copyBtn.disabled = true;
    });
  });
});