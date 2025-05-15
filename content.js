function extractProfileData() {
  let name = document.querySelector("h1.t-24")?.innerText.trim() || "No name found";
  let description = document.querySelector(".text-body-medium.break-words")?.innerText.trim() || "No bio found";
  let photoUrl = document.querySelector(".pv-top-card-profile-picture__image--show")?.src || "";

  // Extract experience data
  let experience = extractExperienceData();

  return { 
    name, 
    photo: photoUrl, 
    description: experience.role + ', ' + experience.company + ', ' + experience.country
  };
}

function extractExperienceData() {
  // Get role
  const roleSpan = document.querySelector(
    '.GiFIbYcUiEHJdkeuOGIBesprOgGlMhMqKE .display-flex.align-items-center.mr1.hoverable-link-text.t-bold > span[aria-hidden="true"]'
  );
  const role = roleSpan?.textContent.trim() || null;

  // Get wrapper
  const wrapper = document.querySelector(
    '[data-field="experience_company_logo"].optional-action-target-wrapper.display-flex.flex-column.full-width'
  );

  let company = null;
  let country = null;

  if (wrapper) {
    const t14Spans = wrapper.querySelectorAll('.t-14.t-normal');

    // Company (1st .t-14.t-normal span with aria-hidden)
    const companyText = t14Spans[0]?.querySelector('span[aria-hidden="true"]')?.textContent.trim();
    company = companyText || null;

    // Country (3rd .t-14.t-normal span with aria-hidden)
    const locationText = t14Spans[2]?.querySelector('span[aria-hidden="true"]')?.textContent.trim();
    country = locationText ? locationText.split(',').map(s => s.trim()).pop() : null;
  }

  return { role, company, country };
}

// Wait for both profile and experience sections to load
let hasExtractedData = false; // Flag to ensure we only extract once
const observer = new MutationObserver((mutations, obs) => {
  if (hasExtractedData) return; // Skip if we've already extracted data
  
  const profileSection = document.querySelector("section.artdeco-card");
  const experienceSection = document.querySelector('.GiFIbYcUiEHJdkeuOGIBesprOgGlMhMqKE');
  
  if (profileSection && experienceSection) {
    // Small delay to ensure all content is properly loaded
    setTimeout(() => {
      if (!hasExtractedData) { // Double-check flag before extracting
        hasExtractedData = true;
        chrome.runtime.sendMessage({ action: "storeProfile", data: extractProfileData() });
        obs.disconnect(); // Stop observing once we find both sections
      }
    }, 1000);
  }
});

// Start observing the document body for changes
observer.observe(document.body, {
  childList: true,
  subtree: true
});