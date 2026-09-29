export const siteConfig = {
  clientMode: "DBU" as "GENERAL" | "DBU",
  clientName: "Desh Bhagat University",
  showDbuModule: true,
  instagramUrl: "https://www.instagram.com/soletrustmedia?stkn=MTB3c3ZxOWJndGJvYw==",
};

export const isDbuMode = siteConfig.clientMode === "DBU" && siteConfig.showDbuModule;
