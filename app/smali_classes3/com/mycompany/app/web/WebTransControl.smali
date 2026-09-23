.class public Lcom/mycompany/app/web/WebTransControl;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;
    }
.end annotation


# instance fields
.field public A:Z

.field public final B:Ljava/lang/Runnable;

.field public c:Z

.field public f:Landroid/content/Context;

.field public g:Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;

.field public h:I

.field public i:Z

.field public j:Landroid/view/View;

.field public k:Lcom/mycompany/app/view/MyLineText;

.field public l:Lcom/mycompany/app/view/MyLineText;

.field public m:Lcom/mycompany/app/view/MyButtonImage;

.field public n:I

.field public o:Landroid/graphics/Paint;

.field public p:Landroid/graphics/RectF;

.field public q:Z

.field public r:I

.field public s:Lcom/mycompany/app/view/MyProgressDrawable;

.field public t:I

.field public u:I

.field public v:Landroid/animation/ValueAnimator;

.field public w:Z

.field public x:Z

.field public y:Ljava/lang/String;

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/web/WebTransControl$8;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebTransControl$8;-><init>(Lcom/mycompany/app/web/WebTransControl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->B:Ljava/lang/Runnable;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebTransControl;->c:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->f:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/web/WebTransControl;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebTransControl;->setValAnimShow(F)V

    return-void
.end method

.method private setTransLang(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->y:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->y:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->f:Landroid/content/Context;

    .line 28
    .line 29
    sget v0, Lnet/kaki87/soul2/testing/R$string;->translate:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_0
    return-void
.end method

.method private setValAnimShow(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTransControl;->invalidate()V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/mycompany/app/web/WebTransControl;->h:I

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne p1, v1, :cond_1

    .line 11
    .line 12
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 13
    .line 14
    const/high16 v2, 0x42200000    # 40.0f

    .line 15
    .line 16
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    float-to-int v2, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 23
    .line 24
    const/high16 v2, 0x41c00000    # 24.0f

    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget v3, p0, Lcom/mycompany/app/web/WebTransControl;->h:I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x2

    .line 35
    const/4 v6, 0x1

    .line 36
    if-eq v3, v5, :cond_2

    .line 37
    .line 38
    new-instance v3, Landroid/view/View;

    .line 39
    .line 40
    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    const/high16 v7, 0x43300000    # 176.0f

    .line 44
    .line 45
    invoke-static {v0, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    float-to-int v7, v7

    .line 50
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .line 52
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 53
    .line 54
    invoke-direct {v8, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    .line 59
    iput p1, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 60
    .line 61
    invoke-virtual {p0, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move-object v3, v4

    .line 66
    :goto_2
    new-instance p1, Landroid/widget/LinearLayout;

    .line 67
    .line 68
    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    .line 77
    .line 78
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    .line 80
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 81
    .line 82
    const/4 v10, -0x1

    .line 83
    invoke-direct {v8, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    .line 85
    .line 86
    iget v9, p0, Lcom/mycompany/app/web/WebTransControl;->h:I

    .line 87
    .line 88
    if-eq v9, v5, :cond_3

    .line 89
    .line 90
    iput v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 91
    .line 92
    :cond_3
    invoke-virtual {p0, p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 96
    .line 97
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    const/16 v8, 0x11

    .line 101
    .line 102
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 106
    .line 107
    .line 108
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 109
    .line 110
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 111
    .line 112
    .line 113
    const/high16 v11, 0x41800000    # 16.0f

    .line 114
    .line 115
    invoke-virtual {v2, v6, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 116
    .line 117
    .line 118
    sget v12, Lnet/kaki87/soul2/testing/R$string;->original:I

    .line 119
    .line 120
    invoke-static {v2, v12, v0, v7, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    const/high16 v13, 0x3f800000    # 1.0f

    .line 125
    .line 126
    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    .line 128
    invoke-virtual {p1, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    new-instance v12, Lcom/mycompany/app/view/MyLineText;

    .line 132
    .line 133
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v12, v6, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 146
    .line 147
    .line 148
    sget v8, Lnet/kaki87/soul2/testing/R$string;->translate:I

    .line 149
    .line 150
    invoke-static {v12, v8, v0, v7, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    iput v13, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 155
    .line 156
    invoke-virtual {p1, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 165
    .line 166
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    .line 168
    .line 169
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 170
    .line 171
    invoke-virtual {p1, v8, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 172
    .line 173
    .line 174
    iput-object v3, p0, Lcom/mycompany/app/web/WebTransControl;->j:Landroid/view/View;

    .line 175
    .line 176
    iput-object v2, p0, Lcom/mycompany/app/web/WebTransControl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 177
    .line 178
    iput-object v12, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 179
    .line 180
    iput-object v8, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 181
    .line 182
    new-instance p1, Lcom/mycompany/app/web/WebTransControl$1;

    .line 183
    .line 184
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebTransControl$1;-><init>(Lcom/mycompany/app/web/WebTransControl;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 191
    .line 192
    new-instance v0, Lcom/mycompany/app/web/WebTransControl$2;

    .line 193
    .line 194
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebTransControl$2;-><init>(Lcom/mycompany/app/web/WebTransControl;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 201
    .line 202
    new-instance v0, Lcom/mycompany/app/web/WebTransControl$3;

    .line 203
    .line 204
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebTransControl$3;-><init>(Lcom/mycompany/app/web/WebTransControl;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 211
    .line 212
    if-nez p1, :cond_4

    .line 213
    .line 214
    goto/16 :goto_7

    .line 215
    .line 216
    :cond_4
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 217
    .line 218
    if-nez p1, :cond_5

    .line 219
    .line 220
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebTransControl;->i:Z

    .line 221
    .line 222
    if-eqz p1, :cond_6

    .line 223
    .line 224
    :cond_5
    move v7, v6

    .line 225
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTransControl;->e()V

    .line 226
    .line 227
    .line 228
    iget p1, p0, Lcom/mycompany/app/web/WebTransControl;->h:I

    .line 229
    .line 230
    if-nez p1, :cond_8

    .line 231
    .line 232
    if-eqz v7, :cond_7

    .line 233
    .line 234
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 235
    .line 236
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 243
    .line 244
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_8
    if-eqz v7, :cond_9

    .line 251
    .line 252
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 253
    .line 254
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_language_dark_24:I

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_9
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 261
    .line 262
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_language_black_24:I

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 265
    .line 266
    .line 267
    :goto_3
    if-eqz v7, :cond_a

    .line 268
    .line 269
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 270
    .line 271
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 274
    .line 275
    .line 276
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 277
    .line 278
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 284
    .line 285
    const v0, -0xc0c0c1

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 293
    .line 294
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 300
    .line 301
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 302
    .line 303
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 304
    .line 305
    .line 306
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 307
    .line 308
    const v0, -0x1f1f20

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 312
    .line 313
    .line 314
    :goto_4
    iget p1, p0, Lcom/mycompany/app/web/WebTransControl;->h:I

    .line 315
    .line 316
    const v0, 0x3f333333    # 0.7f

    .line 317
    .line 318
    .line 319
    if-ne p1, v5, :cond_b

    .line 320
    .line 321
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 322
    .line 323
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_7

    .line 330
    .line 331
    :cond_b
    iget-object v2, p0, Lcom/mycompany/app/web/WebTransControl;->j:Landroid/view/View;

    .line 332
    .line 333
    if-nez v2, :cond_c

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_c
    if-ne p1, v1, :cond_e

    .line 337
    .line 338
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 339
    .line 340
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    .line 345
    .line 346
    if-eqz v7, :cond_d

    .line 347
    .line 348
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->j:Landroid/view/View;

    .line 349
    .line 350
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_regular_white:I

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 353
    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_d
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->j:Landroid/view/View;

    .line 357
    .line 358
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_regular_color:I

    .line 359
    .line 360
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_e
    if-eqz v7, :cond_f

    .line 365
    .line 366
    const/high16 p1, -0x1000000

    .line 367
    .line 368
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->j:Landroid/view/View;

    .line 372
    .line 373
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_regular_white:I

    .line 374
    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 376
    .line 377
    .line 378
    goto :goto_5

    .line 379
    :cond_f
    invoke-virtual {p0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->j:Landroid/view/View;

    .line 383
    .line 384
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_regular_color:I

    .line 385
    .line 386
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 387
    .line 388
    .line 389
    :goto_5
    if-eqz v7, :cond_10

    .line 390
    .line 391
    const p1, -0x3f8a8a8b

    .line 392
    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_10
    const p1, -0x7f8a8a8b

    .line 396
    .line 397
    .line 398
    :goto_6
    iget v0, p0, Lcom/mycompany/app/web/WebTransControl;->n:I

    .line 399
    .line 400
    if-eq v0, p1, :cond_12

    .line 401
    .line 402
    iput p1, p0, Lcom/mycompany/app/web/WebTransControl;->n:I

    .line 403
    .line 404
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->o:Landroid/graphics/Paint;

    .line 405
    .line 406
    if-nez p1, :cond_11

    .line 407
    .line 408
    new-instance p1, Landroid/graphics/Paint;

    .line 409
    .line 410
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 411
    .line 412
    .line 413
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->o:Landroid/graphics/Paint;

    .line 414
    .line 415
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 416
    .line 417
    .line 418
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->o:Landroid/graphics/Paint;

    .line 419
    .line 420
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 421
    .line 422
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 423
    .line 424
    .line 425
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->o:Landroid/graphics/Paint;

    .line 426
    .line 427
    sget v0, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 428
    .line 429
    int-to-float v0, v0

    .line 430
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 431
    .line 432
    .line 433
    :cond_11
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->o:Landroid/graphics/Paint;

    .line 434
    .line 435
    iget v0, p0, Lcom/mycompany/app/web/WebTransControl;->n:I

    .line 436
    .line 437
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTransControl;->invalidate()V

    .line 441
    .line 442
    .line 443
    :cond_12
    :goto_7
    iget p1, p0, Lcom/mycompany/app/web/WebTransControl;->h:I

    .line 444
    .line 445
    if-eqz p1, :cond_14

    .line 446
    .line 447
    if-ne p1, v6, :cond_13

    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_13
    :goto_8
    return-void

    .line 451
    :cond_14
    :goto_9
    new-instance p1, Landroid/graphics/RectF;

    .line 452
    .line 453
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 454
    .line 455
    .line 456
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->p:Landroid/graphics/RectF;

    .line 457
    .line 458
    sget p1, Lcom/mycompany/app/main/MainApp;->H1:I

    .line 459
    .line 460
    int-to-float p1, p1

    .line 461
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 462
    .line 463
    .line 464
    new-instance p1, Lcom/mycompany/app/web/WebTransControl$4;

    .line 465
    .line 466
    invoke-direct {p1}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p0, v6}, Landroid/view/View;->setClipToOutline(Z)V

    .line 473
    .line 474
    .line 475
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebTransControl;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->s:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->s:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->f:Landroid/content/Context;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->g:Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->j:Landroid/view/View;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->p:Landroid/graphics/RectF;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->o:Landroid/graphics/Paint;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->y:Ljava/lang/String;

    .line 61
    .line 62
    return-void
.end method

.method public final d(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->s:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 12
    .line 13
    sub-int/2addr p1, v1

    .line 14
    div-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    iget v2, p0, Lcom/mycompany/app/web/WebTransControl;->r:I

    .line 17
    .line 18
    sub-int v3, p1, v2

    .line 19
    .line 20
    div-int/lit8 v3, v3, 0x2

    .line 21
    .line 22
    add-int/2addr v3, p1

    .line 23
    add-int p1, v3, v2

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    div-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    sub-int/2addr p2, v1

    .line 29
    sub-int v1, p2, v2

    .line 30
    .line 31
    invoke-virtual {v0, v3, v1, p1, p2}, Lcom/mycompany/app/view/MyProgressDrawable;->d(IIII)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTransControl;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->o:Landroid/graphics/Paint;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->p:Landroid/graphics/RectF;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTransControl;->q:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->s:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebTransControl;->i:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 18
    :goto_1
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebTransControl;->x:Z

    .line 19
    .line 20
    const v3, -0xe19938

    .line 21
    .line 22
    .line 23
    const v4, -0x9e9e9f

    .line 24
    .line 25
    .line 26
    const v5, -0x50506

    .line 27
    .line 28
    .line 29
    const v6, -0x3e3e3f

    .line 30
    .line 31
    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    if-eqz v1, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 60
    .line 61
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final f(Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTransControl;->x:Z

    .line 2
    .line 3
    if-eq v0, p3, :cond_0

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/mycompany/app/web/WebTransControl;->x:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTransControl;->e()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebTransControl;->setTransLang(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    if-ne p2, p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTransControl;->setTransLoad(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final g(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebTransControl;->w:Z

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/web/WebTransControl;->t:I

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/mycompany/app/web/WebTransControl;->u:I

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/mycompany/app/web/WebTransControl;->z:F

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTransControl;->A:Z

    .line 30
    .line 31
    new-array p1, v0, [F

    .line 32
    .line 33
    fill-array-data p1, :array_0

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 47
    .line 48
    iput p1, p0, Lcom/mycompany/app/web/WebTransControl;->z:F

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTransControl;->A:Z

    .line 51
    .line 52
    new-array p1, v0, [F

    .line 53
    .line 54
    fill-array-data p1, :array_1

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    const-wide/16 v0, 0xc8

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    new-instance v0, Lcom/mycompany/app/web/WebTransControl$6;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebTransControl$6;-><init>(Lcom/mycompany/app/web/WebTransControl;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    new-instance v0, Lcom/mycompany/app/web/WebTransControl$7;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebTransControl$7;-><init>(Lcom/mycompany/app/web/WebTransControl;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTransControl;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->s:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->s:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->v:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/web/WebTransControl;->p:Landroid/graphics/RectF;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget p4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 9
    .line 10
    int-to-float p4, p4

    .line 11
    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr p4, v0

    .line 14
    int-to-float v0, p1

    .line 15
    sub-float/2addr v0, p4

    .line 16
    int-to-float v1, p2

    .line 17
    sub-float/2addr v1, p4

    .line 18
    invoke-virtual {p3, p4, p4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/web/WebTransControl;->d(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setDarkUser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebTransControl;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransControl;->g:Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTransLoad(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->l:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebTransControl;->q:Z

    .line 7
    .line 8
    if-ne v1, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebTransControl;->q:Z

    .line 12
    .line 13
    if-eqz p1, :cond_5

    .line 14
    .line 15
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    if-nez p1, :cond_3

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebTransControl;->i:Z

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const p1, -0xc6b655

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_3
    :goto_1
    const p1, -0x50506

    .line 29
    .line 30
    .line 31
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->s:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->f:Landroid/content/Context;

    .line 36
    .line 37
    const/high16 v1, 0x40000000    # 2.0f

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/high16 v1, 0x41100000    # 9.0f

    .line 44
    .line 45
    mul-float/2addr v1, v0

    .line 46
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput v1, p0, Lcom/mycompany/app/web/WebTransControl;->r:I

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/view/MyProgressDrawable;

    .line 53
    .line 54
    invoke-direct {v1, p0, v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;-><init>(Landroid/view/View;FI)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransControl;->s:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/web/WebTransControl;->d(II)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->s:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->e(I)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lcom/mycompany/app/web/WebTransControl$5;

    .line 76
    .line 77
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebTransControl$5;-><init>(Lcom/mycompany/app/web/WebTransControl;)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v0, 0xc8

    .line 81
    .line 82
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    const/4 p1, 0x0

    .line 87
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransControl;->s:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    iput-boolean p1, v0, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 95
    .line 96
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTransControl;->invalidate()V

    .line 97
    .line 98
    .line 99
    return-void
.end method
