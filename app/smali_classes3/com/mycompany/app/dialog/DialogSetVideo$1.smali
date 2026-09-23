.class Lcom/mycompany/app/dialog/DialogSetVideo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVideo$1;->c:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVideo$1;->c:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->c0:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

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
    const/high16 v5, 0x42f00000    # 120.0f

    .line 17
    .line 18
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    float-to-int v5, v5

    .line 23
    new-instance v6, Lcom/mycompany/app/view/MyLineFrame;

    .line 24
    .line 25
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 29
    .line 30
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 31
    .line 32
    .line 33
    const/4 v7, -0x1

    .line 34
    invoke-virtual {v4, v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Lcom/mycompany/app/view/MyRoundLinear;

    .line 38
    .line 39
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v3, v3}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 43
    .line 44
    .line 45
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    invoke-virtual {v5, v9, v9, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    .line 56
    .line 57
    const/high16 v8, 0x42a00000    # 80.0f

    .line 58
    .line 59
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    float-to-int v8, v8

    .line 64
    invoke-virtual {v5, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 65
    .line 66
    .line 67
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .line 69
    const/4 v10, -0x2

    .line 70
    sget v11, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 71
    .line 72
    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    const/16 v10, 0x11

    .line 76
    .line 77
    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    .line 79
    invoke-virtual {v6, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 88
    .line 89
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    .line 91
    .line 92
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 93
    .line 94
    int-to-float v11, v11

    .line 95
    invoke-virtual {v6, v11, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 96
    .line 97
    .line 98
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 99
    .line 100
    int-to-float v11, v11

    .line 101
    invoke-virtual {v6, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 102
    .line 103
    .line 104
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    .line 106
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 107
    .line 108
    invoke-direct {v11, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .line 110
    .line 111
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 112
    .line 113
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    sget v12, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 124
    .line 125
    int-to-float v12, v12

    .line 126
    invoke-virtual {v11, v12, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 127
    .line 128
    .line 129
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 130
    .line 131
    int-to-float v12, v12

    .line 132
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 133
    .line 134
    .line 135
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .line 137
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 138
    .line 139
    invoke-direct {v12, v13, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 143
    .line 144
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    if-nez v1, :cond_1

    .line 151
    .line 152
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    sget v12, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 157
    .line 158
    int-to-float v12, v12

    .line 159
    invoke-virtual {v8, v12, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 160
    .line 161
    .line 162
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 163
    .line 164
    int-to-float v12, v12

    .line 165
    invoke-virtual {v8, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 166
    .line 167
    .line 168
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    .line 170
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 171
    .line 172
    invoke-direct {v12, v13, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    .line 174
    .line 175
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 176
    .line 177
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_1
    const/4 v8, 0x0

    .line 185
    :goto_0
    invoke-static {v2, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    .line 191
    invoke-direct {v13, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    .line 193
    .line 194
    const/high16 v9, 0x3f800000    # 1.0f

    .line 195
    .line 196
    iput v9, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 197
    .line 198
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 202
    .line 203
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 207
    .line 208
    .line 209
    const/high16 v2, 0x41800000    # 16.0f

    .line 210
    .line 211
    invoke-virtual {v9, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 212
    .line 213
    .line 214
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 215
    .line 216
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    .line 217
    .line 218
    .line 219
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 220
    .line 221
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 222
    .line 223
    .line 224
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 225
    .line 226
    invoke-virtual {v4, v9, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 227
    .line 228
    .line 229
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 230
    .line 231
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->e0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 232
    .line 233
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 234
    .line 235
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 236
    .line 237
    if-eqz v1, :cond_2

    .line 238
    .line 239
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 240
    .line 241
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_2
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 245
    .line 246
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 247
    .line 248
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogSetVideo;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 249
    .line 250
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 251
    .line 252
    if-nez v1, :cond_3

    .line 253
    .line 254
    :goto_2
    return-void

    .line 255
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetVideo$2;

    .line 256
    .line 257
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetVideo$2;-><init>(Lcom/mycompany/app/dialog/DialogSetVideo;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    .line 262
    .line 263
    return-void
.end method
