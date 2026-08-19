/*
 * Minecraft Pool bilingual website
 *
 * Language behavior:
 * 1. Reuse the visitor's saved choice when available.
 * 2. Otherwise use Chinese for a Chinese browser language.
 * 3. Otherwise use English.
 * 4. Remember manual choices with localStorage.
 */

const translations = {
  zh: {
    pageTitle: "Minecraft 台球数据包 | 鱿鱼MC工作室",
    metaDescription:
      "Minecraft Java 版台球数据包：斯诺克、八球、九球、真实球体物理、旋转、自动裁判、电脑玩家与多人 PvP。",
    ogTitle: "Minecraft 台球数据包",
    ogDescription:
      "斯诺克、八球、九球、真实球体物理、人机对战与多人 PvP。",

    title: "MC 原版台球游戏",
    heroCopy:
      "在 Minecraft 中体验真实的台球。<br>斯诺克、八球、九球，支持单人练习、人机对战和双人 PvP。",
    heroAlt: "Minecraft 台球桌",

    modrinthDownload: "Modrinth 下载",
    chineseReadme: "中文说明",
    
    resourcepackNote:
      "请记得下载并启用配套资源包（可点我获取）",

    botTitle: "与电脑玩家对战",
    botCopy: "八球和九球支持可调整难度的电脑玩家。",

    physicsTitle: "真实的杆法效果",

    snookerAlt: "Minecraft 斯诺克",
    snookerTitle: "斯诺克",

    poolAlt: "Minecraft 八球与九球",
    poolTitle: "八球 · 九球",

    practiceAlt: "Minecraft 台球练习模式",
    practiceTitle: "练习模式",

    changelog: "近期更新总结",
    releaseNotes: "发布版本",

    toggleText: "EN",
    toggleLabel: "Switch to English"
  },

  en: {
    pageTitle: "Minecraft Pool & Billiards Datapack | Squid Workshop",
    metaDescription:
      "Pool and billiards for Minecraft Java Edition with realistic ball physics, spin, automatic rules, AI opponents, Snooker, 8-Ball, 9-Ball, and PvP.",
    ogTitle: "Minecraft Pool & Billiards Datapack",
    ogDescription:
      "Snooker, 8-Ball, 9-Ball, realistic ball physics, AI opponents, and multiplayer PvP in Minecraft Java Edition.",

    title: "Pool & Billiards",
    heroCopy:
      "Experience realistic pool and billiards in Vanilla Minecraft.<br>Play Snooker, 8-Ball, and 9-Ball in singleplayer, against a bot, or another player.",
    heroAlt: "Pool table in Minecraft",

    modrinthDownload: "Download on Modrinth",
    chineseReadme: "中文说明",

    resourcepackNote:
      "Please remember to download and activate a required resourcepack (click here to obtain)",

    botTitle: "Play Against a Bot",
    botCopy: "8-Ball and 9-Ball support a bot with configurable difficulty.",

    physicsTitle: "Realistic Spin Effects",

    snookerAlt: "Snooker in Minecraft",
    snookerTitle: "Snooker",

    poolAlt: "8-Ball and 9-Ball in Minecraft",
    poolTitle: "8-Ball · 9-Ball",

    practiceAlt: "Minecraft pool practice mode",
    practiceTitle: "Practice Mode",

    changelog: "Recent Updates Summary",
    releaseNotes: "Release Notes",

    toggleText: "中文",
    toggleLabel: "切换到中文"
  }
};


function applyLanguage(lang) {
  const dictionary = translations[lang] || translations.en;

  document.documentElement.lang = lang === "zh" ? "zh-CN" : "en";

  document.querySelectorAll("[data-i18n]").forEach((element) => {
    const key = element.dataset.i18n;
    if (dictionary[key] !== undefined) {
      element.textContent = dictionary[key];
    }
  });

  document.querySelectorAll("[data-i18n-html]").forEach((element) => {
    const key = element.dataset.i18nHtml;
    if (dictionary[key] !== undefined) {
      element.innerHTML = dictionary[key];
    }
  });

  document.querySelectorAll("[data-i18n-alt]").forEach((element) => {
    const key = element.dataset.i18nAlt;
    if (dictionary[key] !== undefined) {
      element.alt = dictionary[key];
    }
  });

  // Switch selected links when Chinese and English use different pages.
  document.querySelectorAll("[data-href-zh][data-href-en]").forEach((element) => {
    element.href = lang === "zh"
      ? element.dataset.hrefZh
      : element.dataset.hrefEn;
  });

  document.title = dictionary.pageTitle;

  const description = document.getElementById("meta-description");
  const ogTitle = document.getElementById("og-title");
  const ogDescription = document.getElementById("og-description");

  if (description) description.content = dictionary.metaDescription;
  if (ogTitle) ogTitle.content = dictionary.ogTitle;
  if (ogDescription) ogDescription.content = dictionary.ogDescription;

  const toggle = document.getElementById("language-toggle");
  if (toggle) {
    toggle.textContent = dictionary.toggleText;
    toggle.setAttribute("aria-label", dictionary.toggleLabel);
    toggle.title = dictionary.toggleLabel;
  }

  localStorage.setItem("pool-site-language", lang);
}


function detectInitialLanguage() {
  // 1. URL parameter has highest priority:
  //    ?lang=zh or ?lang=en
  const params = new URLSearchParams(window.location.search);
  const urlLang = params.get("lang");

  if (urlLang === "zh" || urlLang === "en") {
    return urlLang;
  }

  // 2. Otherwise use the visitor's previous choice
  const saved = localStorage.getItem("pool-site-language");

  if (saved === "zh" || saved === "en") {
    return saved;
  }

  // 3. Otherwise detect browser language
  const browserLanguage =
    navigator.language ||
    (navigator.languages && navigator.languages[0]) ||
    "en";

  return browserLanguage.toLowerCase().startsWith("zh") ? "zh" : "en";
}


document.addEventListener("DOMContentLoaded", () => {
  let currentLanguage = detectInitialLanguage();
  applyLanguage(currentLanguage);

  const toggle = document.getElementById("language-toggle");

  if (toggle) {
    toggle.addEventListener("click", () => {
      currentLanguage = currentLanguage === "zh" ? "en" : "zh";
      applyLanguage(currentLanguage);
    });
  }
});
