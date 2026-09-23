.class Lcom/mycompany/app/dialog/DialogDownEdit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit$2;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit$2;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 12
    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->q0:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_2
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 24
    .line 25
    if-nez v4, :cond_3

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_3
    sget v5, Lnet/kaki87/soul2/testing/R$id;->down_icon_frame:I

    .line 30
    .line 31
    sget v6, Lnet/kaki87/soul2/testing/R$id;->down_path_title:I

    .line 32
    .line 33
    new-instance v7, Lcom/mycompany/app/view/MyLineRelative;

    .line 34
    .line 35
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const/high16 v8, 0x40c00000    # 6.0f

    .line 39
    .line 40
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    float-to-int v8, v8

    .line 45
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    invoke-virtual {v7, v9, v10, v8, v10}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 49
    .line 50
    .line 51
    sget v8, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 54
    .line 55
    .line 56
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 57
    .line 58
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyLineRelative;->c(I)V

    .line 59
    .line 60
    .line 61
    const/4 v8, -0x1

    .line 62
    const/4 v9, -0x2

    .line 63
    invoke-virtual {v4, v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    const/high16 v4, 0x42b00000    # 88.0f

    .line 67
    .line 68
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    float-to-int v4, v4

    .line 73
    new-instance v11, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-direct {v11, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11, v5}, Landroid/view/View;->setId(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    .line 86
    .line 87
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    .line 89
    invoke-direct {v12, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .line 91
    .line 92
    const/16 v13, 0xf

    .line 93
    .line 94
    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    .line 96
    .line 97
    const/16 v14, 0x15

    .line 98
    .line 99
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    .line 101
    .line 102
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 103
    .line 104
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 116
    .line 117
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    .line 119
    .line 120
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 121
    .line 122
    int-to-float v14, v14

    .line 123
    const/4 v15, 0x1

    .line 124
    invoke-virtual {v12, v14, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 125
    .line 126
    .line 127
    sget v14, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 128
    .line 129
    int-to-float v14, v14

    .line 130
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 131
    .line 132
    .line 133
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 134
    .line 135
    invoke-virtual {v11, v12, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 136
    .line 137
    .line 138
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 139
    .line 140
    invoke-direct {v4, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 144
    .line 145
    invoke-virtual {v4, v10, v11, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    .line 147
    .line 148
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 149
    .line 150
    invoke-direct {v11, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .line 152
    .line 153
    const/16 v14, 0x10

    .line 154
    .line 155
    invoke-virtual {v11, v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    .line 160
    .line 161
    const/high16 v5, 0x41200000    # 10.0f

    .line 162
    .line 163
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    float-to-int v5, v5

    .line 168
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .line 173
    .line 174
    const/high16 v5, 0x41600000    # 14.0f

    .line 175
    .line 176
    const/4 v11, 0x0

    .line 177
    invoke-static {v2, v11, v6, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    sget v13, Lnet/kaki87/soul2/testing/R$string;->down_location:I

    .line 182
    .line 183
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v5, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 187
    .line 188
    .line 189
    const/4 v13, 0x2

    .line 190
    invoke-static {v2, v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 195
    .line 196
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 197
    .line 198
    .line 199
    const/high16 v14, 0x41800000    # 16.0f

    .line 200
    .line 201
    invoke-virtual {v13, v15, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 202
    .line 203
    .line 204
    const/4 v11, 0x3

    .line 205
    invoke-static {v9, v9, v11, v6}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 210
    .line 211
    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 212
    .line 213
    invoke-virtual {v4, v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .line 215
    .line 216
    new-instance v4, Lcom/mycompany/app/view/MyLineLinear;

    .line 217
    .line 218
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    .line 226
    .line 227
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 228
    .line 229
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v15}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 233
    .line 234
    .line 235
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 236
    .line 237
    invoke-virtual {v3, v4, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 238
    .line 239
    .line 240
    const/16 v3, 0x11

    .line 241
    .line 242
    const/4 v6, 0x0

    .line 243
    invoke-static {v2, v6, v3, v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    sget v3, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 248
    .line 249
    invoke-static {v2, v3, v10, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    const/high16 v6, 0x3f800000    # 1.0f

    .line 254
    .line 255
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 256
    .line 257
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .line 259
    .line 260
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->l0:Lcom/mycompany/app/view/MyLineRelative;

    .line 261
    .line 262
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 263
    .line 264
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 265
    .line 266
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 267
    .line 268
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 269
    .line 270
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 271
    .line 272
    if-nez v2, :cond_4

    .line 273
    .line 274
    :goto_0
    return-void

    .line 275
    :cond_4
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownEdit$3;

    .line 276
    .line 277
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogDownEdit$3;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    .line 282
    .line 283
    return-void
.end method
