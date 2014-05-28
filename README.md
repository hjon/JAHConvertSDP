# JAHConvertSDP

## What is this?

This is an Objective-C version of [SDP-Jingle-JSON](https://github.com/legastero/sdp-jingle-json).
Check out that project for more details.

## How to use it

```

// I have SDP, but want Cocoa objects:
NSDictionary* objects = [JAHConvertSDP dictionaryForSDP:sdp withCreatorRole:@"initiator"]; // or @"responder"

// I have a Cocoa object (a dictionary of session and content descriptions), but want SDP:
NSString* sdp = [JAHConvertSDP SDPForSession:objects sid:nil time:nil];
```

## Jingle Objects

The format for the generated dictionary content is:

```
{
    "action": "",
    "initiator": "",
    "responder": "",
    "sid": "",
    // ---- Content payload
    "groups": [
        {
            "semantics": "",
            "contents": [],
        } //...
    ],
    "contents": [
        {
           "name": "",
           "creator": "",
           "senders": "",
           "description": {
               // ---- RTP description
               "descType": "rtp",
               "media": "",
               "ssrc": "",
               "sourceGroups": [
                    {
                        "semantics": "",
                        "sources": [
                            "" //...
                        ]
                    } //...
               ],
               "sources": [
                   {
                       "ssrc": "",
                       "parameters: [
                           {
                               "key": "",
                               "value": ""
                           } //...
                       ]
                   } //...
               ],
               "bandwidth": "",
               "bandwidthType": "",
               "headerExtensions": [
                   {
                       "id": "",
                       "uri": "",
                       "senders": ""
                   } //...
               ],
               "payloads": [
                   {
                       "id": "",
                       "channels": "",
                       "clockrate": "",
                       "maxptime": "",
                       "ptime": "",
                       "name": "",
                       "parameters": [
                           {
                               "key": "",
                               "value": ""
                           } //...
                       ],
                       "feedback": [
                           {
                               "type": "",
                               "subtype": "",
                               "value": ""
                           } //...
                       ]
                   }
                ],
                "encryption": [
                    {
                        "cipherSuite": "",
                        "keyParams": "",
                        "sessionParams": "",
                        "tag": ""
                    } //...
                ]
           },
           "transport": {
               // ---- ICE UDP transport
               "transType": "iceUdp",
               "ufrag": "",
               "pwd": "",
               "setup": "",
               "candidates": [
                   {
                       "component": "",
                       "foundation": "",
                       "generation": "",
                       "id": "",
                       "ip": "",
                       "network": "",
                       "port": "",
                       "priority": "",
                       "protocol": "",
                       "relAddr": "",
                       "relPort": "",
                       "type": ""
                   } //...
               ],
               "fingerprints": [
                   {
                   "hash": "",
                   "value": ""
                   } // ...
               ]
           }
        } //...
    ]
}
```

## License

MIT
