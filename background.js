let profiles = [];

chrome.runtime.onMessage.addListener((message, sender, sendResponse) => {
  if (message.action === "storeProfile") {
    profiles.push(message.data);
    console.log("Saved profile:", message.data);
  } else if (message.action === "getProfiles") {
    sendResponse(profiles);
  }
});