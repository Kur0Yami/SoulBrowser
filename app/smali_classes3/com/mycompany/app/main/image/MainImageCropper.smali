.class public Lcom/mycompany/app/main/image/MainImageCropper;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;
    }
.end annotation


# instance fields
.field public A1:Lcom/mycompany/app/view/GlideRequests;

.field public B1:Z

.field public C1:Ljava/lang/String;

.field public D1:Landroid/net/Uri;

.field public final E1:Lcom/mycompany/app/view/MyGlideTarget;

.field public F1:Ljava/lang/String;

.field public final G1:Lcom/mycompany/app/view/MyGlideTarget;

.field public H1:Lcom/mycompany/app/view/MySnackbar;

.field public f1:Landroid/content/Context;

.field public g1:Ljava/lang/String;

.field public h1:Landroid/net/Uri;

.field public i1:Ljava/lang/String;

.field public j1:Ljava/lang/String;

.field public k1:Ljava/lang/String;

.field public l1:Z

.field public m1:I

.field public n1:I

.field public o1:Z

.field public p1:Landroid/widget/FrameLayout;

.field public q1:Lcom/mycompany/app/crop/CropImageView;

.field public r1:Lcom/mycompany/app/view/MyButtonImage;

.field public s1:Landroid/widget/LinearLayout;

.field public t1:Landroidx/appcompat/widget/AppCompatTextView;

.field public u1:Lcom/mycompany/app/view/MyLineText;

.field public v1:Lcom/mycompany/app/view/MyCoverView;

.field public w1:Z

.field public x1:Z

.field public y1:Lcom/mycompany/app/dialog/DialogDownEdit;

