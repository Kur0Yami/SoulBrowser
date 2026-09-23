.class Lcom/mycompany/app/dialog/DialogEditArea$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$1$1;->c:Lcom/mycompany/app/dialog/DialogEditArea$1;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea$1$1;->c:Lcom/mycompany/app/dialog/DialogEditArea$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogEditArea$1;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    const/4 v3, 0x1

    .line 14
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 19
    .line 20
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 29
    .line 30
    .line 31
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 32
    .line 33
    const/4 v7, -0x1

    .line 34
    invoke-virtual {v4, v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 43
    .line 44
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    .line 46
    .line 47
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 48
    .line 49
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 50
    .line 51
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    .line 53
    .line 54
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 55
    .line 56
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 69
    .line 70
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    const v10, 0x800005

    .line 74
    .line 75
    .line 76
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 77
    .line 78
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 79
    .line 80
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    const/4 v5, 0x2

    .line 87
    const/4 v9, 0x0

    .line 88
    invoke-static {v2, v9, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 93
    .line 94
    const/4 v11, 0x0

    .line 95
    invoke-direct {v10, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    .line 97
    .line 98
    const/high16 v12, 0x3f800000    # 1.0f

    .line 99
    .line 100
    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 101
    .line 102
    invoke-static {v4, v5, v10, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->g(Lcom/mycompany/app/view/MyDialogLinear;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    const/4 v13, -0x2

    .line 107
    invoke-virtual {v5, v10, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 108
    .line 109
    .line 110
    const/high16 v5, 0x42a00000    # 80.0f

    .line 111
    .line 112
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    float-to-int v5, v5

    .line 117
    new-instance v14, Lcom/mycompany/app/view/MyLineText;

    .line 118
    .line 119
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 123
    .line 124
    invoke-virtual {v14, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    .line 126
    .line 127
    const v15, 0x800013

    .line 128
    .line 129
    .line 130
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    .line 132
    .line 133
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 134
    .line 135
    int-to-float v15, v15

    .line 136
    invoke-virtual {v14, v15, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 137
    .line 138
    .line 139
    const/high16 v15, 0x41800000    # 16.0f

    .line 140
    .line 141
    invoke-virtual {v14, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 145
    .line 146
    .line 147
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 148
    .line 149
    invoke-virtual {v14, v9}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v14, v3}, Lcom/mycompany/app/view/MyLineText;->setLineDn(Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v14, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 156
    .line 157
    .line 158
    new-instance v9, Landroid/widget/FrameLayout;

    .line 159
    .line 160
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10, v9, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 167
    .line 168
    .line 169
    new-instance v5, Lcom/mycompany/app/view/MyRecyclerView;

    .line 170
    .line 171
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v11}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 178
    .line 179
    .line 180
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 181
    .line 182
    invoke-direct {v10, v7, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 183
    .line 184
    .line 185
    const/16 v13, 0x10

    .line 186
    .line 187
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 188
    .line 189
    invoke-virtual {v9, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .line 191
    .line 192
    new-instance v9, Lcom/mycompany/app/view/MyLineLinear;

    .line 193
    .line 194
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    .line 202
    .line 203
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 204
    .line 205
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9, v3}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 209
    .line 210
    .line 211
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 212
    .line 213
    invoke-static {v4, v9, v7, v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    const/16 v13, 0x11

    .line 218
    .line 219
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10, v2}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 229
    .line 230
    invoke-direct {v3, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 231
    .line 232
    .line 233
    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 234
    .line 235
    const/4 v12, 0x0

    .line 236
    invoke-static {v9, v10, v3, v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 241
    .line 242
    .line 243
    const/4 v3, 0x1

    .line 244
    invoke-virtual {v2, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 245
    .line 246
    .line 247
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    .line 249
    invoke-direct {v3, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 250
    .line 251
    .line 252
    const/high16 v7, 0x3f800000    # 1.0f

    .line 253
    .line 254
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 255
    .line 256
    invoke-virtual {v9, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .line 258
    .line 259
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogEditArea;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 260
    .line 261
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 262
    .line 263
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogEditArea;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 264
    .line 265
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogEditArea;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 266
    .line 267
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogEditArea;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 268
    .line 269
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogEditArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 270
    .line 271
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogEditArea;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 272
    .line 273
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 274
    .line 275
    if-nez v2, :cond_1

    .line 276
    .line 277
    :goto_0
    return-void

    .line 278
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditArea$2;

    .line 279
    .line 280
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogEditArea$2;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    .line 285
    .line 286
    return-void
.end method
