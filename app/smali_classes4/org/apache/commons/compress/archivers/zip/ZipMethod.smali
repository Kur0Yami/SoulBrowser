.class public final enum Lorg/apache/commons/compress/archivers/zip/ZipMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/ZipMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;

.field public static final synthetic g:[Lorg/apache/commons/compress/archivers/zip/ZipMethod;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 2
    .line 3
    const-string v1, "STORED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 10
    .line 11
    const-string v3, "UNSHRINKING"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4, v4}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 18
    .line 19
    const-string v5, "EXPANDING_LEVEL_1"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6, v6}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 26
    .line 27
    const-string v7, "EXPANDING_LEVEL_2"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8, v8}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 34
    .line 35
    const-string v9, "EXPANDING_LEVEL_3"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10, v10}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 42
    .line 43
    const-string v11, "EXPANDING_LEVEL_4"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v11, v12, v12}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    new-instance v11, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 50
    .line 51
    const-string v13, "IMPLODING"

    .line 52
    .line 53
    const/4 v14, 0x6

    .line 54
    invoke-direct {v11, v13, v14, v14}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    new-instance v13, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 58
    .line 59
    const-string v15, "TOKENIZATION"

    .line 60
    .line 61
    move/from16 v16, v2

    .line 62
    .line 63
    const/4 v2, 0x7

    .line 64
    invoke-direct {v13, v15, v2, v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    new-instance v15, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 68
    .line 69
    move/from16 v17, v2

    .line 70
    .line 71
    const-string v2, "DEFLATED"

    .line 72
    .line 73
    move/from16 v18, v4

    .line 74
    .line 75
    const/16 v4, 0x8

    .line 76
    .line 77
    invoke-direct {v15, v2, v4, v4}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 81
    .line 82
    move/from16 v19, v4

    .line 83
    .line 84
    const-string v4, "ENHANCED_DEFLATED"

    .line 85
    .line 86
    move/from16 v20, v6

    .line 87
    .line 88
    const/16 v6, 0x9

    .line 89
    .line 90
    invoke-direct {v2, v4, v6, v6}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 94
    .line 95
    move/from16 v21, v6

    .line 96
    .line 97
    const-string v6, "PKWARE_IMPLODING"

    .line 98
    .line 99
    move/from16 v22, v8

    .line 100
    .line 101
    const/16 v8, 0xa

    .line 102
    .line 103
    invoke-direct {v4, v6, v8, v8}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 107
    .line 108
    move/from16 v23, v8

    .line 109
    .line 110
    const-string v8, "BZIP2"

    .line 111
    .line 112
    move/from16 v24, v10

    .line 113
    .line 114
    const/16 v10, 0xb

    .line 115
    .line 116
    move/from16 v25, v12

    .line 117
    .line 118
    const/16 v12, 0xc

    .line 119
    .line 120
    invoke-direct {v6, v8, v10, v12}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 124
    .line 125
    move/from16 v26, v10

    .line 126
    .line 127
    const-string v10, "LZMA"

    .line 128
    .line 129
    move/from16 v27, v14

    .line 130
    .line 131
    const/16 v14, 0xe

    .line 132
    .line 133
    invoke-direct {v8, v10, v12, v14}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 134
    .line 135
    .line 136
    new-instance v10, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 137
    .line 138
    move/from16 v28, v12

    .line 139
    .line 140
    const/16 v12, 0x60

    .line 141
    .line 142
    const-string v14, "JPEG"

    .line 143
    .line 144
    move-object/from16 v30, v0

    .line 145
    .line 146
    const/16 v0, 0xd

    .line 147
    .line 148
    invoke-direct {v10, v14, v0, v12}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 149
    .line 150
    .line 151
    new-instance v12, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 152
    .line 153
    const-string v14, "WAVPACK"

    .line 154
    .line 155
    move/from16 v31, v0

    .line 156
    .line 157
    const/16 v0, 0x61

    .line 158
    .line 159
    move-object/from16 v32, v1

    .line 160
    .line 161
    const/16 v1, 0xe

    .line 162
    .line 163
    invoke-direct {v12, v14, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 167
    .line 168
    const/16 v1, 0x62

    .line 169
    .line 170
    const-string v14, "PPMD"

    .line 171
    .line 172
    move-object/from16 v33, v2

    .line 173
    .line 174
    const/16 v2, 0xf

    .line 175
    .line 176
    invoke-direct {v0, v14, v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 180
    .line 181
    const/16 v14, 0x63

    .line 182
    .line 183
    move/from16 v34, v2

    .line 184
    .line 185
    const-string v2, "AES_ENCRYPTED"

    .line 186
    .line 187
    move-object/from16 v35, v0

    .line 188
    .line 189
    const/16 v0, 0x10

    .line 190
    .line 191
    invoke-direct {v1, v2, v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 192
    .line 193
    .line 194
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 195
    .line 196
    const/4 v14, -0x1

    .line 197
    move/from16 v36, v0

    .line 198
    .line 199
    const-string v0, "UNKNOWN"

    .line 200
    .line 201
    move-object/from16 v37, v1

    .line 202
    .line 203
    const/16 v1, 0x11

    .line 204
    .line 205
    invoke-direct {v2, v0, v1, v14}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 206
    .line 207
    .line 208
    const/16 v0, 0x12

    .line 209
    .line 210
    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 211
    .line 212
    aput-object v30, v0, v16

    .line 213
    .line 214
    aput-object v32, v0, v18

    .line 215
    .line 216
    aput-object v3, v0, v20

    .line 217
    .line 218
    aput-object v5, v0, v22

    .line 219
    .line 220
    aput-object v7, v0, v24

    .line 221
    .line 222
    aput-object v9, v0, v25

    .line 223
    .line 224
    aput-object v11, v0, v27

    .line 225
    .line 226
    aput-object v13, v0, v17

    .line 227
    .line 228
    aput-object v15, v0, v19

    .line 229
    .line 230
    aput-object v33, v0, v21

    .line 231
    .line 232
    aput-object v4, v0, v23

    .line 233
    .line 234
    aput-object v6, v0, v26

    .line 235
    .line 236
    aput-object v8, v0, v28

    .line 237
    .line 238
    aput-object v10, v0, v31

    .line 239
    .line 240
    const/16 v29, 0xe

    .line 241
    .line 242
    aput-object v12, v0, v29

    .line 243
    .line 244
    aput-object v35, v0, v34

    .line 245
    .line 246
    aput-object v37, v0, v36

    .line 247
    .line 248
    aput-object v2, v0, v1

    .line 249
    .line 250
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->g:[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 251
    .line 252
    new-instance v0, Ljava/util/HashMap;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->values()[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    array-length v2, v1

    .line 262
    move/from16 v3, v16

    .line 263
    .line 264
    :goto_0
    if-ge v3, v2, :cond_0

    .line 265
    .line 266
    aget-object v4, v1, v3

    .line 267
    .line 268
    iget v5, v4, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->c:I

    .line 269
    .line 270
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    add-int/lit8 v3, v3, 0x1

    .line 278
    .line 279
    goto :goto_0

    .line 280
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 285
    .line 286
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->g:[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/ZipMethod;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 8
    .line 9
    return-object v0
.end method
