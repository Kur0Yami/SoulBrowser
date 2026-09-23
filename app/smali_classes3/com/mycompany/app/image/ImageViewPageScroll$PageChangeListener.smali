.class Lcom/mycompany/app/image/ImageViewPageScroll$PageChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/image/ImageViewPageScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageChangeListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(FI)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iput p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->L:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {v0, p1}, Lcom/mycompany/app/image/ImageViewPageScroll;->G0(Z)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->L:I

    .line 15
    .line 16
    if-nez v1, :cond_5

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->X0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->h1()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    move v2, p1

    .line 31
    :goto_0
    if-ge v2, v1, :cond_6

    .line 32
    .line 33
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 47
    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget v4, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 52
    .line 53
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->h0:I

    .line 54
    .line 55
    if-ne v4, v5, :cond_4

    .line 56
    .line 57
    iget-boolean v1, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 58
    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    iget-object v1, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 62
    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lcom/mycompany/app/image/ImageViewPageScroll;->e0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyImageView;->getDraw()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    :cond_3
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/image/ImageViewPageScroll;->i1(Lcom/mycompany/app/view/MyImageView;Z)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->f(Z)V

    .line 89
    .line 90
    .line 91
    :cond_6
    :goto_2
    return-void
.end method

.method public final d(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->Q:Lcom/mycompany/app/view/MyCoverView;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 18
    .line 19
    move v3, v2

    .line 20
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 21
    .line 22
    move v4, v3

    .line 23
    iget v3, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 24
    .line 25
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->h0:I

    .line 26
    .line 27
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 28
    .line 29
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/4 v7, 0x0

    .line 34
    move v8, v7

    .line 35
    :goto_0
    if-ge v8, v6, :cond_b

    .line 36
    .line 37
    iget-object v9, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 38
    .line 39
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    if-nez v9, :cond_2

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    check-cast v9, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 52
    .line 53
    if-nez v9, :cond_3

    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_3
    iget v10, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 58
    .line 59
    if-ne v10, p1, :cond_a

    .line 60
    .line 61
    iput p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->h0:I

    .line 62
    .line 63
    iget p1, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 64
    .line 65
    iput p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 66
    .line 67
    iget v6, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 68
    .line 69
    iput v6, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 70
    .line 71
    iget-boolean v8, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->j:Z

    .line 72
    .line 73
    if-nez v6, :cond_4

    .line 74
    .line 75
    iget v6, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 76
    .line 77
    iput v6, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 78
    .line 79
    if-nez v6, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, p1, v7}, Lcom/mycompany/app/image/ImageViewPageScroll;->n0(IZ)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 86
    .line 87
    :cond_4
    iget-boolean p1, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 88
    .line 89
    if-eqz p1, :cond_9

    .line 90
    .line 91
    iget-object p1, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 92
    .line 93
    if-eqz p1, :cond_9

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyImageView;->getDraw()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_5

    .line 100
    .line 101
    move p1, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move p1, v7

    .line 104
    :goto_1
    invoke-virtual {v0, v9}, Lcom/mycompany/app/image/ImageViewPageScroll;->e0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 105
    .line 106
    .line 107
    iget-object v6, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 108
    .line 109
    invoke-virtual {v0, v6, p1}, Lcom/mycompany/app/image/ImageViewPageScroll;->i1(Lcom/mycompany/app/view/MyImageView;Z)V

    .line 110
    .line 111
    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    iget p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 115
    .line 116
    const/4 v6, 0x3

    .line 117
    if-eq p1, v6, :cond_6

    .line 118
    .line 119
    const/4 v6, 0x4

    .line 120
    if-ne p1, v6, :cond_7

    .line 121
    .line 122
    :cond_6
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_7

    .line 129
    .line 130
    iget-object p1, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyImageView;->getImageWidth()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    mul-int/lit8 p1, p1, 0x2

    .line 137
    .line 138
    iget-object v6, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/mycompany/app/view/MyImageView;->getImageHeight()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-virtual {v0, p1, v6}, Lcom/mycompany/app/image/ImageViewPageScroll;->b1(II)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    iget-object p1, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyImageView;->getImageWidth()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iget-object v6, v9, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 155
    .line 156
    invoke-virtual {v6}, Lcom/mycompany/app/view/MyImageView;->getImageHeight()I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-virtual {v0, p1, v6}, Lcom/mycompany/app/image/ImageViewPageScroll;->b1(II)V

    .line 161
    .line 162
    .line 163
    :goto_2
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 164
    .line 165
    iget v6, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 166
    .line 167
    invoke-virtual {p1, v6}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-nez p1, :cond_c

    .line 172
    .line 173
    new-instance p1, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 174
    .line 175
    iget v6, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->T:I

    .line 176
    .line 177
    iget v9, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->U:I

    .line 178
    .line 179
    invoke-direct {p1, v6, v9, v7}, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;-><init>(III)V

    .line 180
    .line 181
    .line 182
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 183
    .line 184
    iget v9, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 185
    .line 186
    invoke-virtual {v6, v9}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-static {v6, p1}, Lcom/mycompany/app/compress/Compress;->P(Ljava/lang/String;Lcom/mycompany/app/compress/CompressCache$BitmapInfo;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_8
    invoke-virtual {v0, v7, v7}, Lcom/mycompany/app/image/ImageViewPageScroll;->b1(II)V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_9
    invoke-virtual {v0, v7, v7}, Lcom/mycompany/app/image/ImageViewPageScroll;->b1(II)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_b
    move v4, v7

    .line 207
    move v8, v4

    .line 208
    :cond_c
    :goto_4
    iget p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->L:I

    .line 209
    .line 210
    if-nez p1, :cond_d

    .line 211
    .line 212
    if-nez v4, :cond_10

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->X0()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->h1()V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_d
    if-eqz v8, :cond_f

    .line 222
    .line 223
    iget p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->h0:I

    .line 224
    .line 225
    if-ge p1, v5, :cond_e

    .line 226
    .line 227
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->w:Ljava/lang/String;

    .line 228
    .line 229
    const/4 v7, 0x0

    .line 230
    const/4 v4, 0x0

    .line 231
    const/4 v6, 0x0

    .line 232
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageScroll;->a1(IIIILjava/lang/String;ZZ)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_e
    if-le p1, v5, :cond_10

    .line 237
    .line 238
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->w:Ljava/lang/String;

    .line 239
    .line 240
    const/4 v7, 0x0

    .line 241
    const/4 v4, 0x0

    .line 242
    const/4 v6, 0x1

    .line 243
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewPageScroll;->a1(IIIILjava/lang/String;ZZ)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_f
    iget p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->h0:I

    .line 248
    .line 249
    if-eqz p1, :cond_11

    .line 250
    .line 251
    const v1, 0x1869f

    .line 252
    .line 253
    .line 254
    if-ne p1, v1, :cond_10

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_10
    :goto_5
    return-void

    .line 258
    :cond_11
    :goto_6
    invoke-virtual {v0, v7}, Lcom/mycompany/app/image/ImageViewPageScroll;->W0(Z)V

    .line 259
    .line 260
    .line 261
    return-void
.end method
