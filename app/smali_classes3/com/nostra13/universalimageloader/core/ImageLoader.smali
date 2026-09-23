.class public Lcom/nostra13/universalimageloader/core/ImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;,
        Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;,
        Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field public static final d:[I


# instance fields
.field public a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field public b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->d:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x18
        0x88
        0x108
        0x98
        0x118
        0x188
        0x198
        0x28
        0x38
        0xa8
        0x128
        0xb8
        0x138
        0x1a8
        0x1b8
        0x48
        0x58
        0xc8
        0x148
        0xd8
        0x158
        0x1c8
        0x1d8
    .end array-data
.end method

.method public static f()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 2

    .line 1
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->c:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoader;->c:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/nostra13/universalimageloader/core/ImageLoader;->c:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->c:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 2
    .line 3
    new-instance v1, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "ImageLoader must be init with configuration before using"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->d(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->b()V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    iget-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 7
    .line 8
    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 9
    .line 10
    :cond_0
    move-object v6, p3

    .line 11
    const/4 p3, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p4, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 44
    .line 45
    const/4 v2, -0x1

    .line 46
    if-eq v1, v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 53
    .line 54
    :cond_2
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 63
    .line 64
    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-interface {p4, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->a()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 88
    .line 89
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWidth()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/4 v4, 0x2

    .line 94
    if-gtz v3, :cond_5

    .line 95
    .line 96
    if-ne v1, v4, :cond_4

    .line 97
    .line 98
    sget v3, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iget v3, v0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->a:I

    .line 102
    .line 103
    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getHeight()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-gtz v5, :cond_6

    .line 108
    .line 109
    if-ne v1, v4, :cond_7

    .line 110
    .line 111
    sget v5, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 112
    .line 113
    :cond_6
    :goto_1
    move v0, v4

    .line 114
    goto :goto_2

    .line 115
    :cond_7
    iget v5, v0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->b:I

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :goto_2
    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 119
    .line 120
    invoke-direct {v4, v3, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    .line 121
    .line 122
    .line 123
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 124
    .line 125
    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->e:Ljava/util/Map;

    .line 132
    .line 133
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 145
    .line 146
    .line 147
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 148
    .line 149
    if-eq v1, v0, :cond_8

    .line 150
    .line 151
    const/4 v0, 0x4

    .line 152
    if-eq v1, v0, :cond_8

    .line 153
    .line 154
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 155
    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Lcom/mycompany/app/compress/Compress;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_8

    .line 167
    .line 168
    const/16 v1, 0x200

    .line 169
    .line 170
    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    goto :goto_3

    .line 175
    :cond_8
    move-object v0, p3

    .line 176
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_9

    .line 181
    .line 182
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 183
    .line 184
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->h:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    goto :goto_4

    .line 191
    :cond_9
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 192
    .line 193
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->h:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 194
    .line 195
    invoke-virtual {v0, v5}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    :goto_4
    if-eqz v0, :cond_b

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-nez v1, :cond_b

    .line 206
    .line 207
    iget-object p3, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 208
    .line 209
    if-eqz p3, :cond_a

    .line 210
    .line 211
    invoke-static {v2}, Lcom/mycompany/app/compress/Compress;->h(Ljava/lang/String;)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    if-nez p3, :cond_a

    .line 216
    .line 217
    iget-object p3, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const/4 p3, 0x0

    .line 231
    invoke-static {v1, v3, p3, v2}, Lcom/mycompany/app/compress/Compress;->O(IIILjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    iget-object p3, v6, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 238
    .line 239
    invoke-interface {p3, v0, p2}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->a(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 240
    .line 241
    .line 242
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-interface {p4, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    iget-boolean v9, v6, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->g:Z

    .line 254
    .line 255
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    .line 256
    .line 257
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 258
    .line 259
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->f:Ljava/util/WeakHashMap;

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 266
    .line 267
    if-nez v3, :cond_c

    .line 268
    .line 269
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 270
    .line 271
    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    :cond_c
    move-object v1, p1

    .line 278
    move-object v7, p4

    .line 279
    move-object v8, v3

    .line 280
    move-object v3, p2

    .line 281
    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Lcom/mycompany/app/main/MainItem$ViewItem;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 282
    .line 283
    .line 284
    new-instance p1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .line 285
    .line 286
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 287
    .line 288
    if-eqz v9, :cond_d

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 292
    .line 293
    .line 294
    move-result-object p4

    .line 295
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    if-ne p4, v1, :cond_e

    .line 300
    .line 301
    new-instance p3, Landroid/os/Handler;

    .line 302
    .line 303
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 304
    .line 305
    .line 306
    move-result-object p4

    .line 307
    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 308
    .line 309
    .line 310
    :cond_e
    :goto_5
    invoke-direct {p1, p2, v0, p3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 311
    .line 312
    .line 313
    if-eqz v9, :cond_f

    .line 314
    .line 315
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->run()V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_f
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 320
    .line 321
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    :try_start_0
    iget-object p3, p2, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->d:Ljava/util/concurrent/ExecutorService;

    .line 325
    .line 326
    new-instance p4, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;

    .line 327
    .line 328
    invoke-direct {p4, p2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    .line 329
    .line 330
    .line 331
    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .line 333
    .line 334
    :catch_0
    return-void
.end method

.method public final e()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->j:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 7
    .line 8
    return-object v0
.end method

.method public final g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->h:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 7
    .line 8
    return-object v0
.end method

.method public final declared-synchronized h(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const-string p1, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v1, v2, p1, v0}, Lcom/nostra13/universalimageloader/utils/L;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :goto_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method

.method public final i(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->b()V

    .line 28
    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 35
    .line 36
    :cond_2
    new-instance v1, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->a()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    invoke-interface {p3, p1, p2, p2}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->d(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final j(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    iput-boolean p2, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->g:Z

    .line 17
    .line 18
    new-instance p2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 19
    .line 20
    invoke-direct {p2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->i(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, v0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;->a:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    return-object p1
.end method

.method public final k(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    iput-boolean p2, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->g:Z

    .line 17
    .line 18
    new-instance p2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 19
    .line 20
    invoke-direct {p2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->i(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;

    .line 32
    .line 33
    iget-object p2, v0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->a:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->b:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    iget v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->c:I

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p2, p1, Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;->a:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, p1, Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;->b:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    iput v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoader$ImageLoadItem;->c:I

    .line 47
    .line 48
    return-object p1
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/16 v1, 0x1a

    .line 14
    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoader;->d:[I

    .line 18
    .line 19
    aget v1, v1, v0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->h:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 24
    .line 25
    invoke-static {v1, p1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->j:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->remove(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->d:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->e:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->e:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->f:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
