let profiles = [];
let processing = false;

chrome.runtime.onMessage.addListener((message, sender, sendResponse) => {
  if (message.action === "storeProfile") {
    profiles.push(message.data);
    console.log("Saved profile:", message.data);
  } else if (message.action === "getProfiles") {
    sendResponse(profiles);
  } else if (message.action === "processUrls") {
    if (processing) {
      sendResponse({ message: "Already processing URLs" });
      return;
    }

    processing = true;
    const urls = message.data;
    let currentIndex = 0;

    const processNextUrl = () => {
      if (currentIndex >= urls.length) {
        processing = false;
        sendResponse({ message: "Processing complete" });
        return;
      }

      const url = urls[currentIndex];
      chrome.tabs.create({ url }, (tab) => {
        chrome.tabs.onUpdated.addListener(function listener(tabId, changeInfo) {
          if (tabId === tab.id && changeInfo.status === 'complete') {
            chrome.tabs.onUpdated.removeListener(listener);
            currentIndex++;
            processNextUrl();
          }
        });
      });
    };

    processNextUrl();
    sendResponse({ message: "Started processing URLs" });
  }
});