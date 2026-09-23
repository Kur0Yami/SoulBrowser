.class Lcom/mycompany/app/dialog/DialogPermission$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPermission;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPermission;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPermission$1;->c:Lcom/mycompany/app/dialog/DialogPermission;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPermission$1;->c:Lcom/mycompany/app/dialog/DialogPermission;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogPermission;->a0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

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
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x2

    .line 18
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    .line 24
    const/4 v9, -0x1

    .line 25
    const/4 v10, 0x0

    .line 26
    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    const/high16 v11, 0x3f800000    # 1.0f

    .line 30
    .line 31
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 32
    .line 33
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 37
    .line 38
    div-int/2addr v8, v6

    .line 39
    new-instance v12, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 45
    .line 46
    invoke-virtual {v12, v13, v8, v13, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    .line 48
    .line 49
    const/high16 v13, 0x42900000    # 72.0f

    .line 50
    .line 51
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    float-to-int v13, v13

    .line 56
    invoke-virtual {v12, v13}, Landroid/view/View;->setMinimumHeight(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    .line 61
    .line 62
    const/4 v13, -0x2

    .line 63
    invoke-virtual {v7, v12, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogPermission;->c0:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const/high16 v14, 0x41600000    # 14.0f

    .line 73
    .line 74
    if-nez v7, :cond_1

    .line 75
    .line 76
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-direct {v7, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    .line 80
    .line 81
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 82
    .line 83
    invoke-virtual {v7, v10, v10, v10, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    .line 91
    .line 92
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 93
    .line 94
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v12, v7, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move-object v7, v5

    .line 105
    :goto_0
    iget-object v15, v1, Lcom/mycompany/app/dialog/DialogPermission;->d0:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    if-nez v15, :cond_2

    .line 112
    .line 113
    new-instance v15, Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    invoke-direct {v15, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 122
    .line 123
    .line 124
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 125
    .line 126
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v15, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12, v15, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    move-object v15, v5

    .line 137
    :goto_1
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogPermission;->e0:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    const/high16 v14, 0x41800000    # 16.0f

    .line 144
    .line 145
    if-nez v6, :cond_3

    .line 146
    .line 147
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    invoke-direct {v6, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    .line 154
    .line 155
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 156
    .line 157
    int-to-float v10, v10

    .line 158
    invoke-virtual {v6, v10, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 162
    .line 163
    .line 164
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 165
    .line 166
    invoke-direct {v10, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 170
    .line 171
    invoke-virtual {v12, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .line 173
    .line 174
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    invoke-direct {v10, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 180
    .line 181
    .line 182
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 183
    .line 184
    int-to-float v5, v5

    .line 185
    invoke-virtual {v10, v5, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 189
    .line 190
    .line 191
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    .line 193
    invoke-direct {v5, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    .line 195
    .line 196
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 197
    .line 198
    invoke-virtual {v12, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_3
    const/4 v6, 0x0

    .line 203
    const/4 v10, 0x0

    .line 204
    :goto_2
    new-instance v5, Lcom/mycompany/app/view/MyLineLinear;

    .line 205
    .line 206
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 207
    .line 208
    .line 209
    const/4 v8, 0x0

    .line 210
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    .line 215
    .line 216
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 217
    .line 218
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 222
    .line 223
    .line 224
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 225
    .line 226
    invoke-static {v4, v5, v9, v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    const/16 v13, 0x11

    .line 231
    .line 232
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v12, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 236
    .line 237
    .line 238
    sget v3, Lnet/kaki87/soul2/testing/R$string;->deny:I

    .line 239
    .line 240
    invoke-static {v12, v3, v2, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 245
    .line 246
    const/4 v11, 0x0

    .line 247
    invoke-static {v5, v12, v3, v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 252
    .line 253
    .line 254
    const/4 v3, 0x1

    .line 255
    invoke-virtual {v2, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 256
    .line 257
    .line 258
    sget v3, Lnet/kaki87/soul2/testing/R$string;->allow:I

    .line 259
    .line 260
    invoke-static {v2, v3, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    const/high16 v8, 0x3f800000    # 1.0f

    .line 265
    .line 266
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 267
    .line 268
    invoke-virtual {v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    .line 270
    .line 271
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogPermission;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 272
    .line 273
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogPermission;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 274
    .line 275
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogPermission;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 276
    .line 277
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogPermission;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 278
    .line 279
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogPermission;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 280
    .line 281
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogPermission;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 282
    .line 283
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogPermission;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 284
    .line 285
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 286
    .line 287
    if-nez v2, :cond_4

    .line 288
    .line 289
    :goto_3
    return-void

    .line 290
    :cond_4
    new-instance v3, Lcom/mycompany/app/dialog/DialogPermission$2;

    .line 291
    .line 292
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogPermission$2;-><init>(Lcom/mycompany/app/dialog/DialogPermission;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    .line 297
    .line 298
    return-void
.end method
