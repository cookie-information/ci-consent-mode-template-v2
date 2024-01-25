___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Cookie Information Consent Mode v2",
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "Adjust behaviour of Google Tags (advertising, analytics, and use of cookies) based on user consent choice using Google Consent Mode v2.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "CHECKBOX",
    "name": "inject_script",
    "checkboxText": "Add Cookie Information Consent Banner",
    "simpleValueType": true,
    "help": "If you have already added the consent banner script to your website code, leave this option unticked and add data-gcm-enabled\u003d\"false\" to your banner script placed on the website."
  },
  {
    "type": "CHECKBOX",
    "name": "ads_data_redaction",
    "checkboxText": "Redact Ads Data",
    "simpleValueType": true
  },
  {
    "type": "CHECKBOX",
    "name": "url_passthrough",
    "checkboxText": "Pass through URL parameters",
    "simpleValueType": true
  },
  {
    "type": "PARAM_TABLE",
    "name": "defaultSettings",
    "displayName": "Default settings",
    "paramTableColumns": [
      {
        "param": {
          "type": "SELECT",
          "name": "ad_user_data",
          "displayName": "Ad user data",
          "macrosInSelect": false,
          "selectItems": [
            {
              "value": "denied",
              "displayValue": "denied"
            },
            {
              "value": "granted",
              "displayValue": "granted"
            }
          ],
          "simpleValueType": true
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "ad_personalization",
          "displayName": "Ad personalization",
          "macrosInSelect": false,
          "selectItems": [
            {
              "value": "denied",
              "displayValue": "denied"
            },
            {
              "value": "granted",
              "displayValue": "granted"
            }
          ],
          "simpleValueType": true
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "ad_storage",
          "displayName": "Ad storage",
          "macrosInSelect": false,
          "selectItems": [
            {
              "value": "denied",
              "displayValue": "denied"
            },
            {
              "value": "granted",
              "displayValue": "granted"
            }
          ],
          "simpleValueType": true
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "analytics_storage",
          "displayName": "Analytics storage",
          "macrosInSelect": false,
          "selectItems": [
            {
              "value": "denied",
              "displayValue": "denied"
            },
            {
              "value": "granted",
              "displayValue": "granted"
            }
          ],
          "simpleValueType": true
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "functionality_storage",
          "displayName": "Functionality storage",
          "macrosInSelect": false,
          "selectItems": [
            {
              "value": "denied",
              "displayValue": "denied"
            },
            {
              "value": "granted",
              "displayValue": "granted"
            }
          ],
          "simpleValueType": true
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "personalization_storage",
          "displayName": "Personalization storage",
          "macrosInSelect": false,
          "selectItems": [
            {
              "value": "denied",
              "displayValue": "denied"
            },
            {
              "value": "granted",
              "displayValue": "granted"
            }
          ],
          "simpleValueType": true
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "TEXT",
          "name": "region",
          "displayName": "Region(s) (leave blank to have consent apply to all regions)",
          "simpleValueType": true,
          "help": "If you\u0027d like to set the same custom settings for more than one region, you can write multiple region codes separated by comma (e.g. ES,US,DA)",
          "valueHint": "E.g. DA,EN,US"
        },
        "isUnique": true
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "language",
    "displayName": "Language",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "SQ",
        "displayValue": "Albanian"
      },
      {
        "value": "AR",
        "displayValue": "Arabic"
      },
      {
        "value": "BG",
        "displayValue": "Bulgarian"
      },
      {
        "value": "CA",
        "displayValue": "Catalan"
      },
      {
        "value": "ZH",
        "displayValue": "Chinese"
      },
      {
        "value": "TW",
        "displayValue": "Chinese (Taiwan)"
      },
      {
        "value": "HR",
        "displayValue": "Croatian"
      },
      {
        "value": "CS",
        "displayValue": "Czech"
      },
      {
        "value": "DA",
        "displayValue": "Danish"
      },
      {
        "value": "NL",
        "displayValue": "Dutch"
      },
      {
        "value": "EN",
        "displayValue": "English"
      },
      {
        "value": "ET",
        "displayValue": "Estonian"
      },
      {
        "value": "FI",
        "displayValue": "Finnish"
      },
      {
        "value": "FR",
        "displayValue": "French"
      },
      {
        "value": "DE",
        "displayValue": "German"
      },
      {
        "value": "EL",
        "displayValue": "Greek"
      },
      {
        "value": "KL",
        "displayValue": "Greenlandic"
      },
      {
        "value": "HE",
        "displayValue": "Hebrew"
      },
      {
        "value": "HI",
        "displayValue": "Hindi"
      },
      {
        "value": "HU",
        "displayValue": "Hungarian"
      },
      {
        "value": "IS",
        "displayValue": "Icelandic"
      },
      {
        "value": "ID",
        "displayValue": "Indonesian"
      },
      {
        "value": "IT",
        "displayValue": "Italian"
      },
      {
        "value": "JA",
        "displayValue": "Japanese"
      },
      {
        "value": "KO",
        "displayValue": "Korean"
      },
      {
        "value": "LV",
        "displayValue": "Latvian"
      },
      {
        "value": "LT",
        "displayValue": "Lithuanian"
      },
      {
        "value": "MS",
        "displayValue": "Malay"
      },
      {
        "value": "NB",
        "displayValue": "Norwegian Bokmål"
      },
      {
        "value": "NO",
        "displayValue": "Norwegian macrolanguage"
      },
      {
        "value": "NN",
        "displayValue": "Norwegian nynorsk"
      },
      {
        "value": "PL",
        "displayValue": "Polish"
      },
      {
        "value": "PT",
        "displayValue": "Portugese"
      },
      {
        "value": "RO",
        "displayValue": "Romanian"
      },
      {
        "value": "RU",
        "displayValue": "Russian"
      },
      {
        "value": "SR",
        "displayValue": "Serbian"
      },
      {
        "value": "SK",
        "displayValue": "Slovak"
      },
      {
        "value": "SL",
        "displayValue": "Slovenian"
      },
      {
        "value": "ES",
        "displayValue": "Spanish"
      },
      {
        "value": "SV",
        "displayValue": "Swedish"
      },
      {
        "value": "TH",
        "displayValue": "Thai"
      },
      {
        "value": "TR",
        "displayValue": "Turkish"
      },
      {
        "value": "UK",
        "displayValue": "Ukrainian"
      },
      {
        "value": "VI",
        "displayValue": "Vietnamese"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "wait_for_update",
    "displayName": "Wait for update",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_NEGATIVE_NUMBER"
      }
    ],
    "defaultValue": 500
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const callInWindow = require('callInWindow');
const gtagSet = require('gtagSet');
const getCookieValues = require('getCookieValues');
const JSON = require('JSON');
const makeInteger = require('makeInteger');
const injectScript = require('injectScript');
const encodeUriComponent = require('encodeUriComponent');
const queryPermission = require('queryPermission');
/*
 *   Called when consent changes. Assumes that consent object contains keys which
 *   directly correspond to Google consent types.
 */
const onUserConsent = (consent) => {
  const marketingConsent = consent.cookie_cat_marketing ? 'granted' : 'denied';
  const analyticsStorage = consent.cookie_cat_statistic ? 'granted' : 'denied';
  const functionalityStorage = consent.cookie_cat_functional ? 'granted' : 'denied';
  const personalizationStorage = consent.cookie_cat_functional ? 'granted' : 'denied';
  const securityStorage = 'granted';
  const consentModeStates = {
    ad_storage: marketingConsent,
    ad_user_data: marketingConsent,
    ad_personalization: marketingConsent,
    analytics_storage: analyticsStorage,
    functionality_storage: functionalityStorage,
    personalization_storage: personalizationStorage,
    security_storage: securityStorage,
  };
  updateConsentState(consentModeStates);
  if (data.ads_data_redaction && marketingConsent === 'denied') {
    gtagSet('ads_data_redaction', true);
  }
  gtagSet('url_passthrough', data.url_passthrough);
  gtagSet('developer_id.dNmIyNz', true);
};
const setSettings = (rowSetting) => ({
  ad_storage: rowSetting.ad_storage || 'denied',
  ad_user_data: rowSetting.ad_user_data || 'denied',
  ad_personalization: rowSetting.ad_personalization || 'denied',
  analytics_storage: rowSetting.analytics_storage || 'denied',
  functionality_storage: rowSetting.functionality_storage || 'denied',
  personalization_storage: rowSetting.personalization_storage || 'denied',
  security_storage: rowSetting.security_storage || 'denied',
  wait_for_update: makeInteger(data.wait_for_update) || 500,
});
const handleDefaultsSettingsWithRegions = (settingsRows) => {
    let isGlobalRegionsDefaultsSet = false;
     settingsRows.forEach((row) => {
     let settings = {};
     // means that user adjusted global defaults - for rest regions
     if(row.region.trim() === '') {
       isGlobalRegionsDefaultsSet = true;
       settings = setSettings(row);
     } else {
       settings = setSettings(row);
       settings.region = row.region.split(",").map(el => el.trim());
    }
    setDefaultConsentState(settings);
   });
   if(isGlobalRegionsDefaultsSet === false) {
     let globalDefaultSettings = {};
     globalDefaultSettings = setSettings({});
     setDefaultConsentState(globalDefaultSettings);
   }
};
/*
 *   Executes the default command, sets the developer ID, and sets up the consent
 *   update callback
 */
const main = () => {
 const defaultSettings = data.defaultSettings || [];
  if(defaultSettings.length > 0) {
    handleDefaultsSettingsWithRegions(defaultSettings);
  } else {
    let defaultSettings = {};
    defaultSettings = setSettings({});
    setDefaultConsentState(defaultSettings);
  }
  /*
   * Optional settings using gtagSet
   */
  if (data.ads_data_redaction) {
    gtagSet('ads_data_redaction', true);
  }
  gtagSet('url_passthrough', data.url_passthrough);
  gtagSet('developer_id.dNmIyNz', true);
  if (getCookieValues("CookieInformationConsent").toString() !== '') {
      const consentString = getCookieValues("CookieInformationConsent")[0];
      const consent = JSON.parse(consentString);
      const consentsApproved = consent.consents_approved;
      let consentTypes = {};
      let category = '';
      for (let i = 0; i < consentsApproved.length; ++i) {
        category = consentsApproved[i];
        consentTypes[category] = true;
      }
      onUserConsent(consentTypes);
   }
  callInWindow('CookieInformation.addCustomEventListenerForGTMConsentModeTemplate', onUserConsent);
  data.gtmOnSuccess();
};
if (data.inject_script) {
  const scriptUrl = 'https://policy.app.cookieinformation.com/uc.js?language=' + encodeUriComponent(data.language || 'default') + '&gcmEnabledByConsentLibrary=false';
  if(queryPermission('inject_script', scriptUrl)) injectScript(scriptUrl, main, data.gtmOnFailure);
  else data.gtmOnFailure();
} else {
    main(data);
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "gtagSet"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "CookieInformation.addCustomEventListenerForGTMConsentModeTemplate"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "developer_id.dNmIyNz"
              },
              {
                "type": 1,
                "string": "url_passthrough"
              },
              {
                "type": 1,
                "string": "ads_data_redaction"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "CookieInformationConsent"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://*.cookieinformation.com/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 25.01.2024, 12:28:56
