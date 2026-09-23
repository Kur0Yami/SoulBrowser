.class public final enum Lorg/apache/commons/text/lookup/DefaultStringLookup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/text/lookup/DefaultStringLookup;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum h:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum i:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum j:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum k:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum l:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum m:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum n:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum o:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum p:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum q:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum r:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum s:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum t:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum u:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum v:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum w:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final synthetic x:[Lorg/apache/commons/text/lookup/DefaultStringLookup;


# instance fields
.field public final c:Ljava/lang/String;

.field public final f:Lorg/apache/commons/text/lookup/StringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 2
    .line 3
    const-string v1, "base64Decoder"

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/text/lookup/StringLookupFactory;->a:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 6
    .line 7
    const-string v3, "BASE64_DECODER"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->g:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 14
    .line 15
    new-instance v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 16
    .line 17
    const-string v2, "base64Encoder"

    .line 18
    .line 19
    sget-object v3, Lorg/apache/commons/text/lookup/StringLookupFactory;->b:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 20
    .line 21
    const-string v5, "BASE64_ENCODER"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-direct {v1, v5, v6, v2, v3}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->h:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 28
    .line 29
    new-instance v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 30
    .line 31
    const-string v3, "const"

    .line 32
    .line 33
    sget-object v5, Lorg/apache/commons/text/lookup/ConstantStringLookup;->c:Lorg/apache/commons/text/lookup/ConstantStringLookup;

    .line 34
    .line 35
    const-string v7, "CONST"

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    invoke-direct {v2, v7, v8, v3, v5}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;->i:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 42
    .line 43
    new-instance v3, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 44
    .line 45
    const-string v5, "date"

    .line 46
    .line 47
    sget-object v7, Lorg/apache/commons/text/lookup/DateStringLookup;->b:Lorg/apache/commons/text/lookup/DateStringLookup;

    .line 48
    .line 49
    const-string v9, "DATE"

    .line 50
    .line 51
    const/4 v10, 0x3

    .line 52
    invoke-direct {v3, v9, v10, v5, v7}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 53
    .line 54
    .line 55
    sput-object v3, Lorg/apache/commons/text/lookup/DefaultStringLookup;->j:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 56
    .line 57
    new-instance v5, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 58
    .line 59
    const-string v7, "dns"

    .line 60
    .line 61
    sget-object v9, Lorg/apache/commons/text/lookup/DnsStringLookup;->b:Lorg/apache/commons/text/lookup/DnsStringLookup;

    .line 62
    .line 63
    const-string v11, "DNS"

    .line 64
    .line 65
    const/4 v12, 0x4

    .line 66
    invoke-direct {v5, v11, v12, v7, v9}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 67
    .line 68
    .line 69
    new-instance v7, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 70
    .line 71
    const-string v9, "env"

    .line 72
    .line 73
    sget-object v11, Lorg/apache/commons/text/lookup/StringLookupFactory;->c:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 74
    .line 75
    const-string v13, "ENVIRONMENT"

    .line 76
    .line 77
    const/4 v14, 0x5

    .line 78
    invoke-direct {v7, v13, v14, v9, v11}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 79
    .line 80
    .line 81
    sput-object v7, Lorg/apache/commons/text/lookup/DefaultStringLookup;->k:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 82
    .line 83
    new-instance v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 84
    .line 85
    const-string v11, "file"

    .line 86
    .line 87
    sget-object v13, Lorg/apache/commons/text/lookup/FileStringLookup;->c:Lorg/apache/commons/text/lookup/FileStringLookup;

    .line 88
    .line 89
    const-string v15, "FILE"

    .line 90
    .line 91
    move/from16 v16, v4

    .line 92
    .line 93
    const/4 v4, 0x6

    .line 94
    invoke-direct {v9, v15, v4, v11, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 95
    .line 96
    .line 97
    sput-object v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;->l:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 98
    .line 99
    new-instance v11, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 100
    .line 101
    const-string v13, "java"

    .line 102
    .line 103
    sget-object v15, Lorg/apache/commons/text/lookup/JavaPlatformStringLookup;->b:Lorg/apache/commons/text/lookup/JavaPlatformStringLookup;

    .line 104
    .line 105
    move/from16 v17, v4

    .line 106
    .line 107
    const-string v4, "JAVA"

    .line 108
    .line 109
    move/from16 v18, v6

    .line 110
    .line 111
    const/4 v6, 0x7

    .line 112
    invoke-direct {v11, v4, v6, v13, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 113
    .line 114
    .line 115
    sput-object v11, Lorg/apache/commons/text/lookup/DefaultStringLookup;->m:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 116
    .line 117
    new-instance v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 118
    .line 119
    const-string v13, "localhost"

    .line 120
    .line 121
    sget-object v15, Lorg/apache/commons/text/lookup/InetAddressStringLookup;->c:Lorg/apache/commons/text/lookup/InetAddressStringLookup;

    .line 122
    .line 123
    move/from16 v19, v6

    .line 124
    .line 125
    const-string v6, "LOCAL_HOST"

    .line 126
    .line 127
    move/from16 v20, v8

    .line 128
    .line 129
    const/16 v8, 0x8

    .line 130
    .line 131
    invoke-direct {v4, v6, v8, v13, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 132
    .line 133
    .line 134
    sput-object v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;->n:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 135
    .line 136
    new-instance v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 137
    .line 138
    const-string v13, "loobackAddress"

    .line 139
    .line 140
    sget-object v15, Lorg/apache/commons/text/lookup/InetAddressStringLookup;->d:Lorg/apache/commons/text/lookup/InetAddressStringLookup;

    .line 141
    .line 142
    move/from16 v21, v8

    .line 143
    .line 144
    const-string v8, "LOOPBACK_ADDRESS"

    .line 145
    .line 146
    move/from16 v22, v10

    .line 147
    .line 148
    const/16 v10, 0x9

    .line 149
    .line 150
    invoke-direct {v6, v8, v10, v13, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 151
    .line 152
    .line 153
    sput-object v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;->o:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 154
    .line 155
    new-instance v8, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 156
    .line 157
    const-string v13, "properties"

    .line 158
    .line 159
    sget-object v15, Lorg/apache/commons/text/lookup/PropertiesStringLookup;->c:Lorg/apache/commons/text/lookup/PropertiesStringLookup;

    .line 160
    .line 161
    move/from16 v23, v10

    .line 162
    .line 163
    const-string v10, "PROPERTIES"

    .line 164
    .line 165
    move/from16 v24, v12

    .line 166
    .line 167
    const/16 v12, 0xa

    .line 168
    .line 169
    invoke-direct {v8, v10, v12, v13, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 170
    .line 171
    .line 172
    sput-object v8, Lorg/apache/commons/text/lookup/DefaultStringLookup;->p:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 173
    .line 174
    new-instance v10, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 175
    .line 176
    const-string v13, "resourceBundle"

    .line 177
    .line 178
    sget-object v15, Lorg/apache/commons/text/lookup/ResourceBundleStringLookup;->b:Lorg/apache/commons/text/lookup/ResourceBundleStringLookup;

    .line 179
    .line 180
    move/from16 v25, v12

    .line 181
    .line 182
    const-string v12, "RESOURCE_BUNDLE"

    .line 183
    .line 184
    move/from16 v26, v14

    .line 185
    .line 186
    const/16 v14, 0xb

    .line 187
    .line 188
    invoke-direct {v10, v12, v14, v13, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 189
    .line 190
    .line 191
    sput-object v10, Lorg/apache/commons/text/lookup/DefaultStringLookup;->q:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 192
    .line 193
    new-instance v12, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 194
    .line 195
    const-string v13, "script"

    .line 196
    .line 197
    sget-object v15, Lorg/apache/commons/text/lookup/ScriptStringLookup;->b:Lorg/apache/commons/text/lookup/ScriptStringLookup;

    .line 198
    .line 199
    move/from16 v27, v14

    .line 200
    .line 201
    const-string v14, "SCRIPT"

    .line 202
    .line 203
    move-object/from16 v28, v0

    .line 204
    .line 205
    const/16 v0, 0xc

    .line 206
    .line 207
    invoke-direct {v12, v14, v0, v13, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 208
    .line 209
    .line 210
    new-instance v13, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 211
    .line 212
    const-string v14, "sys"

    .line 213
    .line 214
    sget-object v15, Lorg/apache/commons/text/lookup/StringLookupFactory;->d:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 215
    .line 216
    move/from16 v29, v0

    .line 217
    .line 218
    const-string v0, "SYSTEM_PROPERTIES"

    .line 219
    .line 220
    move-object/from16 v30, v1

    .line 221
    .line 222
    const/16 v1, 0xd

    .line 223
    .line 224
    invoke-direct {v13, v0, v1, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 225
    .line 226
    .line 227
    sput-object v13, Lorg/apache/commons/text/lookup/DefaultStringLookup;->r:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 228
    .line 229
    new-instance v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 230
    .line 231
    const-string v14, "url"

    .line 232
    .line 233
    sget-object v15, Lorg/apache/commons/text/lookup/UrlStringLookup;->b:Lorg/apache/commons/text/lookup/UrlStringLookup;

    .line 234
    .line 235
    move/from16 v31, v1

    .line 236
    .line 237
    const-string v1, "URL"

    .line 238
    .line 239
    move-object/from16 v32, v2

    .line 240
    .line 241
    const/16 v2, 0xe

    .line 242
    .line 243
    invoke-direct {v0, v1, v2, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 244
    .line 245
    .line 246
    new-instance v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 247
    .line 248
    const-string v14, "urlDecoder"

    .line 249
    .line 250
    sget-object v15, Lorg/apache/commons/text/lookup/UrlDecoderStringLookup;->b:Lorg/apache/commons/text/lookup/UrlDecoderStringLookup;

    .line 251
    .line 252
    move/from16 v33, v2

    .line 253
    .line 254
    const-string v2, "URL_DECODER"

    .line 255
    .line 256
    move-object/from16 v34, v0

    .line 257
    .line 258
    const/16 v0, 0xf

    .line 259
    .line 260
    invoke-direct {v1, v2, v0, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 261
    .line 262
    .line 263
    sput-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->s:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 264
    .line 265
    new-instance v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 266
    .line 267
    const-string v14, "urlEncoder"

    .line 268
    .line 269
    sget-object v15, Lorg/apache/commons/text/lookup/UrlEncoderStringLookup;->b:Lorg/apache/commons/text/lookup/UrlEncoderStringLookup;

    .line 270
    .line 271
    move/from16 v35, v0

    .line 272
    .line 273
    const-string v0, "URL_ENCODER"

    .line 274
    .line 275
    move-object/from16 v36, v1

    .line 276
    .line 277
    const/16 v1, 0x10

    .line 278
    .line 279
    invoke-direct {v2, v0, v1, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 280
    .line 281
    .line 282
    sput-object v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;->t:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 283
    .line 284
    new-instance v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 285
    .line 286
    const-string v14, "xml"

    .line 287
    .line 288
    sget-object v15, Lorg/apache/commons/text/lookup/XmlStringLookup;->e:Lorg/apache/commons/text/lookup/XmlStringLookup;

    .line 289
    .line 290
    move/from16 v37, v1

    .line 291
    .line 292
    const-string v1, "XML"

    .line 293
    .line 294
    move-object/from16 v38, v2

    .line 295
    .line 296
    const/16 v2, 0x11

    .line 297
    .line 298
    invoke-direct {v0, v1, v2, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 299
    .line 300
    .line 301
    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->u:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 302
    .line 303
    new-instance v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 304
    .line 305
    const-string v14, "xmlDecoder"

    .line 306
    .line 307
    sget-object v15, Lorg/apache/commons/text/lookup/XmlDecoderStringLookup;->b:Lorg/apache/commons/text/lookup/XmlDecoderStringLookup;

    .line 308
    .line 309
    move/from16 v39, v2

    .line 310
    .line 311
    const-string v2, "XML_DECODER"

    .line 312
    .line 313
    move-object/from16 v40, v0

    .line 314
    .line 315
    const/16 v0, 0x12

    .line 316
    .line 317
    invoke-direct {v1, v2, v0, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 318
    .line 319
    .line 320
    sput-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->v:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 321
    .line 322
    new-instance v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 323
    .line 324
    const-string v14, "xmlEncoder"

    .line 325
    .line 326
    sget-object v15, Lorg/apache/commons/text/lookup/XmlEncoderStringLookup;->b:Lorg/apache/commons/text/lookup/XmlEncoderStringLookup;

    .line 327
    .line 328
    move/from16 v41, v0

    .line 329
    .line 330
    const-string v0, "XML_ENCODER"

    .line 331
    .line 332
    move-object/from16 v42, v1

    .line 333
    .line 334
    const/16 v1, 0x13

    .line 335
    .line 336
    invoke-direct {v2, v0, v1, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    .line 337
    .line 338
    .line 339
    sput-object v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;->w:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 340
    .line 341
    const/16 v0, 0x14

    .line 342
    .line 343
    new-array v0, v0, [Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 344
    .line 345
    aput-object v28, v0, v16

    .line 346
    .line 347
    aput-object v30, v0, v18

    .line 348
    .line 349
    aput-object v32, v0, v20

    .line 350
    .line 351
    aput-object v3, v0, v22

    .line 352
    .line 353
    aput-object v5, v0, v24

    .line 354
    .line 355
    aput-object v7, v0, v26

    .line 356
    .line 357
    aput-object v9, v0, v17

    .line 358
    .line 359
    aput-object v11, v0, v19

    .line 360
    .line 361
    aput-object v4, v0, v21

    .line 362
    .line 363
    aput-object v6, v0, v23

    .line 364
    .line 365
    aput-object v8, v0, v25

    .line 366
    .line 367
    aput-object v10, v0, v27

    .line 368
    .line 369
    aput-object v12, v0, v29

    .line 370
    .line 371
    aput-object v13, v0, v31

    .line 372
    .line 373
    aput-object v34, v0, v33

    .line 374
    .line 375
    aput-object v36, v0, v35

    .line 376
    .line 377
    aput-object v38, v0, v37

    .line 378
    .line 379
    aput-object v40, v0, v39

    .line 380
    .line 381
    aput-object v42, v0, v41

    .line 382
    .line 383
    aput-object v2, v0, v1

    .line 384
    .line 385
    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->x:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 386
    .line 387
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->f:Lorg/apache/commons/text/lookup/StringLookup;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/text/lookup/DefaultStringLookup;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/text/lookup/DefaultStringLookup;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->x:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/text/lookup/DefaultStringLookup;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 8
    .line 9
    return-object v0
.end method
