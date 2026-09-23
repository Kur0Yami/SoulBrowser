.class Lcom/mycompany/app/dialog/DialogDownLink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownLink$1;->c:Lcom/mycompany/app/dialog/DialogDownLink;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink$1;->c:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownLink;->b0:Landroid/content/Context;

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
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 27
    .line 28
    .line 29
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 30
    .line 31
    const/4 v7, -0x1

    .line 32
    invoke-virtual {v4, v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 33
    .line 34
    .line 35
    const/high16 v6, 0x41600000    # 14.0f

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    const/16 v9, 0x10

    .line 39
    .line 40
    invoke-static {v2, v8, v9, v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const/16 v10, 0x8

    .line 45
    .line 46
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    .line 51
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 52
    .line 53
    const/4 v13, -0x2

    .line 54
    invoke-direct {v11, v13, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 58
    .line 59
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 71
    .line 72
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 79
    .line 80
    invoke-virtual {v5, v11, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 81
    .line 82
    .line 83
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    .line 90
    .line 91
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    .line 93
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 94
    .line 95
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 96
    .line 97
    .line 98
    const v15, 0x800005

    .line 99
    .line 100
    .line 101
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    .line 103
    const/high16 v13, 0x42d00000    # 104.0f

    .line 104
    .line 105
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    float-to-int v13, v13

    .line 110
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    .line 122
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 123
    .line 124
    invoke-direct {v14, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    .line 129
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 130
    .line 131
    invoke-virtual {v14, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 142
    .line 143
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 144
    .line 145
    invoke-direct {v12, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 146
    .line 147
    .line 148
    iput v15, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    .line 150
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 151
    .line 152
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    const/4 v5, 0x2

    .line 159
    invoke-static {v2, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    .line 165
    const/4 v12, 0x0

    .line 166
    invoke-direct {v8, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    const/high16 v12, 0x3f800000    # 1.0f

    .line 170
    .line 171
    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 172
    .line 173
    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    new-instance v8, Lcom/mycompany/app/view/MyLineText;

    .line 177
    .line 178
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 182
    .line 183
    invoke-virtual {v8, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    .line 188
    .line 189
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 190
    .line 191
    int-to-float v9, v9

    .line 192
    invoke-virtual {v8, v9, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 193
    .line 194
    .line 195
    const/high16 v9, 0x41800000    # 16.0f

    .line 196
    .line 197
    const/4 v12, 0x1

    .line 198
    invoke-virtual {v8, v12, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 199
    .line 200
    .line 201
    const/high16 v14, 0x43000000    # 128.0f

    .line 202
    .line 203
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 204
    .line 205
    .line 206
    move-result v14

    .line 207
    float-to-int v14, v14

    .line 208
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 209
    .line 210
    .line 211
    const/4 v14, -0x2

    .line 212
    invoke-virtual {v5, v8, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 213
    .line 214
    .line 215
    new-instance v5, Lcom/mycompany/app/view/MyLineText;

    .line 216
    .line 217
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 218
    .line 219
    .line 220
    const/16 v2, 0x11

    .line 221
    .line 222
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v12, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 226
    .line 227
    .line 228
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 229
    .line 230
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 231
    .line 232
    .line 233
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 234
    .line 235
    invoke-virtual {v5, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 239
    .line 240
    .line 241
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 242
    .line 243
    invoke-virtual {v4, v5, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 244
    .line 245
    .line 246
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 247
    .line 248
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogDownLink;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 249
    .line 250
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogDownLink;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 251
    .line 252
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogDownLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 253
    .line 254
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogDownLink;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 255
    .line 256
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogDownLink;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 257
    .line 258
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogDownLink;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 259
    .line 260
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownLink;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 261
    .line 262
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 263
    .line 264
    if-nez v2, :cond_1

    .line 265
    .line 266
    :goto_0
    return-void

    .line 267
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownLink$2;

    .line 268
    .line 269
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogDownLink$2;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    .line 274
    .line 275
    return-void
.end method
