.class Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/image/ImageViewPageScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Lcom/mycompany/app/main/MainItem$ViewItem;

.field public g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->f:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 12
    .line 13
    if-eqz v0, :cond_b

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->f:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 30
    .line 31
    if-eqz v2, :cond_b

    .line 32
    .line 33
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 34
    .line 35
    iget v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 36
    .line 37
    if-ne v3, v4, :cond_b

    .line 38
    .line 39
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 40
    .line 41
    iget v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 42
    .line 43
    if-ne v3, v4, :cond_b

    .line 44
    .line 45
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 46
    .line 47
    iget v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 48
    .line 49
    if-ne v3, v4, :cond_b

    .line 50
    .line 51
    iget v2, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 52
    .line 53
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 54
    .line 55
    if-eq v2, v3, :cond_2

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_2
    const/4 v2, 0x3

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    if-ne v4, v2, :cond_3

    .line 63
    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    div-int/lit8 v2, v2, 0x2

    .line 71
    .line 72
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-lez v2, :cond_4

    .line 79
    .line 80
    mul-int/lit8 v6, v2, 0x2

    .line 81
    .line 82
    iget-object v7, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 83
    .line 84
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-gt v6, v7, :cond_4

    .line 89
    .line 90
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 91
    .line 92
    invoke-static {v6, v5, v5, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    iput-object v3, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    const/4 v2, 0x4

    .line 103
    if-ne v4, v2, :cond_b

    .line 104
    .line 105
    :try_start_1
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    div-int/lit8 v2, v2, 0x2

    .line 112
    .line 113
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-lez v2, :cond_4

    .line 120
    .line 121
    mul-int/lit8 v6, v2, 0x2

    .line 122
    .line 123
    iget-object v7, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 124
    .line 125
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-gt v6, v7, :cond_4

    .line 130
    .line 131
    iget-object v6, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 132
    .line 133
    invoke-static {v6, v2, v5, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iput-object v2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catch_1
    iput-object v3, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 141
    .line 142
    :cond_4
    :goto_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 149
    .line 150
    if-eqz v2, :cond_b

    .line 151
    .line 152
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 153
    .line 154
    iget v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 155
    .line 156
    if-ne v3, v4, :cond_b

    .line 157
    .line 158
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 159
    .line 160
    iget v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 161
    .line 162
    if-ne v3, v4, :cond_b

    .line 163
    .line 164
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 165
    .line 166
    iget v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 167
    .line 168
    if-ne v3, v4, :cond_b

    .line 169
    .line 170
    iget v2, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 171
    .line 172
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 173
    .line 174
    if-eq v2, v3, :cond_5

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 178
    .line 179
    if-nez v2, :cond_6

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    const/4 v2, 0x1

    .line 183
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 184
    .line 185
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 186
    .line 187
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 191
    .line 192
    iget-object v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 193
    .line 194
    if-nez v4, :cond_7

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_7
    new-instance v6, Lcom/mycompany/app/image/ImageViewPageScroll$26;

    .line 198
    .line 199
    invoke-direct {v6, v0, v1, v3}, Lcom/mycompany/app/image/ImageViewPageScroll$26;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 203
    .line 204
    .line 205
    :goto_1
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 206
    .line 207
    if-nez v3, :cond_8

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_8
    iget-boolean v3, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 211
    .line 212
    if-eqz v3, :cond_9

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_9
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 216
    .line 217
    if-nez v3, :cond_a

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_a
    invoke-virtual {v0, v5}, Lcom/mycompany/app/image/ImageViewPageScroll;->h0(Z)V

    .line 221
    .line 222
    .line 223
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 224
    .line 225
    add-int/2addr v3, v2

    .line 226
    invoke-virtual {v0, v3}, Lcom/mycompany/app/image/ImageViewPageScroll;->c0(I)V

    .line 227
    .line 228
    .line 229
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 230
    .line 231
    sub-int/2addr v1, v2

    .line 232
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageScroll;->c0(I)V

    .line 233
    .line 234
    .line 235
    :cond_b
    :goto_2
    return-void
.end method
