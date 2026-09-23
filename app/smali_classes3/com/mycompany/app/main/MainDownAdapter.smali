.class public Lcom/mycompany/app/main/MainDownAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;,
        Lcom/mycompany/app/main/MainDownAdapter$DownHolder;,
        Lcom/mycompany/app/main/MainDownAdapter$DownListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/MainDownAdapter$DownHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/mycompany/app/main/MainActivity;

.field public e:Ljava/util/List;

.field public final f:I

.field public g:Ljava/lang/String;

.field public h:Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;

.field public i:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public j:Lcom/mycompany/app/view/GlideRequests;

.field public k:Landroid/os/Handler;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/util/List;ILjava/lang/String;Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownAdapter;->e:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/main/MainDownAdapter;->f:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/MainDownAdapter;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/main/MainDownAdapter;->h:Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;

    .line 13
    .line 14
    return-void
.end method

.method public static v(Lcom/mycompany/app/main/MainDownAdapter;Landroid/view/View;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :goto_0
    const/4 p1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_2
    check-cast p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;

    .line 18
    .line 19
    :goto_1
    const/4 v0, -0x1

    .line 20
    if-eqz p1, :cond_4

    .line 21
    .line 22
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 23
    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    goto :goto_3

    .line 32
    :cond_4
    :goto_2
    move p1, v0

    .line 33
    :goto_3
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownAdapter;->w(I)Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_5

    .line 38
    .line 39
    return v0

    .line 40
    :cond_5
    iget p0, p0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->a:I

    .line 41
    .line 42
    return p0
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainDownAdapter;->l:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownAdapter;->e:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final e(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownAdapter;->w(I)Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->a:I

    .line 11
    .line 12
    int-to-long v0, p1

    .line 13
    return-wide v0
.end method

.method public final f(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainDownAdapter;->w(I)Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->k:I

    .line 10
    .line 11
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_e

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/MainDownAdapter;->w(I)Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_e

    .line 16
    .line 17
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->d:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget v5, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->k:I

    .line 26
    .line 27
    if-eq v5, v3, :cond_2

    .line 28
    .line 29
    move v5, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v5, v4

    .line 32
    :goto_0
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyLineRelative;->setDrawLine(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 41
    .line 42
    new-instance v5, Lcom/mycompany/app/main/MainDownAdapter$1;

    .line 43
    .line 44
    invoke-direct {v5, p0}, Lcom/mycompany/app/main/MainDownAdapter$1;-><init>(Lcom/mycompany/app/main/MainDownAdapter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/high16 v5, -0x1000000

    .line 62
    .line 63
    const v6, -0x50506

    .line 64
    .line 65
    .line 66
    iget v7, p0, Lcom/mycompany/app/main/MainDownAdapter;->f:I

    .line 67
    .line 68
    const v8, -0x70708

    .line 69
    .line 70
    .line 71
    const/4 v9, 0x3

    .line 72
    const/4 v10, 0x2

    .line 73
    const/16 v11, 0x8

    .line 74
    .line 75
    if-nez v2, :cond_b

    .line 76
    .line 77
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 78
    .line 79
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 80
    .line 81
    invoke-virtual {p2, v8, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 82
    .line 83
    .line 84
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 85
    .line 86
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 87
    .line 88
    iget v8, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->a:I

    .line 89
    .line 90
    if-nez p2, :cond_3

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_3
    if-ne v7, v9, :cond_6

    .line 95
    .line 96
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->l5(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_6

    .line 101
    .line 102
    iget-object v8, p0, Lcom/mycompany/app/main/MainDownAdapter;->j:Lcom/mycompany/app/view/GlideRequests;

    .line 103
    .line 104
    if-eqz v8, :cond_4

    .line 105
    .line 106
    iget-object v9, p0, Lcom/mycompany/app/main/MainDownAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 107
    .line 108
    iget-object v12, p0, Lcom/mycompany/app/main/MainDownAdapter;->g:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v9, v2, v12}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v8, v2}, Lcom/mycompany/app/view/GlideRequests;->t(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    sget-object v8, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 119
    .line 120
    invoke-virtual {v2, v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 125
    .line 126
    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-object v8, p0, Lcom/mycompany/app/main/MainDownAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 131
    .line 132
    if-nez v8, :cond_5

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    new-instance v9, Lcom/mycompany/app/main/MainDownAdapter$5;

    .line 136
    .line 137
    invoke-direct {v9, p0, v2, p2}, Lcom/mycompany/app/main/MainDownAdapter$5;-><init>(Lcom/mycompany/app/main/MainDownAdapter;Ljava/lang/String;Lcom/mycompany/app/view/MyRoundImage;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8, v9}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    invoke-static {v10, v2}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    invoke-virtual {v12}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    invoke-virtual {v12, v9}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    if-eqz v12, :cond_7

    .line 165
    .line 166
    invoke-virtual {p2, v9}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    new-instance v9, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 171
    .line 172
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    const/4 v12, 0x7

    .line 176
    iput v12, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 177
    .line 178
    iput-object v2, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownAdapter;->g:Ljava/lang/String;

    .line 181
    .line 182
    iput-object v2, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 183
    .line 184
    iput v8, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 185
    .line 186
    iput v10, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 187
    .line 188
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownAdapter;->i:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 189
    .line 190
    if-nez v2, :cond_8

    .line 191
    .line 192
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 193
    .line 194
    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 195
    .line 196
    .line 197
    iput-boolean v3, v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 198
    .line 199
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 202
    .line 203
    .line 204
    new-instance v8, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 205
    .line 206
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 207
    .line 208
    .line 209
    iput-object v8, v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 210
    .line 211
    new-instance v8, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 212
    .line 213
    invoke-direct {v8, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 214
    .line 215
    .line 216
    iput-object v8, p0, Lcom/mycompany/app/main/MainDownAdapter;->i:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 217
    .line 218
    :cond_8
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iget-object v8, p0, Lcom/mycompany/app/main/MainDownAdapter;->i:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 223
    .line 224
    new-instance v12, Lcom/mycompany/app/main/MainDownAdapter$4;

    .line 225
    .line 226
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v9, p2, v8, v12}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 230
    .line 231
    .line 232
    :goto_1
    iget p2, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 233
    .line 234
    if-ne p2, v3, :cond_9

    .line 235
    .line 236
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 237
    .line 238
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_20:I

    .line 239
    .line 240
    invoke-virtual {p2, v2}, Lcom/mycompany/app/view/MyRoundImage;->n(I)V

    .line 241
    .line 242
    .line 243
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 244
    .line 245
    invoke-virtual {p2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_9
    if-ne p2, v10, :cond_a

    .line 250
    .line 251
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 252
    .line 253
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_priority_high_white_20:I

    .line 254
    .line 255
    invoke-virtual {p2, v2}, Lcom/mycompany/app/view/MyRoundImage;->n(I)V

    .line 256
    .line 257
    .line 258
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 259
    .line 260
    invoke-virtual {p2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_a
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 265
    .line 266
    invoke-virtual {p2, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    :goto_2
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 270
    .line 271
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_b
    iget v2, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 276
    .line 277
    const v12, -0x616162

    .line 278
    .line 279
    .line 280
    if-ne v2, v3, :cond_c

    .line 281
    .line 282
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 283
    .line 284
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 285
    .line 286
    mul-int/2addr v2, v9

    .line 287
    int-to-float v2, v2

    .line 288
    invoke-virtual {p2, v2}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 289
    .line 290
    .line 291
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 292
    .line 293
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_20:I

    .line 294
    .line 295
    invoke-virtual {p2, v12, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 296
    .line 297
    .line 298
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 299
    .line 300
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_c
    if-ne v2, v10, :cond_d

    .line 305
    .line 306
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 307
    .line 308
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 309
    .line 310
    mul-int/2addr v2, v9

    .line 311
    int-to-float v2, v2

    .line 312
    invoke-virtual {p2, v2}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 313
    .line 314
    .line 315
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 316
    .line 317
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_priority_high_white_20:I

    .line 318
    .line 319
    invoke-virtual {p2, v12, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 320
    .line 321
    .line 322
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 323
    .line 324
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_d
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 329
    .line 330
    invoke-virtual {v2, v8, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 331
    .line 332
    .line 333
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 334
    .line 335
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 336
    .line 337
    if-eqz v8, :cond_e

    .line 338
    .line 339
    move v8, v6

    .line 340
    goto :goto_3

    .line 341
    :cond_e
    move v8, v5

    .line 342
    :goto_3
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    .line 344
    .line 345
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 346
    .line 347
    new-instance v8, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v9, ""

    .line 350
    .line 351
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    add-int/2addr p2, v3

    .line 355
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    .line 364
    .line 365
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 366
    .line 367
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    :goto_4
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 371
    .line 372
    invoke-virtual {p2, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    :goto_5
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 376
    .line 377
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    .line 381
    .line 382
    const-string p2, "HDSD"

    .line 383
    .line 384
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result p2

    .line 388
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->h:Z

    .line 389
    .line 390
    if-eqz v2, :cond_f

    .line 391
    .line 392
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->z:Landroid/widget/ImageView;

    .line 393
    .line 394
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    goto :goto_6

    .line 398
    :cond_f
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->z:Landroid/widget/ImageView;

    .line 399
    .line 400
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    .line 402
    .line 403
    :goto_6
    if-eqz p2, :cond_10

    .line 404
    .line 405
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 406
    .line 407
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 408
    .line 409
    .line 410
    goto :goto_8

    .line 411
    :cond_10
    const/4 v2, 0x0

    .line 412
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    if-nez v8, :cond_11

    .line 417
    .line 418
    iget-object v8, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 419
    .line 420
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    .line 422
    .line 423
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 424
    .line 425
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    goto :goto_8

    .line 429
    :cond_11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-nez v2, :cond_15

    .line 434
    .line 435
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 436
    .line 437
    iget-object v8, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 438
    .line 439
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 440
    .line 441
    .line 442
    move-result v9

    .line 443
    const-string v12, "MP4"

    .line 444
    .line 445
    if-nez v9, :cond_12

    .line 446
    .line 447
    const-string v9, "tsfile:"

    .line 448
    .line 449
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    if-nez v9, :cond_14

    .line 454
    .line 455
    const-string v9, "tsfake:"

    .line 456
    .line 457
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result v8

    .line 461
    if-eqz v8, :cond_12

    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    if-nez v8, :cond_13

    .line 469
    .line 470
    const-string v8, "M3U8"

    .line 471
    .line 472
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    if-eqz v8, :cond_13

    .line 477
    .line 478
    goto :goto_7

    .line 479
    :cond_13
    move-object v12, v1

    .line 480
    :cond_14
    :goto_7
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    .line 482
    .line 483
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 484
    .line 485
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 486
    .line 487
    .line 488
    goto :goto_8

    .line 489
    :cond_15
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 490
    .line 491
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 492
    .line 493
    .line 494
    :goto_8
    if-eqz p2, :cond_16

    .line 495
    .line 496
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 497
    .line 498
    invoke-virtual {v2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 499
    .line 500
    .line 501
    move v2, v4

    .line 502
    goto :goto_9

    .line 503
    :cond_16
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 504
    .line 505
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    move v2, v3

    .line 509
    :goto_9
    if-eqz p2, :cond_17

    .line 510
    .line 511
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 512
    .line 513
    invoke-virtual {p2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 514
    .line 515
    .line 516
    goto :goto_a

    .line 517
    :cond_17
    iget-boolean p2, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->g:Z

    .line 518
    .line 519
    if-nez p2, :cond_1d

    .line 520
    .line 521
    if-ne v7, v10, :cond_18

    .line 522
    .line 523
    goto :goto_c

    .line 524
    :cond_18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 525
    .line 526
    .line 527
    move-result p2

    .line 528
    if-eqz p2, :cond_19

    .line 529
    .line 530
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 531
    .line 532
    invoke-virtual {p2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 533
    .line 534
    .line 535
    goto :goto_a

    .line 536
    :cond_19
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->t2(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object p2

    .line 540
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    if-eqz v1, :cond_1a

    .line 545
    .line 546
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 547
    .line 548
    invoke-virtual {p2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 549
    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_1a
    const-string v1, "image"

    .line 553
    .line 554
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-nez v1, :cond_1c

    .line 559
    .line 560
    const-string v1, "video"

    .line 561
    .line 562
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    if-nez v1, :cond_1c

    .line 567
    .line 568
    const-string v1, "audio"

    .line 569
    .line 570
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 571
    .line 572
    .line 573
    move-result p2

    .line 574
    if-eqz p2, :cond_1b

    .line 575
    .line 576
    goto :goto_b

    .line 577
    :cond_1b
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 578
    .line 579
    invoke-virtual {p2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 580
    .line 581
    .line 582
    :goto_a
    move v3, v4

    .line 583
    goto :goto_d

    .line 584
    :cond_1c
    :goto_b
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 585
    .line 586
    invoke-virtual {p2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 587
    .line 588
    .line 589
    goto :goto_d

    .line 590
    :cond_1d
    :goto_c
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 591
    .line 592
    invoke-virtual {p2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 593
    .line 594
    .line 595
    :goto_d
    if-eqz v2, :cond_1e

    .line 596
    .line 597
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 598
    .line 599
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 603
    .line 604
    new-instance v1, Lcom/mycompany/app/main/MainDownAdapter$2;

    .line 605
    .line 606
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainDownAdapter$2;-><init>(Lcom/mycompany/app/main/MainDownAdapter;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    .line 611
    .line 612
    :cond_1e
    if-eqz v3, :cond_1f

    .line 613
    .line 614
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 615
    .line 616
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 617
    .line 618
    .line 619
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 620
    .line 621
    new-instance v1, Lcom/mycompany/app/main/MainDownAdapter$3;

    .line 622
    .line 623
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainDownAdapter$3;-><init>(Lcom/mycompany/app/main/MainDownAdapter;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    .line 628
    .line 629
    :cond_1f
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 630
    .line 631
    if-eqz p2, :cond_22

    .line 632
    .line 633
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 634
    .line 635
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 636
    .line 637
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 638
    .line 639
    .line 640
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 641
    .line 642
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    .line 644
    .line 645
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 646
    .line 647
    const v1, -0x3e3e3f

    .line 648
    .line 649
    .line 650
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 651
    .line 652
    .line 653
    iget-boolean p2, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->h:Z

    .line 654
    .line 655
    if-eqz p2, :cond_20

    .line 656
    .line 657
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->z:Landroid/widget/ImageView;

    .line 658
    .line 659
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_no_sound_dark_24:I

    .line 660
    .line 661
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 662
    .line 663
    .line 664
    :cond_20
    const p2, -0xc0c0c1

    .line 665
    .line 666
    .line 667
    if-eqz v2, :cond_21

    .line 668
    .line 669
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 670
    .line 671
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_info_dark_24:I

    .line 672
    .line 673
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 674
    .line 675
    .line 676
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 677
    .line 678
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 679
    .line 680
    .line 681
    :cond_21
    if-eqz v3, :cond_25

    .line 682
    .line 683
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 684
    .line 685
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 686
    .line 687
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 688
    .line 689
    .line 690
    iget-object p1, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 691
    .line 692
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 693
    .line 694
    .line 695
    return-void

    .line 696
    :cond_22
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 697
    .line 698
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 699
    .line 700
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 701
    .line 702
    .line 703
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 704
    .line 705
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    .line 707
    .line 708
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 709
    .line 710
    const v1, -0x9e9e9f

    .line 711
    .line 712
    .line 713
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 714
    .line 715
    .line 716
    iget-boolean p2, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->h:Z

    .line 717
    .line 718
    if-eqz p2, :cond_23

    .line 719
    .line 720
    iget-object p2, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->z:Landroid/widget/ImageView;

    .line 721
    .line 722
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_no_sound_black_24:I

    .line 723
    .line 724
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 725
    .line 726
    .line 727
    :cond_23
    const p2, -0x1f1f20

    .line 728
    .line 729
    .line 730
    if-eqz v2, :cond_24

    .line 731
    .line 732
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 733
    .line 734
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_info_black_24:I

    .line 735
    .line 736
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 737
    .line 738
    .line 739
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 740
    .line 741
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 742
    .line 743
    .line 744
    :cond_24
    if-eqz v3, :cond_25

    .line 745
    .line 746
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 747
    .line 748
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 749
    .line 750
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 751
    .line 752
    .line 753
    iget-object p1, p1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 754
    .line 755
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 756
    .line 757
    .line 758
    :cond_25
    :goto_e
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    const/4 v5, 0x0

    .line 18
    if-ne v0, v4, :cond_1

    .line 19
    .line 20
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 21
    .line 22
    invoke-virtual {v3, v5, v5, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    .line 24
    .line 25
    :cond_1
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    const/4 v7, -0x1

    .line 28
    const/4 v8, -0x2

    .line 29
    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    sget v6, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 36
    .line 37
    new-instance v9, Lcom/mycompany/app/view/MyLineRelative;

    .line 38
    .line 39
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v9, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 43
    .line 44
    .line 45
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 46
    .line 47
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyLineRelative;->c(I)V

    .line 48
    .line 49
    .line 50
    const/4 v10, 0x1

    .line 51
    if-ne v0, v10, :cond_2

    .line 52
    .line 53
    new-instance v0, Lcom/mycompany/app/main/MainDownAdapter$6;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v9, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v10}, Landroid/view/View;->setClipToOutline(Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    if-ne v0, v4, :cond_3

    .line 66
    .line 67
    new-instance v0, Lcom/mycompany/app/main/MainDownAdapter$7;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v10}, Landroid/view/View;->setClipToOutline(Z)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    invoke-virtual {v3, v9, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/mycompany/app/view/MyRoundImage;

    .line 82
    .line 83
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    sget v11, Lnet/kaki87/soul2/testing/R$id;->down_item_icon:I

    .line 87
    .line 88
    invoke-virtual {v0, v11}, Landroid/view/View;->setId(I)V

    .line 89
    .line 90
    .line 91
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 92
    .line 93
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    .line 95
    .line 96
    const/high16 v12, 0x41a00000    # 20.0f

    .line 97
    .line 98
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    float-to-int v12, v12

    .line 103
    int-to-float v12, v12

    .line 104
    invoke-virtual {v0, v12}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 105
    .line 106
    .line 107
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    .line 109
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 110
    .line 111
    invoke-direct {v12, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    .line 113
    .line 114
    const/16 v13, 0xf

    .line 115
    .line 116
    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    .line 118
    .line 119
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 120
    .line 121
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    new-instance v12, Lcom/mycompany/app/view/MyRoundImage;

    .line 128
    .line 129
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 133
    .line 134
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    .line 136
    .line 137
    const/16 v15, 0x8

    .line 138
    .line 139
    invoke-virtual {v12, v15}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    .line 144
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 145
    .line 146
    invoke-direct {v7, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    .line 151
    .line 152
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 153
    .line 154
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v12, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    invoke-direct {v4, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    .line 170
    .line 171
    const/high16 v7, 0x41800000    # 16.0f

    .line 172
    .line 173
    invoke-virtual {v4, v10, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 174
    .line 175
    .line 176
    const/high16 v7, 0x42900000    # 72.0f

    .line 177
    .line 178
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    float-to-int v7, v7

    .line 183
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    .line 185
    invoke-direct {v10, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .line 193
    .line 194
    new-instance v7, Landroid/widget/LinearLayout;

    .line 195
    .line 196
    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    sget v10, Lnet/kaki87/soul2/testing/R$id;->down_item_frame:I

    .line 200
    .line 201
    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 208
    .line 209
    .line 210
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 211
    .line 212
    invoke-direct {v5, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 216
    .line 217
    .line 218
    const/16 v13, 0x15

    .line 219
    .line 220
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    .line 222
    .line 223
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 224
    .line 225
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    new-instance v5, Landroid/widget/ImageView;

    .line 232
    .line 233
    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 243
    .line 244
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 245
    .line 246
    invoke-direct {v13, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    .line 251
    .line 252
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 253
    .line 254
    invoke-direct {v8, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    .line 256
    .line 257
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 258
    .line 259
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 260
    .line 261
    const/4 v15, 0x0

    .line 262
    invoke-virtual {v8, v13, v15, v2, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 263
    .line 264
    .line 265
    const/16 v2, 0x10

    .line 266
    .line 267
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 268
    .line 269
    .line 270
    const/high16 v13, 0x41800000    # 16.0f

    .line 271
    .line 272
    const/4 v15, 0x1

    .line 273
    invoke-virtual {v8, v15, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 274
    .line 275
    .line 276
    const/16 v13, 0x8

    .line 277
    .line 278
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    const/4 v15, -0x2

    .line 282
    invoke-virtual {v7, v8, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 283
    .line 284
    .line 285
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 286
    .line 287
    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 291
    .line 292
    .line 293
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 294
    .line 295
    invoke-virtual {v7, v15, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 296
    .line 297
    .line 298
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 299
    .line 300
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v13}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 310
    .line 311
    invoke-virtual {v7, v2, v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 312
    .line 313
    .line 314
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 315
    .line 316
    const/4 v7, 0x0

    .line 317
    invoke-direct {v6, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 318
    .line 319
    .line 320
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 321
    .line 322
    const/4 v7, 0x0

    .line 323
    invoke-virtual {v6, v7, v1, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 324
    .line 325
    .line 326
    const/4 v1, 0x2

    .line 327
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 328
    .line 329
    .line 330
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 331
    .line 332
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 333
    .line 334
    .line 335
    const/4 v1, 0x1

    .line 336
    const/high16 v13, 0x41800000    # 16.0f

    .line 337
    .line 338
    invoke-virtual {v6, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 339
    .line 340
    .line 341
    const/16 v1, 0x11

    .line 342
    .line 343
    const/4 v7, -0x1

    .line 344
    const/4 v13, -0x2

    .line 345
    invoke-static {v7, v13, v1, v11}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    const/16 v7, 0x10

    .line 350
    .line 351
    invoke-virtual {v1, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 352
    .line 353
    .line 354
    const/16 v7, 0xf

    .line 355
    .line 356
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 357
    .line 358
    .line 359
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 360
    .line 361
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v9, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    .line 366
    .line 367
    new-instance v1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;

    .line 368
    .line 369
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 370
    .line 371
    .line 372
    iput-object v9, v1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->u:Lcom/mycompany/app/view/MyLineRelative;

    .line 373
    .line 374
    iput-object v0, v1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 375
    .line 376
    iput-object v12, v1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 377
    .line 378
    iput-object v4, v1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 379
    .line 380
    iput-object v5, v1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->z:Landroid/widget/ImageView;

    .line 381
    .line 382
    iput-object v8, v1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 383
    .line 384
    iput-object v15, v1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 385
    .line 386
    iput-object v2, v1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 387
    .line 388
    iput-object v6, v1, Lcom/mycompany/app/main/MainDownAdapter$DownHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 389
    .line 390
    return-object v1
.end method

.method public final w(I)Lcom/mycompany/app/main/MainDownAdapter$DownListItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownAdapter;->e:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownAdapter;->e:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final x()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainDownAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/main/MainDownAdapter;->l:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownAdapter;->j:Lcom/mycompany/app/view/GlideRequests;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownAdapter;->j:Lcom/mycompany/app/view/GlideRequests;

    .line 13
    .line 14
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownAdapter;->e:Ljava/util/List;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownAdapter;->g:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownAdapter;->h:Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownAdapter;->i:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownAdapter;->k:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownAdapter;->k:Landroid/os/Handler;

    .line 30
    .line 31
    return-void
.end method
