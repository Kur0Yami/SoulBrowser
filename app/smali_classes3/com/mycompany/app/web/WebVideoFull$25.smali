.class Lcom/mycompany/app/web/WebVideoFull$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$25;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$25;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->X0:Z

    .line 4
    .line 5
    sget-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->k:Z

    .line 6
    .line 7
    if-eqz v2, :cond_7

    .line 8
    .line 9
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 16
    .line 17
    if-nez v2, :cond_7

    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    new-instance v3, Lcom/mycompany/app/view/MyFadeFrame;

    .line 38
    .line 39
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 43
    .line 44
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    .line 46
    .line 47
    new-instance v4, Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_16:I

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    .line 59
    const/4 v6, -0x2

    .line 60
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    .line 62
    .line 63
    const/16 v7, 0x11

    .line 64
    .line 65
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    .line 67
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    const/high16 v5, 0x42000000    # 32.0f

    .line 71
    .line 72
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    float-to-int v5, v5

    .line 77
    new-instance v7, Landroid/view/View;

    .line 78
    .line 79
    invoke-direct {v7, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_touch_long_dark_20:I

    .line 83
    .line 84
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    .line 89
    invoke-direct {v8, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    .line 91
    .line 92
    const/4 v9, 0x1

    .line 93
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    .line 95
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 96
    .line 97
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    invoke-direct {v7, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 107
    .line 108
    .line 109
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 110
    .line 111
    int-to-float v5, v5

    .line 112
    const/high16 v8, 0x3f800000    # 1.0f

    .line 113
    .line 114
    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 115
    .line 116
    .line 117
    const/high16 v5, 0x41800000    # 16.0f

    .line 118
    .line 119
    invoke-virtual {v7, v9, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 120
    .line 121
    .line 122
    const/4 v5, -0x1

    .line 123
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    .line 128
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 132
    .line 133
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 134
    .line 135
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 136
    .line 137
    invoke-virtual {v4, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 141
    .line 142
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 146
    .line 147
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    .line 149
    .line 150
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_white_24:I

    .line 151
    .line 152
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 153
    .line 154
    .line 155
    sget v6, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 156
    .line 157
    int-to-float v6, v6

    .line 158
    const/high16 v8, 0x40000000    # 2.0f

    .line 159
    .line 160
    div-float/2addr v6, v8

    .line 161
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorRadius(F)V

    .line 162
    .line 163
    .line 164
    const/high16 v6, -0x5f000000

    .line 165
    .line 166
    const v8, -0x5e8a8a8b

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v6, v8}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 170
    .line 171
    .line 172
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .line 174
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 175
    .line 176
    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    .line 178
    .line 179
    const v8, 0x800005

    .line 180
    .line 181
    .line 182
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    .line 184
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .line 186
    .line 187
    iput-object v3, v0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 188
    .line 189
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 190
    .line 191
    if-eqz v3, :cond_4

    .line 192
    .line 193
    const/4 v4, 0x0

    .line 194
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 195
    .line 196
    .line 197
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->T()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->S()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->V()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->W()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->U()V

    .line 210
    .line 211
    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    sget v4, Lnet/kaki87/soul2/testing/R$string;->video_icon_guide:I

    .line 218
    .line 219
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v4, "\n"

    .line 227
    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    sget v4, Lnet/kaki87/soul2/testing/R$string;->change_in_setting:I

    .line 232
    .line 233
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$26;

    .line 248
    .line 249
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$26;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    .line 254
    .line 255
    if-eqz v1, :cond_5

    .line 256
    .line 257
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 258
    .line 259
    const/4 v3, 0x4

    .line 260
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 264
    .line 265
    new-instance v3, Lcom/mycompany/app/web/WebVideoFull$27;

    .line 266
    .line 267
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebVideoFull$27;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 274
    .line 275
    new-instance v3, Lcom/mycompany/app/web/WebVideoFull$28;

    .line 276
    .line 277
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .line 282
    .line 283
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 284
    .line 285
    new-instance v3, Lcom/mycompany/app/web/WebVideoFull$29;

    .line 286
    .line 287
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebVideoFull$29;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 291
    .line 292
    .line 293
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->Y0:Z

    .line 294
    .line 295
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 296
    .line 297
    if-nez v1, :cond_6

    .line 298
    .line 299
    goto :goto_0

    .line 300
    :cond_6
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$30;

    .line 301
    .line 302
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$30;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 306
    .line 307
    .line 308
    :cond_7
    :goto_0
    return-void
.end method
