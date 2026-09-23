.class Lcom/mycompany/app/dialog/DialogCastGuide$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCastGuide;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCastGuide;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCastGuide$1;->c:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCastGuide$1;->c:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    const/4 v3, 0x1

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 17
    .line 18
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 24
    .line 25
    .line 26
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 27
    .line 28
    const/4 v7, -0x1

    .line 29
    invoke-virtual {v4, v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 30
    .line 31
    .line 32
    new-instance v6, Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-direct {v6, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    .line 41
    .line 42
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 45
    .line 46
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    const v9, 0x800013

    .line 50
    .line 51
    .line 52
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    .line 54
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 55
    .line 56
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v10, 0x2

    .line 64
    invoke-static {v2, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 69
    .line 70
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 71
    .line 72
    .line 73
    const/high16 v12, 0x41800000    # 16.0f

    .line 74
    .line 75
    invoke-virtual {v11, v3, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 76
    .line 77
    .line 78
    sget v13, Lnet/kaki87/soul2/testing/R$string;->tip:I

    .line 79
    .line 80
    const/4 v14, -0x2

    .line 81
    invoke-static {v11, v13, v7, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    .line 87
    sget v9, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 88
    .line 89
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 90
    .line 91
    .line 92
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 93
    .line 94
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    .line 106
    const/4 v10, 0x0

    .line 107
    invoke-direct {v9, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .line 109
    .line 110
    const/high16 v10, 0x3f800000    # 1.0f

    .line 111
    .line 112
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 113
    .line 114
    invoke-virtual {v4, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    const/high16 v9, 0x41c00000    # 24.0f

    .line 118
    .line 119
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    float-to-int v9, v9

    .line 124
    const/high16 v13, 0x42000000    # 32.0f

    .line 125
    .line 126
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    float-to-int v13, v13

    .line 131
    new-instance v15, Landroid/widget/LinearLayout;

    .line 132
    .line 133
    invoke-direct {v15, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 137
    .line 138
    invoke-virtual {v15, v12, v9, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v15, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 145
    .line 146
    .line 147
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    invoke-direct {v5, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    .line 151
    .line 152
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 153
    .line 154
    int-to-float v9, v9

    .line 155
    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 156
    .line 157
    .line 158
    const/high16 v9, 0x41600000    # 14.0f

    .line 159
    .line 160
    invoke-virtual {v5, v3, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v15, v5, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 164
    .line 165
    .line 166
    new-instance v12, Landroid/widget/FrameLayout;

    .line 167
    .line 168
    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    const/16 v3, 0x8

    .line 172
    .line 173
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 177
    .line 178
    invoke-direct {v3, v7, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    .line 180
    .line 181
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 182
    .line 183
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 184
    .line 185
    invoke-virtual {v15, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .line 187
    .line 188
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    invoke-direct {v3, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    .line 192
    .line 193
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 194
    .line 195
    int-to-float v7, v7

    .line 196
    invoke-virtual {v3, v7, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 197
    .line 198
    .line 199
    const/4 v7, 0x1

    .line 200
    invoke-virtual {v3, v7, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 201
    .line 202
    .line 203
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    .line 205
    const/4 v9, -0x1

    .line 206
    invoke-direct {v7, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 207
    .line 208
    .line 209
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 210
    .line 211
    invoke-virtual {v15, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .line 213
    .line 214
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 215
    .line 216
    invoke-direct {v7, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 217
    .line 218
    .line 219
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 220
    .line 221
    int-to-float v8, v8

    .line 222
    invoke-virtual {v7, v8, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 223
    .line 224
    .line 225
    const/high16 v8, 0x41600000    # 14.0f

    .line 226
    .line 227
    const/4 v10, 0x1

    .line 228
    invoke-virtual {v7, v10, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 229
    .line 230
    .line 231
    const/16 v8, 0x8

    .line 232
    .line 233
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    .line 238
    invoke-direct {v8, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .line 240
    .line 241
    iput v13, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 242
    .line 243
    invoke-virtual {v15, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .line 245
    .line 246
    new-instance v8, Lcom/mycompany/app/view/MyLineText;

    .line 247
    .line 248
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 249
    .line 250
    .line 251
    const/16 v2, 0x11

    .line 252
    .line 253
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 254
    .line 255
    .line 256
    const/high16 v2, 0x41800000    # 16.0f

    .line 257
    .line 258
    invoke-virtual {v8, v10, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 259
    .line 260
    .line 261
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 262
    .line 263
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    .line 264
    .line 265
    .line 266
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 267
    .line 268
    invoke-virtual {v8, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8, v10}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 272
    .line 273
    .line 274
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 275
    .line 276
    const/4 v9, -0x1

    .line 277
    invoke-virtual {v4, v8, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 278
    .line 279
    .line 280
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 281
    .line 282
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->d0:Landroid/widget/ImageView;

    .line 283
    .line 284
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 285
    .line 286
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 287
    .line 288
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->g0:Landroid/widget/FrameLayout;

    .line 289
    .line 290
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 291
    .line 292
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 293
    .line 294
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 295
    .line 296
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 297
    .line 298
    if-nez v2, :cond_1

    .line 299
    .line 300
    :goto_0
    return-void

    .line 301
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogCastGuide$2;

    .line 302
    .line 303
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogCastGuide$2;-><init>(Lcom/mycompany/app/dialog/DialogCastGuide;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    .line 308
    .line 309
    return-void
.end method
