.class final Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DecodeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/DataSource;

.field public final synthetic b:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->b:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->a:Lcom/bumptech/glide/load/DataSource;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->b:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v12

    .line 17
    sget-object v4, Lcom/bumptech/glide/load/DataSource;->h:Lcom/bumptech/glide/load/DataSource;

    .line 18
    .line 19
    iget-object v5, v0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->a:Lcom/bumptech/glide/load/DataSource;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    if-eq v5, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3, v12}, Lcom/bumptech/glide/load/engine/DecodeHelper;->d(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v7, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->l:Lcom/bumptech/glide/GlideContext;

    .line 29
    .line 30
    iget v8, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->p:I

    .line 31
    .line 32
    iget v9, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->q:I

    .line 33
    .line 34
    invoke-interface {v4, v7, v1, v8, v9}, Lcom/bumptech/glide/load/Transformation;->b(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    move-object v11, v4

    .line 39
    move-object v4, v7

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v4, v1

    .line 42
    move-object v11, v6

    .line 43
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/Resource;->a()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v1, v3, Lcom/bumptech/glide/load/engine/DecodeHelper;->c:Lcom/bumptech/glide/GlideContext;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/bumptech/glide/GlideContext;->b()Lcom/bumptech/glide/Registry;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v1, v1, Lcom/bumptech/glide/Registry;->d:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    .line 59
    .line 60
    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/Resource;->c()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v1, v7}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/ResourceEncoder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    iget-object v1, v3, Lcom/bumptech/glide/load/engine/DecodeHelper;->c:Lcom/bumptech/glide/GlideContext;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/bumptech/glide/GlideContext;->b()Lcom/bumptech/glide/Registry;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v1, v1, Lcom/bumptech/glide/Registry;->d:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    .line 77
    .line 78
    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/Resource;->c()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v1, v6}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/ResourceEncoder;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    iget-object v1, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/Options;

    .line 89
    .line 90
    invoke-interface {v6, v1}, Lcom/bumptech/glide/load/ResourceEncoder;->b(Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/EncodeStrategy;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_1
    move-object v14, v6

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    new-instance v1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    .line 97
    .line 98
    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/Resource;->c()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-direct {v1, v2}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_3
    sget-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->g:Lcom/bumptech/glide/load/EncodeStrategy;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_2
    iget-object v6, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Lcom/bumptech/glide/load/Key;

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->b()Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    const/4 v15, 0x0

    .line 120
    move v9, v15

    .line 121
    :goto_3
    const/4 v10, 0x1

    .line 122
    if-ge v9, v8, :cond_5

    .line 123
    .line 124
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    check-cast v13, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 129
    .line 130
    iget-object v13, v13, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->a:Lcom/bumptech/glide/load/Key;

    .line 131
    .line 132
    invoke-interface {v13, v6}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    if-eqz v13, :cond_4

    .line 137
    .line 138
    move v6, v10

    .line 139
    goto :goto_4

    .line 140
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    move v6, v15

    .line 144
    :goto_4
    xor-int/2addr v6, v10

    .line 145
    iget-object v7, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->r:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 146
    .line 147
    invoke-virtual {v7, v6, v5, v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->d(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_9

    .line 152
    .line 153
    if-eqz v14, :cond_8

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_7

    .line 160
    .line 161
    if-ne v5, v10, :cond_6

    .line 162
    .line 163
    new-instance v5, Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 164
    .line 165
    iget-object v1, v3, Lcom/bumptech/glide/load/engine/DecodeHelper;->c:Lcom/bumptech/glide/GlideContext;

    .line 166
    .line 167
    iget-object v6, v1, Lcom/bumptech/glide/GlideContext;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 168
    .line 169
    iget-object v7, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Lcom/bumptech/glide/load/Key;

    .line 170
    .line 171
    iget-object v8, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lcom/bumptech/glide/load/Key;

    .line 172
    .line 173
    iget v9, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->p:I

    .line 174
    .line 175
    move v1, v10

    .line 176
    iget v10, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->q:I

    .line 177
    .line 178
    iget-object v13, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/Options;

    .line 179
    .line 180
    move v3, v1

    .line 181
    invoke-direct/range {v5 .. v13}, Lcom/bumptech/glide/load/engine/ResourceCacheKey;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/Transformation;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 186
    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v4, "Unknown strategy: "

    .line 190
    .line 191
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v2

    .line 205
    :cond_7
    move v3, v10

    .line 206
    new-instance v5, Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 207
    .line 208
    iget-object v1, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Lcom/bumptech/glide/load/Key;

    .line 209
    .line 210
    iget-object v6, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lcom/bumptech/glide/load/Key;

    .line 211
    .line 212
    invoke-direct {v5, v1, v6}, Lcom/bumptech/glide/load/engine/DataCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 213
    .line 214
    .line 215
    :goto_5
    sget-object v1, Lcom/bumptech/glide/load/engine/LockedResource;->i:Landroidx/core/util/Pools$Pool;

    .line 216
    .line 217
    invoke-interface {v1}, Landroidx/core/util/Pools$Pool;->b()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Lcom/bumptech/glide/load/engine/LockedResource;

    .line 222
    .line 223
    const-string v6, "Argument must not be null"

    .line 224
    .line 225
    invoke-static {v1, v6}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iput-boolean v15, v1, Lcom/bumptech/glide/load/engine/LockedResource;->h:Z

    .line 229
    .line 230
    iput-boolean v3, v1, Lcom/bumptech/glide/load/engine/LockedResource;->g:Z

    .line 231
    .line 232
    iput-object v4, v1, Lcom/bumptech/glide/load/engine/LockedResource;->f:Lcom/bumptech/glide/load/engine/Resource;

    .line 233
    .line 234
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    .line 235
    .line 236
    iput-object v5, v2, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->a:Lcom/bumptech/glide/load/Key;

    .line 237
    .line 238
    iput-object v14, v2, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->b:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 239
    .line 240
    iput-object v1, v2, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->c:Lcom/bumptech/glide/load/engine/LockedResource;

    .line 241
    .line 242
    return-object v1

    .line 243
    :cond_8
    new-instance v1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    .line 244
    .line 245
    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-direct {v1, v2}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    .line 254
    .line 255
    .line 256
    throw v1

    .line 257
    :cond_9
    return-object v4
.end method
