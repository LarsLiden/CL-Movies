﻿{"trainDialogs":[{"trainDialogId":"2972c7f7-6583-435d-a56b-7ec834df64bd","rounds":[{"extractorStep":{"textVariations":[{"text":"i would like tickets for star wars in portland oregon","labelEntities":[{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","startCharIndex":25,"endCharIndex":33,"entityText":"star wars"},{"entityId":"32ab4b3f-97b9-4d06-904a-a7fffe8661ea","startCharIndex":47,"endCharIndex":52,"entityText":"oregon"},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","startCharIndex":38,"endCharIndex":45,"entityText":"portland"}]}]},"scorerSteps":[{"input":{"filledEntities":[{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","values":[{"userText":"star wars","displayText":"star wars","builtinType":null,"resolution":null}]},{"entityId":"32ab4b3f-97b9-4d06-904a-a7fffe8661ea","values":[{"userText":"oregon","displayText":"oregon","builtinType":null,"resolution":null}]},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","values":[{"userText":"portland","displayText":"portland","builtinType":null,"resolution":null}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":null,\"startTime\":null,\"endDate\":null,\"endTime\":null}","displayText":"{\"startDate\":null,\"startTime\":null,\"endDate\":null,\"endTime\":null}","builtinType":null,"resolution":null}]}],"context":{},"maskedActions":[]},"labelAction":"e1a84d72-1db6-48a8-811b-709b149ad804","metrics":{"predictMetrics":{"blisTime":0.009844303131103516,"contextDialogBlisTime":0}}}]},{"extractorStep":{"textVariations":[{"text":"friday at 10pm","labelEntities":[{"entityId":"9c60893c-4fcd-4153-96e9-3dd8f420f98b","startCharIndex":0,"endCharIndex":13,"entityText":"friday at 10pm","resolution":{"values":[{"timex":"XXXX-WXX-5T22","type":"datetime","value":"2018-12-07 22:00:00"},{"timex":"XXXX-WXX-5T22","type":"datetime","value":"2018-12-14 22:00:00"}]},"builtinType":"builtin.datetimeV2.datetime"},{"entityId":"f6135f2c-651a-4f72-80c7-fd2e0a551b8e","startCharIndex":0,"endCharIndex":13,"entityText":"friday at 10pm","resolution":{"values":[{"timex":"XXXX-WXX-5T22","type":"datetime","value":"2018-12-07 22:00:00"},{"timex":"XXXX-WXX-5T22","type":"datetime","value":"2018-12-14 22:00:00"}]},"builtinType":"builtin.datetimeV2.datetime"}]}]},"scorerSteps":[{"input":{"filledEntities":[{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","values":[{"userText":"star wars","displayText":"star wars","builtinType":null,"resolution":null}]},{"entityId":"32ab4b3f-97b9-4d06-904a-a7fffe8661ea","values":[{"userText":"oregon","displayText":"oregon","builtinType":null,"resolution":null}]},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","values":[{"userText":"portland","displayText":"portland","builtinType":null,"resolution":null}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-14\",\"startTime\":\"22:00:00\",\"endDate\":null,\"endTime\":null}","displayText":"{\"startDate\":\"2018-12-14\",\"startTime\":\"22:00:00\",\"endDate\":null,\"endTime\":null}","builtinType":null,"resolution":null}]}],"context":{},"maskedActions":[]},"labelAction":"7fd34bec-69d2-449d-b125-270c97032f7f","metrics":{"predictMetrics":{"blisTime":0.00557708740234375,"contextDialogBlisTime":0}}}]},{"extractorStep":{"textVariations":[{"text":"2 adults please","labelEntities":[{"entityId":"5fc50b5b-c523-4930-a6e4-d75da21329ea","startCharIndex":0,"endCharIndex":0,"entityText":"2","resolution":{"subtype":"integer","value":"2"},"builtinType":"builtin.number"},{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","startCharIndex":0,"endCharIndex":0,"entityText":"2","resolution":{"subtype":"integer","value":"2"},"builtinType":"builtin.number"}]}]},"scorerSteps":[{"input":{"filledEntities":[{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","values":[{"userText":"star wars","displayText":"star wars","builtinType":null,"resolution":null}]},{"entityId":"32ab4b3f-97b9-4d06-904a-a7fffe8661ea","values":[{"userText":"oregon","displayText":"oregon","builtinType":null,"resolution":null}]},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","values":[{"userText":"portland","displayText":"portland","builtinType":null,"resolution":null}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-14\",\"startTime\":\"22:00:00\",\"endDate\":null,\"endTime\":null}","displayText":"{\"startDate\":\"2018-12-14\",\"startTime\":\"22:00:00\",\"endDate\":null,\"endTime\":null}","builtinType":null,"resolution":null}]},{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","values":[{"userText":"2","displayText":"2","builtinType":"builtin.number","resolution":{"subtype":"integer","value":"2"}}]}],"context":{},"maskedActions":[]},"labelAction":"9debdaf3-5167-4493-b8e4-a849eb5fe542","metrics":{"predictMetrics":{"blisTime":0.008228063583374023,"contextDialogBlisTime":0}},"logicResult":{"logicValue":null,"changedFilledEntities":[{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","values":[{"userText":"Star Wars","displayText":"Star Wars","builtinType":null,"resolution":null}]},{"entityId":"72d7abb9-4137-435e-8c4c-2bf26a58403a","values":[{"userText":"10:00 PM","displayText":"10:00 PM","builtinType":null,"resolution":null}]},{"entityId":"69f18431-3055-4b44-b476-3e24dcae9dbc","values":[{"userText":"REGAL LLOYD CENTER 10","displayText":"REGAL LLOYD CENTER 10","builtinType":null,"resolution":null}]}]}},{"input":{"filledEntities":[{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","values":[{"userText":"star wars","displayText":"star wars","builtinType":null,"resolution":null}]},{"entityId":"32ab4b3f-97b9-4d06-904a-a7fffe8661ea","values":[{"userText":"oregon","displayText":"oregon","builtinType":null,"resolution":null}]},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","values":[{"userText":"portland","displayText":"portland","builtinType":null,"resolution":null}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-14\",\"startTime\":\"22:00:00\",\"endDate\":null,\"endTime\":null}","displayText":"{\"startDate\":\"2018-12-14\",\"startTime\":\"22:00:00\",\"endDate\":null,\"endTime\":null}","builtinType":null,"resolution":null}]},{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","values":[{"userText":"2","displayText":"2","builtinType":"builtin.number","resolution":{"subtype":"integer","value":"2"}}]},{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","values":[{"userText":"Star Wars","displayText":"Star Wars","builtinType":null,"resolution":null}]},{"entityId":"72d7abb9-4137-435e-8c4c-2bf26a58403a","values":[{"userText":"10:00 PM","displayText":"10:00 PM","builtinType":null,"resolution":null}]},{"entityId":"69f18431-3055-4b44-b476-3e24dcae9dbc","values":[{"userText":"REGAL LLOYD CENTER 10","displayText":"REGAL LLOYD CENTER 10","builtinType":null,"resolution":null}]}],"context":{},"maskedActions":[]},"labelAction":"ed95d518-ec84-471a-99d4-954fc8b76b4b","metrics":{"predictMetrics":{"blisTime":0.00906825065612793,"contextDialogBlisTime":0}}}]},{"extractorStep":{"textVariations":[{"text":"yes, please","labelEntities":[]}]},"scorerSteps":[{"input":{"filledEntities":[{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","values":[{"userText":"star wars","displayText":"star wars","builtinType":null,"resolution":null}]},{"entityId":"32ab4b3f-97b9-4d06-904a-a7fffe8661ea","values":[{"userText":"oregon","displayText":"oregon","builtinType":null,"resolution":null}]},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","values":[{"userText":"portland","displayText":"portland","builtinType":null,"resolution":null}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-14\",\"startTime\":\"22:00:00\",\"endDate\":null,\"endTime\":null}","displayText":"{\"startDate\":\"2018-12-14\",\"startTime\":\"22:00:00\",\"endDate\":null,\"endTime\":null}","builtinType":null,"resolution":null}]},{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","values":[{"userText":"2","displayText":"2","builtinType":"builtin.number","resolution":{"subtype":"integer","value":"2"}}]},{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","values":[{"userText":"Star Wars","displayText":"Star Wars","builtinType":null,"resolution":null}]},{"entityId":"72d7abb9-4137-435e-8c4c-2bf26a58403a","values":[{"userText":"10:00 PM","displayText":"10:00 PM","builtinType":null,"resolution":null}]},{"entityId":"69f18431-3055-4b44-b476-3e24dcae9dbc","values":[{"userText":"REGAL LLOYD CENTER 10","displayText":"REGAL LLOYD CENTER 10","builtinType":null,"resolution":null}]}],"context":{},"maskedActions":[]},"labelAction":"d625d356-9b08-4ea8-940d-65f7c65efc79","metrics":{"predictMetrics":{"blisTime":0.012270450592041016,"contextDialogBlisTime":0}}}]}],"initialFilledEntities":[],"createdDateTime":"2018-12-10T23:51:25.229928+00:00","lastModifiedDateTime":"2018-12-19T19:37:57+00:00"},{"trainDialogId":"f2e6b2ba-9ae9-4157-9f0f-78b3e1139204","rounds":[{"extractorStep":{"textVariations":[{"text":"I'd like 2 tickets to see Zoolander 2 tomorrow at Regal Meridian 16 theater in Seattle at 9:25 PM","labelEntities":[{"entityId":"9c60893c-4fcd-4153-96e9-3dd8f420f98b","startCharIndex":38,"endCharIndex":45,"entityText":"tomorrow","resolution":{"values":[{"timex":"2018-12-12","type":"date","value":"2018-12-12"}]},"builtinType":"builtin.datetimeV2.date"},{"entityId":"9c60893c-4fcd-4153-96e9-3dd8f420f98b","startCharIndex":90,"endCharIndex":96,"entityText":"9:25 PM","resolution":{"values":[{"timex":"T21:25","type":"time","value":"21:25:00"}]},"builtinType":"builtin.datetimeV2.time"},{"entityId":"5fc50b5b-c523-4930-a6e4-d75da21329ea","startCharIndex":9,"endCharIndex":9,"entityText":"2","resolution":{"subtype":"integer","value":"2"},"builtinType":"builtin.number"},{"entityId":"5fc50b5b-c523-4930-a6e4-d75da21329ea","startCharIndex":36,"endCharIndex":36,"entityText":"2","resolution":{"subtype":"integer","value":"2"},"builtinType":"builtin.number"},{"entityId":"5fc50b5b-c523-4930-a6e4-d75da21329ea","startCharIndex":65,"endCharIndex":66,"entityText":"16","resolution":{"subtype":"integer","value":"16"},"builtinType":"builtin.number"},{"entityId":"5fc50b5b-c523-4930-a6e4-d75da21329ea","startCharIndex":90,"endCharIndex":90,"entityText":"9","resolution":{"subtype":"integer","value":"9"},"builtinType":"builtin.number"},{"entityId":"5fc50b5b-c523-4930-a6e4-d75da21329ea","startCharIndex":92,"endCharIndex":93,"entityText":"25","resolution":{"subtype":"integer","value":"25"},"builtinType":"builtin.number"},{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","startCharIndex":9,"endCharIndex":9,"entityText":"2","resolution":{},"builtinType":"LUIS"},{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","startCharIndex":26,"endCharIndex":36,"entityText":"Zoolander 2","resolution":{},"builtinType":"LUIS"},{"entityId":"f5d0b6a0-5ab2-4e3c-9f78-6ea8e1eccf50","startCharIndex":38,"endCharIndex":45,"entityText":"tomorrow","resolution":{},"builtinType":"LUIS"},{"entityId":"5294c59d-4005-4288-8ae6-dd0bfaec3f32","startCharIndex":50,"endCharIndex":66,"entityText":"Regal Meridian 16","resolution":{},"builtinType":"LUIS"},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","startCharIndex":79,"endCharIndex":85,"entityText":"Seattle","resolution":{},"builtinType":"LUIS"},{"entityId":"263c40d2-4b41-4d68-a076-24258389d844","startCharIndex":90,"endCharIndex":96,"entityText":"9:25 PM","resolution":{},"builtinType":"LUIS"}]}]},"scorerSteps":[{"input":{"filledEntities":[{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","values":[{"userText":"2","displayText":"2","builtinType":"builtin.number","resolution":{"subtype":"integer","value":"2"}}]},{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","values":[{"userText":"Zoolander 2","displayText":"Zoolander 2","builtinType":"LUIS","resolution":{}}]},{"entityId":"5294c59d-4005-4288-8ae6-dd0bfaec3f32","values":[{"userText":"Regal Meridian 16","displayText":"Regal Meridian 16","builtinType":"LUIS","resolution":{}}]},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","values":[{"userText":"Seattle","displayText":"Seattle","builtinType":"LUIS","resolution":{}}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-12\",\"startTime\":\"21:25:00\",\"endDate\":null,\"endTime\":null}","displayText":"{\"startDate\":\"2018-12-12\",\"startTime\":\"21:25:00\",\"endDate\":null,\"endTime\":null}","builtinType":null,"resolution":null}]}],"context":{},"maskedActions":[]},"labelAction":"9debdaf3-5167-4493-b8e4-a849eb5fe542","metrics":{"predictMetrics":{"blisTime":0.008661746978759766,"contextDialogBlisTime":0}},"logicResult":{"logicValue":null,"changedFilledEntities":[{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","values":[{"userText":"Zoolander 2","displayText":"Zoolander 2","builtinType":null,"resolution":null}]},{"entityId":"72d7abb9-4137-435e-8c4c-2bf26a58403a","values":[{"userText":"10:00 PM","displayText":"10:00 PM","builtinType":null,"resolution":null}]},{"entityId":"69f18431-3055-4b44-b476-3e24dcae9dbc","values":[{"userText":"Regal Meridian 16","displayText":"Regal Meridian 16","builtinType":null,"resolution":null}]}]}},{"input":{"filledEntities":[{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","values":[{"userText":"2","displayText":"2","builtinType":"builtin.number","resolution":{"subtype":"integer","value":"2"}}]},{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","values":[{"userText":"Zoolander 2","displayText":"Zoolander 2","builtinType":"LUIS","resolution":{}}]},{"entityId":"5294c59d-4005-4288-8ae6-dd0bfaec3f32","values":[{"userText":"Regal Meridian 16","displayText":"Regal Meridian 16","builtinType":"LUIS","resolution":{}}]},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","values":[{"userText":"Seattle","displayText":"Seattle","builtinType":"LUIS","resolution":{}}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-12\",\"startTime\":\"21:25:00\",\"endDate\":null,\"endTime\":null}","displayText":"{\"startDate\":\"2018-12-12\",\"startTime\":\"21:25:00\",\"endDate\":null,\"endTime\":null}","builtinType":null,"resolution":null}]},{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","values":[{"userText":"Zoolander 2","displayText":"Zoolander 2","builtinType":null,"resolution":null}]},{"entityId":"72d7abb9-4137-435e-8c4c-2bf26a58403a","values":[{"userText":"10:00 PM","displayText":"10:00 PM","builtinType":null,"resolution":null}]},{"entityId":"69f18431-3055-4b44-b476-3e24dcae9dbc","values":[{"userText":"Regal Meridian 16","displayText":"Regal Meridian 16","builtinType":null,"resolution":null}]}],"context":{},"maskedActions":[]},"labelAction":"ed95d518-ec84-471a-99d4-954fc8b76b4b","metrics":{"predictMetrics":null}}]},{"extractorStep":{"textVariations":[{"text":"yes","labelEntities":[]}]},"scorerSteps":[{"input":{"filledEntities":[{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","values":[{"userText":"2","displayText":"2","builtinType":"builtin.number","resolution":{"subtype":"integer","value":"2"}}]},{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","values":[{"userText":"Zoolander 2","displayText":"Zoolander 2","builtinType":"LUIS","resolution":{}}]},{"entityId":"5294c59d-4005-4288-8ae6-dd0bfaec3f32","values":[{"userText":"Regal Meridian 16","displayText":"Regal Meridian 16","builtinType":"LUIS","resolution":{}}]},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","values":[{"userText":"Seattle","displayText":"Seattle","builtinType":"LUIS","resolution":{}}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-12\",\"startTime\":\"21:25:00\",\"endDate\":null,\"endTime\":null}","displayText":"{\"startDate\":\"2018-12-12\",\"startTime\":\"21:25:00\",\"endDate\":null,\"endTime\":null}","builtinType":null,"resolution":null}]},{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","values":[{"userText":"Zoolander 2","displayText":"Zoolander 2","builtinType":null,"resolution":null}]},{"entityId":"72d7abb9-4137-435e-8c4c-2bf26a58403a","values":[{"userText":"10:00 PM","displayText":"10:00 PM","builtinType":null,"resolution":null}]},{"entityId":"69f18431-3055-4b44-b476-3e24dcae9dbc","values":[{"userText":"Regal Meridian 16","displayText":"Regal Meridian 16","builtinType":null,"resolution":null}]}],"context":{},"maskedActions":[]},"labelAction":"d625d356-9b08-4ea8-940d-65f7c65efc79","metrics":{"predictMetrics":{"blisTime":0.005626678466796875,"contextDialogBlisTime":0}}}]}],"initialFilledEntities":[],"createdDateTime":"2018-12-11T00:39:22.1083244+00:00","lastModifiedDateTime":"2018-12-19T19:38:05+00:00"},{"trainDialogId":"3a5b9c4b-6eef-4b15-a980-d8b893186474","rounds":[{"extractorStep":{"textVariations":[{"text":"Hi! I'm looking for a good thriller.  Are there any playing right now?","labelEntities":[{"entityId":"9c60893c-4fcd-4153-96e9-3dd8f420f98b","startCharIndex":60,"endCharIndex":68,"entityText":"right now","resolution":{"values":[{"timex":"PRESENT_REF","type":"datetime","value":"2018-12-11 22:21:37"}]},"builtinType":"builtin.datetimeV2.datetime"},{"entityId":"36f74b00-17d6-4666-97a2-546725ca8fa7","startCharIndex":27,"endCharIndex":34,"entityText":"thriller","resolution":{},"builtinType":"LUIS"},{"entityId":"f6135f2c-651a-4f72-80c7-fd2e0a551b8e","startCharIndex":60,"endCharIndex":68,"entityText":"right now","resolution":{},"builtinType":"LUIS"}]}]},"scorerSteps":[{"input":{"filledEntities":[{"entityId":"36f74b00-17d6-4666-97a2-546725ca8fa7","values":[{"userText":"thriller","displayText":"thriller","builtinType":"LUIS","resolution":{}}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-11\",\"startTime\":\"22:21:37\",\"endDate\":null,\"endTime\":null}","displayText":"{\"startDate\":\"2018-12-11\",\"startTime\":\"22:21:37\",\"endDate\":null,\"endTime\":null}","builtinType":null,"resolution":null}]}],"context":{},"maskedActions":[]},"labelAction":"9debdaf3-5167-4493-b8e4-a849eb5fe542","metrics":{"predictMetrics":null},"logicResult":{"logicValue":null,"changedFilledEntities":[{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","values":[{"userText":"The Other Side of the Door","displayText":"The Other Side of the Door","builtinType":null,"resolution":null},{"userText":"The Which","displayText":"The Which","builtinType":null,"resolution":null},{"userText":"The Boy","displayText":"The Boy","builtinType":null,"resolution":null}]}]}},{"input":{"filledEntities":[{"entityId":"36f74b00-17d6-4666-97a2-546725ca8fa7","values":[{"userText":"thriller","displayText":"thriller","builtinType":"LUIS","resolution":{}}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-11\",\"startTime\":\"22:21:37\",\"endDate\":null,\"endTime\":null}","displayText":"{\"startDate\":\"2018-12-11\",\"startTime\":\"22:21:37\",\"endDate\":null,\"endTime\":null}","builtinType":null,"resolution":null}]},{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","values":[{"userText":"The Other Side of the Door","displayText":"The Other Side of the Door","builtinType":null,"resolution":null},{"userText":"The Which","displayText":"The Which","builtinType":null,"resolution":null},{"userText":"The Boy","displayText":"The Boy","builtinType":null,"resolution":null}]}],"context":{},"maskedActions":[]},"labelAction":"aa147d54-2355-4bad-850f-9c55b5bedbdc","metrics":{"predictMetrics":null}}]},{"extractorStep":{"textVariations":[{"text":"The other side of the door sounds scary! great! Can I get 4 tickets in Carbondale, Illinois for Tuesday night?","labelEntities":[{"entityId":"9c60893c-4fcd-4153-96e9-3dd8f420f98b","startCharIndex":96,"endCharIndex":108,"entityText":"Tuesday night","resolution":{"values":[{"end":"2018-12-04 23:59:59","start":"2018-12-04 20:00:00","timex":"XXXX-WXX-2TNI","type":"datetimerange"},{"end":"2018-12-11 23:59:59","start":"2018-12-11 20:00:00","timex":"XXXX-WXX-2TNI","type":"datetimerange"}]},"builtinType":"builtin.datetimeV2.datetimerange"},{"entityId":"5fc50b5b-c523-4930-a6e4-d75da21329ea","startCharIndex":58,"endCharIndex":58,"entityText":"4","resolution":{"subtype":"integer","value":"4"},"builtinType":"builtin.number"},{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","startCharIndex":0,"endCharIndex":25,"entityText":"The other side of the door","resolution":{},"builtinType":"LUIS"},{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","startCharIndex":58,"endCharIndex":58,"entityText":"4","resolution":{},"builtinType":"LUIS"},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","startCharIndex":71,"endCharIndex":80,"entityText":"Carbondale","resolution":{},"builtinType":"LUIS"},{"entityId":"32ab4b3f-97b9-4d06-904a-a7fffe8661ea","startCharIndex":83,"endCharIndex":90,"entityText":"Illinois","resolution":{},"builtinType":"LUIS"},{"entityId":"f5d0b6a0-5ab2-4e3c-9f78-6ea8e1eccf50","startCharIndex":96,"endCharIndex":108,"entityText":"Tuesday night","resolution":{},"builtinType":"LUIS"}]}]},"scorerSteps":[{"input":{"filledEntities":[{"entityId":"36f74b00-17d6-4666-97a2-546725ca8fa7","values":[{"userText":"thriller","displayText":"thriller","builtinType":"LUIS","resolution":{}}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-11\",\"startTime\":\"22:21:37\",\"endDate\":\"2018-12-11\",\"endTime\":\"23:59:59\"}","displayText":"{\"startDate\":\"2018-12-11\",\"startTime\":\"22:21:37\",\"endDate\":\"2018-12-11\",\"endTime\":\"23:59:59\"}","builtinType":null,"resolution":null}]},{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","values":[{"userText":"The Other Side of the Door","displayText":"The Other Side of the Door","builtinType":null,"resolution":null},{"userText":"The Which","displayText":"The Which","builtinType":null,"resolution":null},{"userText":"The Boy","displayText":"The Boy","builtinType":null,"resolution":null}]},{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","values":[{"userText":"The other side of the door","displayText":"The other side of the door","builtinType":"LUIS","resolution":{}}]},{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","values":[{"userText":"4","displayText":"4","builtinType":"builtin.number","resolution":{"subtype":"integer","value":"4"}}]},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","values":[{"userText":"Carbondale","displayText":"Carbondale","builtinType":"LUIS","resolution":{}}]},{"entityId":"32ab4b3f-97b9-4d06-904a-a7fffe8661ea","values":[{"userText":"Illinois","displayText":"Illinois","builtinType":"LUIS","resolution":{}}]}],"context":{},"maskedActions":[]},"labelAction":"9debdaf3-5167-4493-b8e4-a849eb5fe542","metrics":{"predictMetrics":{"blisTime":0.006025075912475586,"contextDialogBlisTime":0}},"logicResult":{"logicValue":null,"changedFilledEntities":[{"entityId":"72d7abb9-4137-435e-8c4c-2bf26a58403a","values":[{"userText":"10:00 PM","displayText":"10:00 PM","builtinType":null,"resolution":null}]},{"entityId":"69f18431-3055-4b44-b476-3e24dcae9dbc","values":[{"userText":"AMC SHOWPLACE CARBONDALE 8","displayText":"AMC SHOWPLACE CARBONDALE 8","builtinType":null,"resolution":null}]}]}},{"input":{"filledEntities":[{"entityId":"36f74b00-17d6-4666-97a2-546725ca8fa7","values":[{"userText":"thriller","displayText":"thriller","builtinType":"LUIS","resolution":{}}]},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","values":[{"userText":"{\"startDate\":\"2018-12-11\",\"startTime\":\"22:21:37\",\"endDate\":\"2018-12-11\",\"endTime\":\"23:59:59\"}","displayText":"{\"startDate\":\"2018-12-11\",\"startTime\":\"22:21:37\",\"endDate\":\"2018-12-11\",\"endTime\":\"23:59:59\"}","builtinType":null,"resolution":null}]},{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","values":[{"userText":"The Other Side of the Door","displayText":"The Other Side of the Door","builtinType":null,"resolution":null},{"userText":"The Which","displayText":"The Which","builtinType":null,"resolution":null},{"userText":"The Boy","displayText":"The Boy","builtinType":null,"resolution":null}]},{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","values":[{"userText":"The other side of the door","displayText":"The other side of the door","builtinType":"LUIS","resolution":{}}]},{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","values":[{"userText":"4","displayText":"4","builtinType":"builtin.number","resolution":{"subtype":"integer","value":"4"}}]},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","values":[{"userText":"Carbondale","displayText":"Carbondale","builtinType":"LUIS","resolution":{}}]},{"entityId":"32ab4b3f-97b9-4d06-904a-a7fffe8661ea","values":[{"userText":"Illinois","displayText":"Illinois","builtinType":"LUIS","resolution":{}}]},{"entityId":"72d7abb9-4137-435e-8c4c-2bf26a58403a","values":[{"userText":"10:00 PM","displayText":"10:00 PM","builtinType":null,"resolution":null}]},{"entityId":"69f18431-3055-4b44-b476-3e24dcae9dbc","values":[{"userText":"AMC SHOWPLACE CARBONDALE 8","displayText":"AMC SHOWPLACE CARBONDALE 8","builtinType":null,"resolution":null}]}],"context":{},"maskedActions":[]},"labelAction":"d625d356-9b08-4ea8-940d-65f7c65efc79","metrics":{"predictMetrics":null}}]}],"initialFilledEntities":[],"createdDateTime":"2018-12-11T22:33:59.3139266+00:00","lastModifiedDateTime":"2018-12-19T19:39:13+00:00"}],"actions":[{"actionId":"e1a84d72-1db6-48a8-811b-709b149ad804","createdDateTime":"2018-12-07T00:46:00.2485208+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Sure!  What day?\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[]},{"actionId":"7fd34bec-69d2-449d-b125-270c97032f7f","createdDateTime":"2018-12-07T00:47:59.1386473+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Great, how many tickets would you like?\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[]},{"actionId":"9debdaf3-5167-4493-b8e4-a849eb5fe542","createdDateTime":"2018-12-07T20:32:01.5866992+00:00","actionType":"API_LOCAL","payload":"{\"payload\":\"GetMovies\",\"logicArguments\":[],\"renderArguments\":[]}","isTerminal":false,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":[]},{"actionId":"ed95d518-ec84-471a-99d4-954fc8b76b4b","createdDateTime":"2018-12-07T23:01:48.8888581+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"There is a \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"72d7abb9-4137-435e-8c4c-2bf26a58403a\",\"name\":\"found-time\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$found-time\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" showing at \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"69f18431-3055-4b44-b476-3e24dcae9dbc\",\"name\":\"found-theater\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$found-theater\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\".   Would you like to purchase?\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":["69f18431-3055-4b44-b476-3e24dcae9dbc","72d7abb9-4137-435e-8c4c-2bf26a58403a"],"requiredEntities":["69f18431-3055-4b44-b476-3e24dcae9dbc","72d7abb9-4137-435e-8c4c-2bf26a58403a"],"negativeEntities":[]},{"actionId":"d625d356-9b08-4ea8-940d-65f7c65efc79","createdDateTime":"2018-12-10T23:51:43.3479755+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"I have purchased \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792\",\"name\":\"num-tickets\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$num-tickets\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" tickets for \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"d029cc73-10a9-4449-bde5-b4eb784fa6f8\",\"name\":\"found-movies\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$found-movies\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" at \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"72d7abb9-4137-435e-8c4c-2bf26a58403a\",\"name\":\"found-time\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$found-time\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" at \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"69f18431-3055-4b44-b476-3e24dcae9dbc\",\"name\":\"found-theater\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$found-theater\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":["d029cc73-10a9-4449-bde5-b4eb784fa6f8","69f18431-3055-4b44-b476-3e24dcae9dbc","72d7abb9-4137-435e-8c4c-2bf26a58403a","2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792"],"requiredEntities":["d029cc73-10a9-4449-bde5-b4eb784fa6f8","69f18431-3055-4b44-b476-3e24dcae9dbc","72d7abb9-4137-435e-8c4c-2bf26a58403a","2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792"],"negativeEntities":[]},{"actionId":"aa147d54-2355-4bad-850f-9c55b5bedbdc","createdDateTime":"2018-12-11T22:30:42.9630074+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"d029cc73-10a9-4449-bde5-b4eb784fa6f8\",\"name\":\"found-movies\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$found-movies\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" are good options.  Would you like to find tickets for any of them?\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":["d029cc73-10a9-4449-bde5-b4eb784fa6f8"],"requiredEntities":["d029cc73-10a9-4449-bde5-b4eb784fa6f8"],"negativeEntities":[]}],"entities":[{"doNotMemorize":true,"entityId":"9c60893c-4fcd-4153-96e9-3dd8f420f98b","createdDateTime":"2018-12-07T00:46:39.8108237+00:00","entityName":"builtin-datetimev2","entityType":"datetimeV2","isMultivalue":false,"isNegatible":false},{"entityId":"2e7e5885-ddbd-470c-9988-6b89bef0d80d","createdDateTime":"2018-12-07T00:45:03.092602+00:00","entityName":"filter-movie-name","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"none"},{"entityId":"48606c92-ee7e-4877-ad81-3b29bb8faaaa","createdDateTime":"2018-12-07T00:45:14.933845+00:00","entityName":"filter-city","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"none"},{"entityId":"32ab4b3f-97b9-4d06-904a-a7fffe8661ea","createdDateTime":"2018-12-07T00:45:28.1143599+00:00","entityName":"filter-state","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"none"},{"entityId":"f6135f2c-651a-4f72-80c7-fd2e0a551b8e","createdDateTime":"2018-12-07T00:46:49.3800181+00:00","entityName":"filter-datetime","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"datetimeV2"},{"entityId":"2ca0c6ab-c287-41bf-9fb3-28cdf1e2b792","createdDateTime":"2018-12-07T00:48:32.3823614+00:00","entityName":"num-tickets","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"number"},{"doNotMemorize":true,"entityId":"5fc50b5b-c523-4930-a6e4-d75da21329ea","createdDateTime":"2018-12-07T00:48:40.3867114+00:00","entityName":"builtin-number","entityType":"number","isMultivalue":false,"isNegatible":false},{"entityId":"5294c59d-4005-4288-8ae6-dd0bfaec3f32","createdDateTime":"2018-12-07T20:34:10.83556+00:00","entityName":"filter-theater","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"none"},{"entityId":"72d7abb9-4137-435e-8c4c-2bf26a58403a","createdDateTime":"2018-12-07T22:23:29.3835812+00:00","entityName":"found-time","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"datetimeV2"},{"entityId":"69f18431-3055-4b44-b476-3e24dcae9dbc","createdDateTime":"2018-12-07T22:23:49.9551626+00:00","entityName":"found-theater","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"none"},{"entityId":"f5d0b6a0-5ab2-4e3c-9f78-6ea8e1eccf50","createdDateTime":"2018-12-11T00:16:14.6237404+00:00","entityName":"filter-date","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"datetimeV2"},{"entityId":"263c40d2-4b41-4d68-a076-24258389d844","createdDateTime":"2018-12-11T00:17:35.8486308+00:00","entityName":"filter-time","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"datetimeV2"},{"entityId":"c66cf061-e0af-48b6-ad01-695c84f58ec1","createdDateTime":"2018-12-11T21:10:41.1117943+00:00","entityName":"resolved-times","entityType":"LOCAL","isMultivalue":false,"isNegatible":false},{"entityId":"36f74b00-17d6-4666-97a2-546725ca8fa7","createdDateTime":"2018-12-11T22:20:42.8863758+00:00","entityName":"filter-genre","entityType":"LUIS","isMultivalue":false,"isNegatible":false,"resolverType":"none"},{"entityId":"d029cc73-10a9-4449-bde5-b4eb784fa6f8","createdDateTime":"2018-12-11T22:28:45.7718793+00:00","entityName":"found-movies","entityType":"LOCAL","isMultivalue":true,"isNegatible":false}],"packageId":"6984946a-8399-4c18-9846-f76ffedec20b"}