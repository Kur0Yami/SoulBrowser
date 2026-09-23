.class Lcom/mycompany/app/web/WebViewActivity$381$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$381;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$381;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$381$1;->c:Lcom/mycompany/app/web/WebViewActivity$381;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$381$1;->c:Lcom/mycompany/app/web/WebViewActivity$381;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$381;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->sl:Z

    .line 6
    .line 7
    iget-wide v2, v0, Lcom/mycompany/app/web/WebViewActivity;->tl:J

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->I2()V

    .line 30
    .line 31
    .line 32
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->A6:Lcom/mycompany/app/dialog/DialogCapture;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/mycompany/app/dialog/DialogCapture;->dismiss()V

    .line 38
    .line 39
    .line 40
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->A6:Lcom/mycompany/app/dialog/DialogCapture;

    .line 41
    .line 42
    :cond_3
    const/4 v4, -0x1

    .line 43
    const/high16 v6, -0x1000000

    .line 44
    .line 45
    const-wide/16 v7, 0x20

    .line 46
    .line 47
    const-wide/16 v9, 0x0

    .line 48
    .line 49
    if-eqz v1, :cond_b

    .line 50
    .line 51
    iget-boolean v11, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 52
    .line 53
    if-nez v11, :cond_b

    .line 54
    .line 55
    iget-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->w6:Lcom/mycompany/app/view/MyCoverView;

    .line 56
    .line 57
    if-nez v11, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->q6()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    iget-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 64
    .line 65
    if-nez v11, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    :try_start_0
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    if-eqz v12, :cond_a

    .line 77
    .line 78
    if-nez v13, :cond_6

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_6
    cmp-long v9, v2, v9

    .line 82
    .line 83
    if-lez v9, :cond_7

    .line 84
    .line 85
    int-to-long v9, v12

    .line 86
    mul-long/2addr v9, v7

    .line 87
    div-long/2addr v2, v9

    .line 88
    long-to-int v2, v2

    .line 89
    if-le v13, v2, :cond_7

    .line 90
    .line 91
    move v13, v2

    .line 92
    :cond_7
    int-to-float v2, v12

    .line 93
    const/high16 v3, 0x3f000000    # 0.5f

    .line 94
    .line 95
    mul-float/2addr v2, v3

    .line 96
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    int-to-float v7, v13

    .line 101
    mul-float/2addr v7, v3

    .line 102
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v2, :cond_a

    .line 107
    .line 108
    if-nez v7, :cond_8

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_8
    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    .line 112
    .line 113
    .line 114
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 115
    .line 116
    invoke-static {v2, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    new-instance v7, Landroid/graphics/Canvas;

    .line 121
    .line 122
    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    .line 124
    .line 125
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 126
    .line 127
    if-eqz v8, :cond_9

    .line 128
    .line 129
    move v4, v6

    .line 130
    :cond_9
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11, v7}, Lcom/mycompany/app/web/WebNestView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    move-object v5, v2

    .line 140
    :catch_0
    :cond_a
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->q6()V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_1

    .line 144
    .line 145
    :cond_b
    iget-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 146
    .line 147
    if-nez v11, :cond_c

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_c
    :try_start_1
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    if-eqz v12, :cond_13

    .line 159
    .line 160
    if-nez v13, :cond_d

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_d
    cmp-long v9, v2, v9

    .line 164
    .line 165
    if-lez v9, :cond_e

    .line 166
    .line 167
    int-to-long v9, v12

    .line 168
    mul-long/2addr v9, v7

    .line 169
    div-long/2addr v2, v9

    .line 170
    long-to-int v2, v2

    .line 171
    if-le v13, v2, :cond_e

    .line 172
    .line 173
    move v13, v2

    .line 174
    :cond_e
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->H3()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    int-to-float v2, v2

    .line 179
    neg-float v2, v2

    .line 180
    int-to-float v3, v12

    .line 181
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    int-to-float v7, v13

    .line 186
    add-float/2addr v7, v2

    .line 187
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-eqz v3, :cond_13

    .line 192
    .line 193
    if-gtz v7, :cond_f

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_f
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    if-eqz v8, :cond_13

    .line 201
    .line 202
    instance-of v9, v8, Landroid/view/ViewGroup;

    .line 203
    .line 204
    if-nez v9, :cond_10

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_10
    invoke-virtual {v11}, Lcom/mycompany/app/web/WebNestFrame;->D()V

    .line 208
    .line 209
    .line 210
    check-cast v8, Landroid/view/ViewGroup;

    .line 211
    .line 212
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 213
    .line 214
    invoke-static {v3, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    new-instance v7, Landroid/graphics/Canvas;

    .line 219
    .line 220
    invoke-direct {v7, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 221
    .line 222
    .line 223
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 224
    .line 225
    if-eqz v9, :cond_11

    .line 226
    .line 227
    move v4, v6

    .line 228
    :cond_11
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 229
    .line 230
    .line 231
    const/4 v4, 0x0

    .line 232
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-eqz v6, :cond_12

    .line 237
    .line 238
    invoke-virtual {v7, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    .line 240
    .line 241
    :cond_12
    invoke-virtual {v8, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    .line 243
    .line 244
    move-object v5, v3

    .line 245
    :catch_1
    :cond_13
    :goto_1
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-nez v2, :cond_14

    .line 250
    .line 251
    sget v1, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 252
    .line 253
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_14
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Z9()V

    .line 258
    .line 259
    .line 260
    new-instance v2, Lcom/mycompany/app/dialog/DialogCapture;

    .line 261
    .line 262
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 263
    .line 264
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/web/WebViewActivity;->v3(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-direct {v2, v0, v5, v1, v3}, Lcom/mycompany/app/dialog/DialogCapture;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->A6:Lcom/mycompany/app/dialog/DialogCapture;

    .line 274
    .line 275
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$382;

    .line 276
    .line 277
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$382;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 281
    .line 282
    .line 283
    :goto_2
    return-void
.end method