.field public z1:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/main/image/MainImageCropper$7;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageCropper$7;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->E1:Lcom/mycompany/app/view/MyGlideTarget;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/main/image/MainImageCropper$9;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageCropper$9;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->G1:Lcom/mycompany/app/view/MyGlideTarget;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->x1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->y1:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogDownEdit;->D(IILandroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->x1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageCropper;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageCropper;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->y1:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogDownEdit;->E(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->f1:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "EXTRA_PATH"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->g1:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "EXTRA_TYPE"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->i1:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "EXTRA_REFERER"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->j1:Ljava/lang/String;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->g1:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v0, 0x1

    .line 56
    const/4 v1, 0x0

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->h1:Landroid/net/Uri;

    .line 68
    .line 69
    if-nez p1, :cond_0

    .line 70
    .line 71
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 72
    .line 73
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageCropper;->finish()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->i1:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v2, "EXTRA_DST"

    .line 95
    .line 96
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->k1:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v2, "EXTRA_ICON"

    .line 107
    .line 108
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->l1:Z

    .line 113
    .line 114
    if-eqz p1, :cond_1

    .line 115
    .line 116
    sget p1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 117
    .line 118
    iput p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->m1:I

    .line 119
    .line 120
    iput p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->n1:I

    .line 121
    .line 122
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->o1:Z

    .line 123
    .line 124
    :cond_1
    new-instance p1, Lcom/mycompany/app/main/image/MainImageCropper$13;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 132
    .line 133
    .line 134
    const/16 p1, 0x13

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0, v2, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Landroid/widget/FrameLayout;

    .line 141
    .line 142
    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    const/high16 v3, -0x1000000

    .line 146
    .line 147
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    .line 149
    .line 150
    new-instance v4, Lcom/mycompany/app/crop/CropImageView;

    .line 151
    .line 152
    invoke-direct {v4, p0}, Lcom/mycompany/app/crop/CropImageView;-><init>(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 156
    .line 157
    invoke-virtual {v4, v1, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 158
    .line 159
    .line 160
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 166
    .line 167
    .line 168
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    .line 170
    const/4 v6, -0x1

    .line 171
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 172
    .line 173
    .line 174
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 175
    .line 176
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 177
    .line 178
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .line 180
    .line 181
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 182
    .line 183
    invoke-direct {v5, p0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 184
    .line 185
    .line 186
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 187
    .line 188
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    .line 190
    .line 191
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_fullscreen_white_24:I

    .line 192
    .line 193
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 194
    .line 195
    .line 196
    sget v7, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 197
    .line 198
    int-to-float v7, v7

    .line 199
    sget v8, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 200
    .line 201
    int-to-float v8, v8

    .line 202
    invoke-virtual {v5, v7, v8}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 203
    .line 204
    .line 205
    const v7, -0x5e8a8a8b

    .line 206
    .line 207
    .line 208
    const/high16 v8, -0x5f000000

    .line 209
    .line 210
    invoke-virtual {v5, v8, v7}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 211
    .line 212
    .line 213
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    .line 215
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 216
    .line 217
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 218
    .line 219
    .line 220
    const v9, 0x800055

    .line 221
    .line 222
    .line 223
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 224
    .line 225
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 226
    .line 227
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 228
    .line 229
    add-int/2addr v9, v10

    .line 230
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 231
    .line 232
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 233
    .line 234
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .line 239
    .line 240
    new-instance v7, Landroid/widget/LinearLayout;

    .line 241
    .line 242
    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 252
    .line 253
    .line 254
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 255
    .line 256
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 257
    .line 258
    invoke-direct {v3, v6, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    const/16 v9, 0x50

    .line 262
    .line 263
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    .line 265
    invoke-virtual {p1, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .line 267
    .line 268
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 269
    .line 270
    invoke-direct {v3, p0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    const/16 v9, 0x11

    .line 274
    .line 275
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 276
    .line 277
    .line 278
    const/high16 v10, 0x41800000    # 16.0f

    .line 279
    .line 280
    invoke-virtual {v3, v0, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    .line 285
    .line 286
    sget v11, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 287
    .line 288
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    .line 289
    .line 290
    .line 291
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 292
    .line 293
    invoke-virtual {v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, p0}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 297
    .line 298
    .line 299
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 300
    .line 301
    invoke-direct {v11, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 302
    .line 303
    .line 304
    const/high16 v12, 0x3f800000    # 1.0f

    .line 305
    .line 306
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 307
    .line 308
    invoke-virtual {v7, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .line 310
    .line 311
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 312
    .line 313
    invoke-direct {v11, p0, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v11, v0, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    .line 324
    .line 325
    sget v2, Lnet/kaki87/soul2/testing/R$string;->crop_save:I

    .line 326
    .line 327
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(I)V

    .line 328
    .line 329
    .line 330
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 331
    .line 332
    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 333
    .line 334
    .line 335
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 336
    .line 337
    invoke-direct {v2, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    .line 339
    .line 340
    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 341
    .line 342
    invoke-virtual {v7, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    .line 344
    .line 345
    new-instance v1, Lcom/mycompany/app/view/MyCoverView;

    .line 346
    .line 347
    sget v2, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 348
    .line 349
    sget v9, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 350
    .line 351
    invoke-direct {v1, p0, v6, v2, v9}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyCoverView;->setBlockTouch(Z)V

    .line 358
    .line 359
    .line 360
    const/16 v0, 0x8

    .line 361
    .line 362
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1, v1, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 366
    .line 367
    .line 368
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->p1:Landroid/widget/FrameLayout;

    .line 369
    .line 370
    iput-object v4, p0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 371
    .line 372
    iput-object v5, p0, Lcom/mycompany/app/main/image/MainImageCropper;->r1:Lcom/mycompany/app/view/MyButtonImage;

    .line 373
    .line 374
    iput-object v7, p0, Lcom/mycompany/app/main/image/MainImageCropper;->s1:Landroid/widget/LinearLayout;

    .line 375
    .line 376
    iput-object v11, p0, Lcom/mycompany/app/main/image/MainImageCropper;->t1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 377
    .line 378
    iput-object v3, p0, Lcom/mycompany/app/main/image/MainImageCropper;->u1:Lcom/mycompany/app/view/MyLineText;

    .line 379
    .line 380
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

    .line 381
    .line 382
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 383
    .line 384
    if-nez p1, :cond_2

    .line 385
    .line 386
    goto :goto_0

    .line 387
    :cond_2
    new-instance v0, Lcom/mycompany/app/main/image/MainImageCropper$2;

    .line 388
    .line 389
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImageCropper$2;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    .line 394
    .line 395
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->p1:Landroid/widget/FrameLayout;

    .line 396
    .line 397
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 398
    .line 399
    .line 400
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->p1:Landroid/widget/FrameLayout;

    .line 401
    .line 402
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 403
    .line 404
    .line 405
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->A1:Lcom/mycompany/app/view/GlideRequests;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/mycompany/app/main/image/MainImageCropper;->B1:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageCropper;->G1:Lcom/mycompany/app/view/MyGlideTarget;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->p(Lcom/bumptech/glide/request/target/Target;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImageCropper;->E1:Lcom/mycompany/app/view/MyGlideTarget;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->p(Lcom/bumptech/glide/request/target/Target;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->A1:Lcom/mycompany/app/view/GlideRequests;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    iput-boolean v2, v0, Lcom/mycompany/app/crop/CropImageView;->u:Z

    .line 36
    .line 37
    iput-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->c:Landroid/graphics/Paint;

    .line 38
    .line 39
    iput-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 42
    .line 43
    iput-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->h:Landroid/graphics/Paint;

    .line 44
    .line 45
    iput-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->o:Landroid/graphics/RectF;

    .line 46
    .line 47
    iput-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->p:Landroid/graphics/PointF;

    .line 48
    .line 49
    iput-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->q:Lcom/mycompany/app/crop/Handle;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->r1:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->r1:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->u1:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->u1:Lcom/mycompany/app/view/MyLineText;

    .line 70
    .line 71
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

    .line 79
    .line 80
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->f1:Landroid/content/Context;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->g1:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->h1:Landroid/net/Uri;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->i1:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->j1:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->k1:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->p1:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->s1:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageCropper;->t1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->z1:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageCropper;->u0()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/mycompany/app/main/MainApp;->T1:Landroid/widget/Toast;

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->z1:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/image/MainImageCropper$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageCropper$1;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final u0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->y1:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownEdit;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->y1:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageCropper;->z1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
