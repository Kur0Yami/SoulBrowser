.class public Lcom/mycompany/app/curl/CurlMesh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/curl/CurlMesh$Vertex;,
        Lcom/mycompany/app/curl/CurlMesh$Array;,
        Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;
    }
.end annotation


# static fields
.field public static final D:[F

.field public static final E:[F

.field public static final F:[F

.field public static final G:[S


# instance fields
.field public A:Z

.field public B:F

.field public C:Lcom/mycompany/app/main/MainItem$ViewItem;

.field public final a:Lcom/mycompany/app/curl/CurlMesh$Array;

.field public final b:Lcom/mycompany/app/curl/CurlMesh$Array;

.field public final c:Lcom/mycompany/app/curl/CurlMesh$Array;

.field public final d:Lcom/mycompany/app/curl/CurlMesh$Array;

.field public final e:Lcom/mycompany/app/curl/CurlMesh$Array;

.field public final f:Lcom/mycompany/app/curl/CurlMesh$Array;

.field public final g:Lcom/mycompany/app/curl/CurlMesh$Array;

.field public final h:Lcom/mycompany/app/curl/CurlMesh$Array;

.field public final i:Ljava/nio/FloatBuffer;

.field public final j:Ljava/nio/FloatBuffer;

.field public final k:Ljava/nio/FloatBuffer;

.field public final l:Ljava/nio/FloatBuffer;

.field public final m:Ljava/nio/FloatBuffer;

.field public n:I

.field public final o:I

.field public final p:[Lcom/mycompany/app/curl/CurlMesh$Vertex;

.field public q:I

.field public r:[I

.field public s:Landroid/graphics/Bitmap;

.field public t:Landroid/graphics/Bitmap;

.field public u:Z

.field public v:I

.field public w:I

.field public x:Z

.field public final y:Ljava/nio/FloatBuffer;

.field public final z:Ljava/nio/ShortBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/mycompany/app/curl/CurlMesh;->D:[F

    .line 8
    .line 9
    new-array v0, v0, [F

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/mycompany/app/curl/CurlMesh;->E:[F

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    new-array v0, v0, [F

    .line 19
    .line 20
    fill-array-data v0, :array_2

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/mycompany/app/curl/CurlMesh;->F:[F

    .line 24
    .line 25
    const/4 v0, 0x6

    .line 26
    new-array v0, v0, [S

    .line 27
    .line 28
    fill-array-data v0, :array_3

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/mycompany/app/curl/CurlMesh;->G:[S

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    :array_3
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/curl/CurlMesh;->x:Z

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    new-array v2, v1, [Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 9
    .line 10
    iput-object v2, p0, Lcom/mycompany/app/curl/CurlMesh;->p:[Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, p0, Lcom/mycompany/app/curl/CurlMesh;->u:Z

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    iput v3, p0, Lcom/mycompany/app/curl/CurlMesh;->o:I

    .line 18
    .line 19
    new-instance v3, Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 20
    .line 21
    const/16 v4, 0xc

    .line 22
    .line 23
    invoke-direct {v3, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->e:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 27
    .line 28
    new-instance v3, Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 29
    .line 30
    const/4 v5, 0x7

    .line 31
    invoke-direct {v3, v5}, Lcom/mycompany/app/curl/CurlMesh$Array;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->c:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 35
    .line 36
    new-instance v3, Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 37
    .line 38
    invoke-direct {v3, v1}, Lcom/mycompany/app/curl/CurlMesh$Array;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 42
    .line 43
    new-instance v3, Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    invoke-direct {v3, v5}, Lcom/mycompany/app/curl/CurlMesh$Array;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->b:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 50
    .line 51
    new-instance v3, Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 52
    .line 53
    const/16 v6, 0xb

    .line 54
    .line 55
    invoke-direct {v3, v6}, Lcom/mycompany/app/curl/CurlMesh$Array;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 59
    .line 60
    move v3, v2

    .line 61
    :goto_0
    if-ge v3, v6, :cond_0

    .line 62
    .line 63
    iget-object v7, p0, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 64
    .line 65
    new-instance v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 66
    .line 67
    invoke-direct {v8}, Lcom/mycompany/app/curl/CurlMesh$Vertex;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v8}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance v3, Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 77
    .line 78
    iget v6, p0, Lcom/mycompany/app/curl/CurlMesh;->o:I

    .line 79
    .line 80
    add-int/2addr v6, v5

    .line 81
    mul-int/2addr v6, v5

    .line 82
    invoke-direct {v3, v6}, Lcom/mycompany/app/curl/CurlMesh$Array;-><init>(I)V

    .line 83
    .line 84
    .line 85
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->f:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 86
    .line 87
    new-instance v3, Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 88
    .line 89
    iget v6, p0, Lcom/mycompany/app/curl/CurlMesh;->o:I

    .line 90
    .line 91
    add-int/2addr v6, v5

    .line 92
    mul-int/2addr v6, v5

    .line 93
    invoke-direct {v3, v6}, Lcom/mycompany/app/curl/CurlMesh$Array;-><init>(I)V

    .line 94
    .line 95
    .line 96
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->a:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 97
    .line 98
    new-instance v3, Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 99
    .line 100
    iget v6, p0, Lcom/mycompany/app/curl/CurlMesh;->o:I

    .line 101
    .line 102
    add-int/2addr v6, v5

    .line 103
    mul-int/2addr v6, v5

    .line 104
    invoke-direct {v3, v6}, Lcom/mycompany/app/curl/CurlMesh$Array;-><init>(I)V

    .line 105
    .line 106
    .line 107
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->g:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 108
    .line 109
    move v3, v2

    .line 110
    :goto_1
    iget v6, p0, Lcom/mycompany/app/curl/CurlMesh;->o:I

    .line 111
    .line 112
    add-int/2addr v6, v5

    .line 113
    mul-int/2addr v6, v5

    .line 114
    if-ge v3, v6, :cond_1

    .line 115
    .line 116
    iget-object v6, p0, Lcom/mycompany/app/curl/CurlMesh;->g:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 117
    .line 118
    new-instance v7, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;

    .line 119
    .line 120
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v7}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    move v3, v2

    .line 130
    :goto_2
    if-ge v3, v1, :cond_2

    .line 131
    .line 132
    iget-object v6, p0, Lcom/mycompany/app/curl/CurlMesh;->p:[Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 133
    .line 134
    new-instance v7, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 135
    .line 136
    invoke-direct {v7}, Lcom/mycompany/app/curl/CurlMesh$Vertex;-><init>()V

    .line 137
    .line 138
    .line 139
    aput-object v7, v6, v3

    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/curl/CurlMesh;->p:[Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 145
    .line 146
    aget-object v3, v1, v2

    .line 147
    .line 148
    aget-object v0, v1, v0

    .line 149
    .line 150
    const/4 v6, 0x3

    .line 151
    aget-object v6, v1, v6

    .line 152
    .line 153
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 154
    .line 155
    iput-wide v7, v6, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 156
    .line 157
    iput-wide v7, v0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 158
    .line 159
    iput-wide v7, v0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 160
    .line 161
    iput-wide v7, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 162
    .line 163
    aget-object v0, v1, v5

    .line 164
    .line 165
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 166
    .line 167
    iput-wide v7, v6, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 168
    .line 169
    iput-wide v7, v0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 170
    .line 171
    iput-wide v7, v0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 172
    .line 173
    iput-wide v7, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 174
    .line 175
    iget v0, p0, Lcom/mycompany/app/curl/CurlMesh;->o:I

    .line 176
    .line 177
    mul-int/2addr v0, v5

    .line 178
    const/4 v1, 0x6

    .line 179
    add-int/2addr v0, v1

    .line 180
    mul-int/lit8 v3, v0, 0xc

    .line 181
    .line 182
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->m:Ljava/nio/FloatBuffer;

    .line 199
    .line 200
    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 201
    .line 202
    .line 203
    mul-int/lit8 v3, v0, 0x8

    .line 204
    .line 205
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->l:Ljava/nio/FloatBuffer;

    .line 222
    .line 223
    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    .line 225
    .line 226
    mul-int/lit8 v0, v0, 0x10

    .line 227
    .line 228
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iput-object v0, p0, Lcom/mycompany/app/curl/CurlMesh;->i:Ljava/nio/FloatBuffer;

    .line 245
    .line 246
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 247
    .line 248
    .line 249
    iget v0, p0, Lcom/mycompany/app/curl/CurlMesh;->o:I

    .line 250
    .line 251
    add-int/2addr v0, v5

    .line 252
    mul-int/lit8 v3, v0, 0x40

    .line 253
    .line 254
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    iput-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->j:Ljava/nio/FloatBuffer;

    .line 271
    .line 272
    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    .line 274
    .line 275
    const/16 v3, 0x30

    .line 276
    .line 277
    mul-int/2addr v0, v3

    .line 278
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iput-object v0, p0, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    .line 295
    .line 296
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    .line 298
    .line 299
    iput v2, p0, Lcom/mycompany/app/curl/CurlMesh;->q:I

    .line 300
    .line 301
    iput v2, p0, Lcom/mycompany/app/curl/CurlMesh;->n:I

    .line 302
    .line 303
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iput-object v0, p0, Lcom/mycompany/app/curl/CurlMesh;->y:Ljava/nio/FloatBuffer;

    .line 320
    .line 321
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    iput-object v0, p0, Lcom/mycompany/app/curl/CurlMesh;->z:Ljava/nio/ShortBuffer;

    .line 338
    .line 339
    move v0, v2

    .line 340
    :goto_3
    if-ge v0, v4, :cond_3

    .line 341
    .line 342
    iget-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->y:Ljava/nio/FloatBuffer;

    .line 343
    .line 344
    sget-object v5, Lcom/mycompany/app/curl/CurlMesh;->F:[F

    .line 345
    .line 346
    aget v5, v5, v0

    .line 347
    .line 348
    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 349
    .line 350
    .line 351
    add-int/lit8 v0, v0, 0x1

    .line 352
    .line 353
    goto :goto_3

    .line 354
    :cond_3
    move v0, v2

    .line 355
    :goto_4
    if-ge v0, v1, :cond_4

    .line 356
    .line 357
    iget-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->z:Ljava/nio/ShortBuffer;

    .line 358
    .line 359
    sget-object v4, Lcom/mycompany/app/curl/CurlMesh;->G:[S

    .line 360
    .line 361
    aget-short v4, v4, v0

    .line 362
    .line 363
    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 364
    .line 365
    .line 366
    add-int/lit8 v0, v0, 0x1

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlMesh;->y:Ljava/nio/FloatBuffer;

    .line 370
    .line 371
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    .line 373
    .line 374
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlMesh;->z:Ljava/nio/ShortBuffer;

    .line 375
    .line 376
    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 377
    .line 378
    .line 379
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/curl/CurlMesh$Vertex;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 2
    .line 3
    double-to-float v0, v0

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/curl/CurlMesh;->m:Ljava/nio/FloatBuffer;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 7
    .line 8
    .line 9
    iget-wide v2, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 10
    .line 11
    double-to-float v0, v2

    .line 12
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 13
    .line 14
    .line 15
    iget-wide v2, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    .line 16
    .line 17
    double-to-float v0, v2

    .line 18
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 19
    .line 20
    .line 21
    iget v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b:F

    .line 22
    .line 23
    iget v1, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a:I

    .line 24
    .line 25
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    mul-float/2addr v0, v1

    .line 31
    const/high16 v1, 0x437f0000    # 255.0f

    .line 32
    .line 33
    div-float/2addr v0, v1

    .line 34
    iget-object v2, p0, Lcom/mycompany/app/curl/CurlMesh;->i:Ljava/nio/FloatBuffer;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 37
    .line 38
    .line 39
    iget v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b:F

    .line 40
    .line 41
    iget v3, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a:I

    .line 42
    .line 43
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    mul-float/2addr v0, v3

    .line 49
    div-float/2addr v0, v1

    .line 50
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 51
    .line 52
    .line 53
    iget v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b:F

    .line 54
    .line 55
    iget v3, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a:I

    .line 56
    .line 57
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    int-to-float v3, v3

    .line 62
    mul-float/2addr v0, v3

    .line 63
    div-float/2addr v0, v1

    .line 64
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 65
    .line 66
    .line 67
    iget v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a:I

    .line 68
    .line 69
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    int-to-float v0, v0

    .line 74
    div-float/2addr v0, v1

    .line 75
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 76
    .line 77
    .line 78
    iget-wide v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 79
    .line 80
    double-to-float v0, v0

    .line 81
    iget-object v1, p0, Lcom/mycompany/app/curl/CurlMesh;->l:Ljava/nio/FloatBuffer;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 84
    .line 85
    .line 86
    iget-wide v2, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 87
    .line 88
    double-to-float p1, v2

    .line 89
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final declared-synchronized b(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->m:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 3
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->l:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    .line 5
    iget v3, v2, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_0

    neg-double v5, v5

    :cond_0
    const-wide/16 v7, 0x0

    .line 6
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    const-wide v9, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    if-nez v3, :cond_1

    add-double/2addr v5, v9

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    sub-double/2addr v5, v9

    .line 8
    :cond_2
    :goto_0
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    iget-object v9, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v3, v9}, Lcom/mycompany/app/curl/CurlMesh$Array;->c(Lcom/mycompany/app/curl/CurlMesh$Array;)V

    .line 9
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 10
    iput v4, v3, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    move v3, v4

    :goto_1
    const/4 v9, 0x4

    if-ge v3, v9, :cond_6

    .line 11
    iget-object v9, v1, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v9}, Lcom/mycompany/app/curl/CurlMesh$Array;->e()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 12
    iget-object v10, v1, Lcom/mycompany/app/curl/CurlMesh;->p:[Lcom/mycompany/app/curl/CurlMesh$Vertex;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b(Lcom/mycompany/app/curl/CurlMesh$Vertex;)V

    .line 13
    iget v10, v0, Landroid/graphics/PointF;->x:F

    neg-float v10, v10

    float-to-double v13, v10

    iget v10, v0, Landroid/graphics/PointF;->y:F

    neg-float v10, v10

    move-wide v15, v11

    float-to-double v11, v10

    move-wide/from16 v17, v7

    .line 14
    iget-wide v7, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    add-double/2addr v7, v13

    iput-wide v7, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 15
    iget-wide v7, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    add-double/2addr v7, v11

    iput-wide v7, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    neg-double v7, v5

    .line 16
    invoke-virtual {v9, v7, v8}, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a(D)V

    move v7, v4

    .line 17
    :goto_2
    iget-object v8, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 18
    iget v10, v8, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    if-ge v7, v10, :cond_5

    .line 19
    invoke-virtual {v8, v7}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 20
    iget-wide v10, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    iget-wide v12, v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    cmpl-double v14, v10, v12

    if-lez v14, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v10

    if-nez v10, :cond_4

    iget-wide v10, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    iget-wide v12, v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    cmpl-double v8, v10, v12

    if-lez v8, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 22
    :cond_5
    :goto_3
    iget-object v8, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v8, v7, v9}, Lcom/mycompany/app/curl/CurlMesh$Array;->a(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    move-wide v11, v15

    move-wide/from16 v7, v17

    goto :goto_1

    :cond_6
    move-wide/from16 v17, v7

    move-wide v15, v11

    const/4 v3, 0x1

    .line 23
    filled-new-array {v4, v3}, [I

    move-result-object v7

    const/4 v8, 0x2

    filled-new-array {v4, v8}, [I

    move-result-object v10

    const/4 v11, 0x3

    filled-new-array {v3, v11}, [I

    move-result-object v12

    filled-new-array {v8, v11}, [I

    move-result-object v13

    new-array v14, v9, [[I

    aput-object v7, v14, v4

    aput-object v10, v14, v3

    aput-object v12, v14, v8

    aput-object v13, v14, v11

    .line 24
    iget-object v7, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v7, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 25
    iget-object v10, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v10, v8}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 26
    iget-object v12, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v12, v11}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    move/from16 v19, v8

    .line 27
    iget-wide v8, v7, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    move-object/from16 v20, v14

    iget-wide v13, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    sub-double/2addr v8, v13

    mul-double/2addr v8, v8

    iget-wide v13, v7, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    move/from16 v21, v3

    iget-wide v3, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    sub-double/2addr v13, v3

    mul-double/2addr v13, v13

    add-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 28
    iget-wide v8, v7, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    iget-wide v13, v12, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    sub-double/2addr v8, v13

    mul-double/2addr v8, v8

    iget-wide v13, v7, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    move v7, v11

    iget-wide v11, v12, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    sub-double/2addr v13, v11

    mul-double/2addr v13, v13

    add-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    cmpl-double v3, v3, v8

    if-lez v3, :cond_7

    .line 29
    aget-object v3, v20, v21

    aput v7, v3, v21

    .line 30
    aget-object v3, v20, v19

    aput v19, v3, v21

    :cond_7
    const/4 v3, 0x0

    .line 31
    iput v3, v1, Lcom/mycompany/app/curl/CurlMesh;->v:I

    iput v3, v1, Lcom/mycompany/app/curl/CurlMesh;->w:I

    .line 32
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->g:Lcom/mycompany/app/curl/CurlMesh$Array;

    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->a:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v3, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->c(Lcom/mycompany/app/curl/CurlMesh$Array;)V

    .line 33
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->g:Lcom/mycompany/app/curl/CurlMesh$Array;

    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->f:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v3, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->c(Lcom/mycompany/app/curl/CurlMesh$Array;)V

    .line 34
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->a:Lcom/mycompany/app/curl/CurlMesh$Array;

    const/4 v4, 0x0

    .line 35
    iput v4, v3, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 36
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->f:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 37
    iput v4, v3, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    mul-double v11, p3, v15

    .line 38
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->e:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 39
    iput v4, v3, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 40
    iget v4, v1, Lcom/mycompany/app/curl/CurlMesh;->o:I

    if-lez v4, :cond_8

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    :cond_8
    move/from16 v3, v21

    .line 41
    :goto_4
    iget v4, v1, Lcom/mycompany/app/curl/CurlMesh;->o:I

    if-ge v3, v4, :cond_9

    .line 42
    iget-object v8, v1, Lcom/mycompany/app/curl/CurlMesh;->e:Lcom/mycompany/app/curl/CurlMesh$Array;

    neg-double v9, v11

    int-to-double v13, v3

    mul-double/2addr v9, v13

    add-int/lit8 v4, v4, -0x1

    int-to-double v13, v4

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 43
    :cond_9
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->e:Lcom/mycompany/app/curl/CurlMesh$Array;

    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v4, v7}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    iget-wide v7, v4, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    .line 44
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    iget-wide v3, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    add-double/2addr v3, v9

    const/4 v7, 0x0

    .line 45
    :goto_5
    iget-object v8, v1, Lcom/mycompany/app/curl/CurlMesh;->e:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 46
    iget v13, v8, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    if-ge v7, v13, :cond_19

    .line 47
    invoke-virtual {v8, v7}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    move-wide/from16 v22, v9

    const/4 v8, 0x0

    .line 48
    :goto_6
    iget-object v9, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 49
    iget v10, v9, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    if-ge v8, v10, :cond_d

    .line 50
    invoke-virtual {v9, v8}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    move-wide/from16 v24, v3

    .line 51
    iget-wide v3, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    cmpl-double v10, v3, v13

    if-ltz v10, :cond_c

    cmpg-double v3, v3, v24

    if-gtz v3, :cond_c

    .line 52
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v3}, Lcom/mycompany/app/curl/CurlMesh$Array;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 53
    invoke-virtual {v3, v9}, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b(Lcom/mycompany/app/curl/CurlMesh$Vertex;)V

    .line 54
    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->d:Lcom/mycompany/app/curl/CurlMesh$Array;

    move-wide/from16 v26, v5

    iget-wide v5, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    move-object/from16 v10, v20

    invoke-virtual {v1, v4, v10, v5, v6}, Lcom/mycompany/app/curl/CurlMesh;->d(Lcom/mycompany/app/curl/CurlMesh$Array;[[ID)Lcom/mycompany/app/curl/CurlMesh$Array;

    move-result-object v4

    .line 55
    iget v5, v4, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    move/from16 v6, v21

    if-ne v5, v6, :cond_a

    const/4 v5, 0x0

    .line 56
    invoke-virtual {v4, v5}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    iget-wide v5, v6, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    move-wide/from16 v28, v5

    iget-wide v5, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    cmpl-double v5, v28, v5

    if-lez v5, :cond_a

    .line 57
    iget-object v5, v1, Lcom/mycompany/app/curl/CurlMesh;->c:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v5, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->c(Lcom/mycompany/app/curl/CurlMesh$Array;)V

    .line 58
    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->c:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v4, v3}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    goto :goto_7

    .line 59
    :cond_a
    iget v5, v4, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_b

    .line 60
    iget-object v5, v1, Lcom/mycompany/app/curl/CurlMesh;->c:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v5, v3}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    .line 61
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->c:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v3, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->c(Lcom/mycompany/app/curl/CurlMesh$Array;)V

    goto :goto_7

    .line 62
    :cond_b
    iget-object v5, v1, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v5, v3}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    .line 63
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v3, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->c(Lcom/mycompany/app/curl/CurlMesh$Array;)V

    goto :goto_7

    :cond_c
    move-wide/from16 v26, v5

    move-object/from16 v10, v20

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v20, v10

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    const/16 v21, 0x1

    goto :goto_6

    :cond_d
    move-wide/from16 v26, v5

    move-object/from16 v10, v20

    .line 64
    invoke-virtual {v1, v9, v10, v13, v14}, Lcom/mycompany/app/curl/CurlMesh;->d(Lcom/mycompany/app/curl/CurlMesh$Array;[[ID)Lcom/mycompany/app/curl/CurlMesh$Array;

    move-result-object v3

    .line 65
    iget v4, v3, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    move/from16 v5, v19

    if-ne v4, v5, :cond_f

    const/4 v5, 0x0

    .line 66
    invoke-virtual {v3, v5}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    const/4 v6, 0x1

    .line 67
    invoke-virtual {v3, v6}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 68
    iget-wide v8, v4, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    move-wide/from16 v24, v8

    iget-wide v8, v5, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    cmpg-double v6, v24, v8

    if-gez v6, :cond_e

    .line 69
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->c:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v3, v5}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    .line 70
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->c:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v3, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    goto :goto_8

    .line 71
    :cond_e
    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->c:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v4, v3}, Lcom/mycompany/app/curl/CurlMesh$Array;->c(Lcom/mycompany/app/curl/CurlMesh$Array;)V

    goto :goto_8

    :cond_f
    if-eqz v4, :cond_10

    .line 72
    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v4, v3}, Lcom/mycompany/app/curl/CurlMesh$Array;->c(Lcom/mycompany/app/curl/CurlMesh$Array;)V

    .line 73
    :cond_10
    :goto_8
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->c:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 74
    iget v4, v3, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    if-lez v4, :cond_18

    .line 75
    invoke-virtual {v3}, Lcom/mycompany/app/curl/CurlMesh$Array;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 76
    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v4, v3}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    if-nez v7, :cond_11

    .line 77
    iget v6, v1, Lcom/mycompany/app/curl/CurlMesh;->w:I

    const/16 v21, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/mycompany/app/curl/CurlMesh;->w:I

    const/4 v4, 0x1

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    goto/16 :goto_b

    .line 78
    :cond_11
    iget-object v6, v1, Lcom/mycompany/app/curl/CurlMesh;->e:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 79
    iget v6, v6, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    const/16 v21, 0x1

    add-int/lit8 v6, v6, -0x1

    if-eq v7, v6, :cond_12

    move-wide/from16 v8, v17

    .line 80
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_13

    :cond_12
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    goto :goto_a

    .line 81
    :cond_13
    iget-wide v8, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    div-double/2addr v8, v11

    mul-double/2addr v8, v15

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v4, p3, v24

    iput-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 83
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, p3

    sub-double v4, p3, v4

    iput-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    .line 84
    iget-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v4, v4, v24

    iput-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 85
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-double v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v8, 0x3fecccccc0000000L    # 0.8999999761581421

    mul-double/2addr v4, v8

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v4, v8

    double-to-float v4, v4

    iput v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b:F

    .line 86
    iget-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    cmpl-double v4, v4, p3

    if-ltz v4, :cond_14

    .line 87
    iget v4, v1, Lcom/mycompany/app/curl/CurlMesh;->v:I

    const/16 v21, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/mycompany/app/curl/CurlMesh;->v:I

    :goto_9
    const/4 v4, 0x0

    goto :goto_b

    :cond_14
    const/16 v21, 0x1

    .line 88
    iget v4, v1, Lcom/mycompany/app/curl/CurlMesh;->w:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/mycompany/app/curl/CurlMesh;->w:I

    const/4 v4, 0x1

    goto :goto_b

    .line 89
    :goto_a
    iget-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    add-double/2addr v4, v11

    neg-double v4, v4

    iput-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    mul-double v4, p3, v28

    .line 90
    iput-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    .line 91
    iget-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    neg-double v4, v4

    iput-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 92
    iget v4, v1, Lcom/mycompany/app/curl/CurlMesh;->v:I

    const/16 v21, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/mycompany/app/curl/CurlMesh;->v:I

    goto :goto_9

    :goto_b
    if-nez v4, :cond_15

    const v4, -0x777778

    .line 93
    iput v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a:I

    :goto_c
    move-wide/from16 v5, v26

    goto :goto_d

    :cond_15
    const/4 v4, -0x1

    .line 94
    iput v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a:I

    goto :goto_c

    .line 95
    :goto_d
    invoke-virtual {v3, v5, v6}, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a(D)V

    .line 96
    iget v4, v0, Landroid/graphics/PointF;->x:F

    float-to-double v8, v4

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-wide/from16 v26, v5

    float-to-double v4, v4

    move-wide/from16 v24, v4

    .line 97
    iget-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    add-double/2addr v4, v8

    iput-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 98
    iget-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    add-double v4, v4, v24

    iput-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 99
    invoke-virtual {v1, v3}, Lcom/mycompany/app/curl/CurlMesh;->a(Lcom/mycompany/app/curl/CurlMesh$Vertex;)V

    .line 100
    iget-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    const-wide/16 v17, 0x0

    cmpl-double v6, v4, v17

    if-lez v6, :cond_16

    cmpg-double v4, v4, p3

    if-gtz v4, :cond_16

    .line 101
    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->g:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;

    .line 102
    iget-wide v5, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    iput-wide v5, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->d:D

    .line 103
    iget-wide v5, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    iput-wide v5, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->e:D

    .line 104
    iget-wide v5, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    iput-wide v5, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->f:D

    div-double v8, v5, v28

    .line 105
    iget v15, v2, Landroid/graphics/PointF;->x:F

    neg-float v15, v15

    move-wide/from16 v30, v5

    float-to-double v5, v15

    mul-double/2addr v5, v8

    iput-wide v5, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->b:D

    .line 106
    iget v5, v2, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    float-to-double v5, v5

    mul-double/2addr v8, v5

    iput-wide v8, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->c:D

    div-double v5, v30, p3

    .line 107
    iput-wide v5, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->a:D

    .line 108
    iget-object v5, v1, Lcom/mycompany/app/curl/CurlMesh;->a:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 109
    iget v6, v5, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    const/16 v21, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v19, 0x2

    .line 110
    div-int/lit8 v6, v6, 0x2

    .line 111
    invoke-virtual {v5, v6, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->a(ILjava/lang/Object;)V

    .line 112
    :cond_16
    iget-wide v4, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    cmpl-double v4, v4, p3

    if-lez v4, :cond_17

    .line 113
    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->g:Lcom/mycompany/app/curl/CurlMesh$Array;

    invoke-virtual {v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;

    .line 114
    iget-wide v5, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    iput-wide v5, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->d:D

    .line 115
    iget-wide v5, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    iput-wide v5, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->e:D

    .line 116
    iget-wide v5, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    iput-wide v5, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->f:D

    sub-double v5, v5, p3

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double v8, v5, v8

    move-wide v15, v5

    .line 117
    iget-wide v5, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    mul-double/2addr v5, v8

    iput-wide v5, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->b:D

    .line 118
    iget-wide v5, v3, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    mul-double/2addr v8, v5

    iput-wide v8, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->c:D

    mul-double v5, p3, v28

    div-double v5, v15, v5

    .line 119
    iput-wide v5, v4, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->a:D

    .line 120
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->f:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 121
    iget v5, v3, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    const/16 v21, 0x1

    add-int/lit8 v5, v5, 0x1

    const/16 v19, 0x2

    .line 122
    div-int/lit8 v5, v5, 0x2

    .line 123
    invoke-virtual {v3, v5, v4}, Lcom/mycompany/app/curl/CurlMesh$Array;->a(ILjava/lang/Object;)V

    goto :goto_e

    :cond_17
    const/16 v21, 0x1

    :goto_e
    const-wide v15, 0x400921fb54442d18L    # Math.PI

    goto/16 :goto_8

    :cond_18
    const/16 v21, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v20, v10

    move-wide v3, v13

    move-wide/from16 v9, v22

    move-wide/from16 v5, v26

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    const/16 v19, 0x2

    goto/16 :goto_5

    .line 124
    :cond_19
    iget-object v0, v1, Lcom/mycompany/app/curl/CurlMesh;->m:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    iget-object v0, v1, Lcom/mycompany/app/curl/CurlMesh;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    iget-object v0, v1, Lcom/mycompany/app/curl/CurlMesh;->l:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    iget-object v0, v1, Lcom/mycompany/app/curl/CurlMesh;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    iget-object v0, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iput v4, v1, Lcom/mycompany/app/curl/CurlMesh;->n:I

    const/4 v0, 0x0

    .line 130
    :goto_f
    iget-object v2, v1, Lcom/mycompany/app/curl/CurlMesh;->a:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 131
    iget v3, v2, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    if-ge v0, v3, :cond_1b

    .line 132
    invoke-virtual {v2, v0}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;

    .line 133
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v2, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->d:D

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 134
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v2, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->e:D

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 135
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v2, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->f:D

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 136
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v2, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->d:D

    iget-wide v6, v2, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->b:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 137
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v2, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->e:D

    iget-wide v6, v2, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->c:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 138
    iget-object v3, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v2, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->f:D

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    :goto_10
    const/4 v13, 0x4

    if-ge v3, v13, :cond_1a

    .line 139
    sget-object v4, Lcom/mycompany/app/curl/CurlMesh;->E:[F

    aget v4, v4, v3

    float-to-double v5, v4

    sget-object v7, Lcom/mycompany/app/curl/CurlMesh;->D:[F

    aget v7, v7, v3

    sub-float/2addr v7, v4

    float-to-double v7, v7

    iget-wide v9, v2, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->a:D

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    .line 140
    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->j:Ljava/nio/FloatBuffer;

    double-to-float v5, v7

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 141
    :cond_1a
    iget-object v2, v1, Lcom/mycompany/app/curl/CurlMesh;->j:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/mycompany/app/curl/CurlMesh;->E:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 142
    iget v2, v1, Lcom/mycompany/app/curl/CurlMesh;->n:I

    const/16 v19, 0x2

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/mycompany/app/curl/CurlMesh;->n:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    const/4 v4, 0x0

    .line 143
    iput v4, v1, Lcom/mycompany/app/curl/CurlMesh;->q:I

    const/4 v3, 0x0

    .line 144
    :goto_11
    iget-object v0, v1, Lcom/mycompany/app/curl/CurlMesh;->f:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 145
    iget v2, v0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    if-ge v3, v2, :cond_1d

    .line 146
    invoke-virtual {v0, v3}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;

    .line 147
    iget-object v2, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v0, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->d:D

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 148
    iget-object v2, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v0, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->e:D

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 149
    iget-object v2, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v0, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->f:D

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 150
    iget-object v2, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v0, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->d:D

    iget-wide v6, v0, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->b:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 151
    iget-object v2, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v0, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->e:D

    iget-wide v6, v0, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->c:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 152
    iget-object v2, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    iget-wide v4, v0, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->f:D

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    const/4 v13, 0x4

    :goto_12
    if-ge v2, v13, :cond_1c

    .line 153
    sget-object v4, Lcom/mycompany/app/curl/CurlMesh;->E:[F

    aget v4, v4, v2

    float-to-double v5, v4

    sget-object v7, Lcom/mycompany/app/curl/CurlMesh;->D:[F

    aget v7, v7, v2

    sub-float/2addr v7, v4

    float-to-double v7, v7

    iget-wide v9, v0, Lcom/mycompany/app/curl/CurlMesh$ShadowVertex;->a:D

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    .line 154
    iget-object v4, v1, Lcom/mycompany/app/curl/CurlMesh;->j:Ljava/nio/FloatBuffer;

    double-to-float v5, v7

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 155
    :cond_1c
    iget-object v0, v1, Lcom/mycompany/app/curl/CurlMesh;->j:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/mycompany/app/curl/CurlMesh;->E:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 156
    iget v0, v1, Lcom/mycompany/app/curl/CurlMesh;->q:I

    const/16 v19, 0x2

    add-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/mycompany/app/curl/CurlMesh;->q:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 157
    :cond_1d
    iget-object v0, v1, Lcom/mycompany/app/curl/CurlMesh;->j:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    iget-object v0, v1, Lcom/mycompany/app/curl/CurlMesh;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :goto_13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/curl/CurlMesh;->A:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/mycompany/app/curl/CurlMesh;->B:F

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    cmpl-float v2, v0, v2

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-lez v2, :cond_1

    .line 14
    .line 15
    const v2, 0x3dcccccd    # 0.1f

    .line 16
    .line 17
    .line 18
    sub-float/2addr v0, v2

    .line 19
    iput v0, p0, Lcom/mycompany/app/curl/CurlMesh;->B:F

    .line 20
    .line 21
    const/16 v0, 0xbe2

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x302

    .line 27
    .line 28
    const/16 v4, 0x303

    .line 29
    .line 30
    invoke-interface {p1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/mycompany/app/curl/CurlMesh;->B:F

    .line 34
    .line 35
    const v4, 0x3e051eb8    # 0.13f

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v4, v4, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 39
    .line 40
    .line 41
    const v2, 0x8074

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 45
    .line 46
    .line 47
    const/16 v4, 0x1406

    .line 48
    .line 49
    iget-object v5, p0, Lcom/mycompany/app/curl/CurlMesh;->y:Ljava/nio/FloatBuffer;

    .line 50
    .line 51
    const/4 v6, 0x3

    .line 52
    invoke-interface {p1, v6, v4, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x1403

    .line 56
    .line 57
    iget-object v4, p0, Lcom/mycompany/app/curl/CurlMesh;->z:Ljava/nio/ShortBuffer;

    .line 58
    .line 59
    const/4 v5, 0x4

    .line 60
    const/4 v6, 0x6

    .line 61
    invoke-interface {p1, v5, v6, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/curl/CurlMesh;->A:Z

    .line 72
    .line 73
    return v3
.end method

.method public final d(Lcom/mycompany/app/curl/CurlMesh$Array;[[ID)Lcom/mycompany/app/curl/CurlMesh$Array;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v3, p3

    .line 8
    .line 9
    iget-object v5, v0, Lcom/mycompany/app/curl/CurlMesh;->b:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    iput v6, v5, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 13
    .line 14
    move v7, v6

    .line 15
    :goto_0
    array-length v8, v2

    .line 16
    if-ge v7, v8, :cond_1

    .line 17
    .line 18
    aget-object v8, v2, v7

    .line 19
    .line 20
    aget v8, v8, v6

    .line 21
    .line 22
    invoke-virtual {v1, v8}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    check-cast v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 27
    .line 28
    aget-object v9, v2, v7

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    aget v9, v9, v10

    .line 32
    .line 33
    invoke-virtual {v1, v9}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    check-cast v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 38
    .line 39
    iget-wide v10, v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 40
    .line 41
    cmpl-double v12, v10, v3

    .line 42
    .line 43
    if-lez v12, :cond_0

    .line 44
    .line 45
    iget-wide v12, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 46
    .line 47
    cmpg-double v14, v12, v3

    .line 48
    .line 49
    if-gez v14, :cond_0

    .line 50
    .line 51
    sub-double v14, v3, v12

    .line 52
    .line 53
    sub-double/2addr v10, v12

    .line 54
    div-double/2addr v14, v10

    .line 55
    iget-object v10, v0, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 56
    .line 57
    invoke-virtual {v10}, Lcom/mycompany/app/curl/CurlMesh$Array;->e()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    check-cast v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 62
    .line 63
    invoke-virtual {v10, v9}, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b(Lcom/mycompany/app/curl/CurlMesh$Vertex;)V

    .line 64
    .line 65
    .line 66
    iput-wide v3, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 67
    .line 68
    iget-wide v11, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 69
    .line 70
    move/from16 v16, v7

    .line 71
    .line 72
    iget-wide v6, v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 73
    .line 74
    move-wide/from16 v17, v14

    .line 75
    .line 76
    iget-wide v13, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 77
    .line 78
    sub-double/2addr v6, v13

    .line 79
    mul-double v6, v6, v17

    .line 80
    .line 81
    add-double/2addr v6, v11

    .line 82
    iput-wide v6, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 83
    .line 84
    iget-wide v6, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 85
    .line 86
    iget-wide v11, v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 87
    .line 88
    iget-wide v13, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 89
    .line 90
    sub-double/2addr v11, v13

    .line 91
    mul-double v11, v11, v17

    .line 92
    .line 93
    add-double/2addr v11, v6

    .line 94
    iput-wide v11, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 95
    .line 96
    iget-wide v6, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 97
    .line 98
    iget-wide v11, v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 99
    .line 100
    iget-wide v13, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 101
    .line 102
    sub-double/2addr v11, v13

    .line 103
    mul-double v11, v11, v17

    .line 104
    .line 105
    add-double/2addr v11, v6

    .line 106
    iput-wide v11, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 107
    .line 108
    iget-wide v6, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 109
    .line 110
    iget-wide v11, v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 111
    .line 112
    iget-wide v13, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 113
    .line 114
    sub-double/2addr v11, v13

    .line 115
    mul-double v11, v11, v17

    .line 116
    .line 117
    add-double/2addr v11, v6

    .line 118
    iput-wide v11, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 119
    .line 120
    iget-wide v6, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 121
    .line 122
    iget-wide v11, v8, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 123
    .line 124
    iget-wide v8, v9, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 125
    .line 126
    sub-double/2addr v11, v8

    .line 127
    mul-double v11, v11, v17

    .line 128
    .line 129
    add-double/2addr v11, v6

    .line 130
    iput-wide v11, v10, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 131
    .line 132
    invoke-virtual {v5, v10}, Lcom/mycompany/app/curl/CurlMesh$Array;->b(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_0
    move/from16 v16, v7

    .line 137
    .line 138
    :goto_1
    add-int/lit8 v7, v16, 0x1

    .line 139
    .line 140
    const/4 v6, 0x0

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    return-object v5
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlMesh;->m:Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/mycompany/app/curl/CurlMesh;->i:Ljava/nio/FloatBuffer;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/mycompany/app/curl/CurlMesh;->l:Ljava/nio/FloatBuffer;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    .line 16
    .line 17
    move v4, v1

    .line 18
    :goto_0
    const/4 v5, 0x4

    .line 19
    if-ge v4, v5, :cond_0

    .line 20
    .line 21
    iget-object v5, p0, Lcom/mycompany/app/curl/CurlMesh;->h:Lcom/mycompany/app/curl/CurlMesh$Array;

    .line 22
    .line 23
    invoke-virtual {v5, v1}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 28
    .line 29
    iget-object v6, p0, Lcom/mycompany/app/curl/CurlMesh;->p:[Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 30
    .line 31
    aget-object v6, v6, v4

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b(Lcom/mycompany/app/curl/CurlMesh$Vertex;)V

    .line 34
    .line 35
    .line 36
    const/4 v6, -0x1

    .line 37
    iput v6, v5, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a:I

    .line 38
    .line 39
    invoke-virtual {p0, v5}, Lcom/mycompany/app/curl/CurlMesh;->a(Lcom/mycompany/app/curl/CurlMesh$Vertex;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput v5, p0, Lcom/mycompany/app/curl/CurlMesh;->w:I

    .line 46
    .line 47
    iput v1, p0, Lcom/mycompany/app/curl/CurlMesh;->v:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    .line 57
    .line 58
    iput v1, p0, Lcom/mycompany/app/curl/CurlMesh;->q:I

    .line 59
    .line 60
    iput v1, p0, Lcom/mycompany/app/curl/CurlMesh;->n:I

    .line 61
    .line 62
    return-void
.end method

.method public final declared-synchronized f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlMesh;->t:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/mycompany/app/curl/CurlMesh;->s:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/curl/CurlMesh;->t:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/mycompany/app/curl/CurlMesh;->u:Z

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/mycompany/app/curl/CurlMesh;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method

.method public final g(FF)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/curl/CurlMesh;->p:[Lcom/mycompany/app/curl/CurlMesh$Vertex;

    .line 3
    .line 4
    aget-object v0, v1, v0

    .line 5
    .line 6
    float-to-double v2, p1

    .line 7
    iput-wide v2, v0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    float-to-double v4, p1

    .line 11
    iput-wide v4, v0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    aget-object p1, v1, p1

    .line 15
    .line 16
    iput-wide v2, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 17
    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    float-to-double v2, v0

    .line 21
    iput-wide v2, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    aget-object p1, v1, p1

    .line 25
    .line 26
    float-to-double v6, p2

    .line 27
    iput-wide v6, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 28
    .line 29
    iput-wide v4, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    aget-object p1, v1, p1

    .line 33
    .line 34
    iput-wide v6, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 35
    .line 36
    iput-wide v2, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 37
    .line 38
    return-void
.end method
