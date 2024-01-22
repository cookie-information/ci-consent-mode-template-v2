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
  "description": "Adjust behaviour of Google Tags (advertising, analytics, and use of cookies) based on user consent choice using Google\u0027s Consent API.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
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
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const callInWindow = require('callInWindow');
const gtagSet = require('gtagSet');
const getCookieValues = require('getCookieValues');
const log = require('logToConsole');
const JSON = require('JSON');

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
/*
 *   Executes the default command, sets the developer ID, and sets up the consent
 *   update callback
 */
const main = (data) => {
  // Set default consent state(s)
  const defaultSettings = (data.defaultSettings && data.defaultSettings[0]) ? data.defaultSettings[0] : {
    ad_storage: 'denied',
    ad_user_data: 'denied',
    ad_personalization: 'denied',
    analytics_storage: 'denied',
    functionality_storage: 'denied',
    personalization_storage: 'denied',
    security_storage: 'denied',
    wait_for_update: 500,
  };

  setDefaultConsentState(defaultSettings);
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

  /**
   *   Add event listener to trigger update when consent changes
   *
   *   References an external method on the window object which accepts a
   *   function as an argument. If you do not have such a method, you will need
   *   to create one before continuing. This method should add the function
   *   that is passed as an argument as a callback for an event emitted when
   *   the user updates their consent. The callback should be called with an
   *   object containing fields that correspond to the five built-in Google
   *   consent types.
   */

  callInWindow('CookieInformation.addCustomEventListenerForGTMConsentModeTemplate', onUserConsent);
};

main(data);
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
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
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 22.01.2024, 15:26:05


