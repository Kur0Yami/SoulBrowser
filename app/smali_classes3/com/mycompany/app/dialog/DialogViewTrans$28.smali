.class Lcom/mycompany/app/dialog/DialogViewTrans$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$28;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$28;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyDialogLinear;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Landroid/view/View;

    .line 28
    .line 29
    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    .line 34
    const/4 v6, -0x1

    .line 35
    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    const/high16 v7, 0x3f800000    # 1.0f

    .line 39
    .line 40
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 41
    .line 42
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    .line 54
    .line 55
    sget v8, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 56
    .line 57
    int-to-float v8, v8

    .line 58
    const/4 v9, 0x1

    .line 59
    invoke-virtual {v4, v8, v9}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 60
    .line 61
    .line 62
    sget v8, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 63
    .line 64
    int-to-float v8, v8

    .line 65
    invoke-virtual {v4, v8}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 66
    .line 67
    .line 68
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 69
    .line 70
    invoke-virtual {v2, v4, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 71
    .line 72
    .line 73
    new-instance v8, Landroid/view/View;

    .line 74
    .line 75
    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    .line 80
    invoke-direct {v10, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 84
    .line 85
    invoke-virtual {v2, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 89
    .line 90
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    .line 95
    .line 96
    sget v10, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 97
    .line 98
    int-to-float v10, v10

    .line 99
    invoke-virtual {v8, v10, v9}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 100
    .line 101
    .line 102
    sget v10, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 103
    .line 104
    int-to-float v10, v10

    .line 105
    invoke-virtual {v8, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 106
    .line 107
    .line 108
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 109
    .line 110
    invoke-virtual {v2, v8, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 111
    .line 112
    .line 113
    new-instance v10, Landroid/view/View;

    .line 114
    .line 115
    invoke-direct {v10, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .line 120
    invoke-direct {v11, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .line 122
    .line 123
    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 124
    .line 125
    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 129
    .line 130
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    .line 135
    .line 136
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 137
    .line 138
    int-to-float v11, v11

    .line 139
    invoke-virtual {v10, v11, v9}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 140
    .line 141
    .line 142
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 143
    .line 144
    int-to-float v11, v11

    .line 145
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 146
    .line 147
    .line 148
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 149
    .line 150
    invoke-virtual {v2, v10, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 151
    .line 152
    .line 153
    new-instance v11, Landroid/view/View;

    .line 154
    .line 155
    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 159
    .line 160
    invoke-direct {v12, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    iput v7, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 164
    .line 165
    invoke-virtual {v2, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 169
    .line 170
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 174
    .line 175
    .line 176
    sget v12, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 177
    .line 178
    int-to-float v12, v12

    .line 179
    invoke-virtual {v11, v12, v9}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 180
    .line 181
    .line 182
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 183
    .line 184
    int-to-float v12, v12

    .line 185
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 186
    .line 187
    .line 188
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 189
    .line 190
    invoke-virtual {v2, v11, v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 191
    .line 192
    .line 193
    new-instance v12, Landroid/view/View;

    .line 194
    .line 195
    invoke-direct {v12, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 196
    .line 197
    .line 198
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 199
    .line 200
    invoke-direct {v13, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 201
    .line 202
    .line 203
    iput v7, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 204
    .line 205
    invoke-virtual {v2, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 209
    .line 210
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 214
    .line 215
    .line 216
    sget v5, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 217
    .line 218
    int-to-float v5, v5

    .line 219
    invoke-virtual {v12, v5, v9}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 220
    .line 221
    .line 222
    sget v5, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 223
    .line 224
    int-to-float v5, v5

    .line 225
    invoke-virtual {v12, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 226
    .line 227
    .line 228
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 229
    .line 230
    invoke-virtual {v2, v12, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 231
    .line 232
    .line 233
    new-instance v5, Landroid/view/View;

    .line 234
    .line 235
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 236
    .line 237
    .line 238
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 239
    .line 240
    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 241
    .line 242
    .line 243
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 244
    .line 245
    invoke-virtual {v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->G0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 249
    .line 250
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 251
    .line 252
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->I0:Lcom/mycompany/app/view/MyButtonImage;

    .line 253
    .line 254
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->J0:Lcom/mycompany/app/view/MyButtonImage;

    .line 255
    .line 256
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 257
    .line 258
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 259
    .line 260
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 261
    .line 262
    if-nez v1, :cond_2

    .line 263
    .line 264
    :goto_0
    return-void

    .line 265
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$29;

    .line 266
    .line 267
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$29;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 271
    .line 272
    .line 273
    return-void
.end method
