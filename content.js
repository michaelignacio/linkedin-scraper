function extractProfileData() {
  let name = document.querySelector("h1.t-24")?.innerText.trim() || "No name found";
  let description = document.querySelector(".text-body-medium.break-words")?.innerText.trim() || "No bio found";
  let photoUrl = document.querySelector(".pv-top-card-profile-picture__image--show")?.src || "";

  return { name, photo: photoUrl, description };
}

// Wait for profile section to load
const observer = new MutationObserver((mutations, obs) => {
  const profileSection = document.querySelector("section.artdeco-card");
  if (profileSection) {
    chrome.runtime.sendMessage({ action: "storeProfile", data: extractProfileData() });
    obs.disconnect(); // Stop observing once we find the profile
  }
});

// Start observing the document body for changes
observer.observe(document.body, {
  childList: true,
  subtree: true
});