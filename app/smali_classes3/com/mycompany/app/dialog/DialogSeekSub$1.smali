.class Lcom/mycompany/app/dialog/DialogSeekSub$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSub$1;->c:Lcom/mycompany/app/dialog/DialogSeekSub;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub$1;->c:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekSub;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_seek_text:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    new-instance v6, Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    invoke-direct {v6, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const/4 v7, -0x1

    .line 24
    const/4 v8, -0x2

    .line 25
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 26
    .line 27
    .line 28
    const/high16 v9, 0x41400000    # 12.0f

    .line 29
    .line 30
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    float-to-int v9, v9

    .line 35
    const/4 v10, 0x0

    .line 36
    const/high16 v11, 0x41800000    # 16.0f

    .line 37
    .line 38
    invoke-static {v2, v10, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    .line 44
    invoke-direct {v13, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iput v9, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 48
    .line 49
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 50
    .line 51
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    invoke-direct {v13, v2, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v13, v3}, Landroid/view/View;->setId(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v13, v4, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 69
    .line 70
    .line 71
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 72
    .line 73
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 74
    .line 75
    .line 76
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    .line 78
    invoke-direct {v14, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    const/16 v15, 0x15

    .line 82
    .line 83
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    .line 85
    .line 86
    iput v9, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 87
    .line 88
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 89
    .line 90
    invoke-virtual {v14, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    new-instance v9, Landroid/widget/FrameLayout;

    .line 97
    .line 98
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .line 103
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 104
    .line 105
    invoke-direct {v14, v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .line 107
    .line 108
    const/4 v15, 0x3

    .line 109
    invoke-virtual {v14, v15, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 121
    .line 122
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    .line 124
    .line 125
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 126
    .line 127
    invoke-virtual {v9, v3, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 128
    .line 129
    .line 130
    new-instance v14, Landroid/widget/SeekBar;

    .line 131
    .line 132
    invoke-direct {v14, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .line 137
    invoke-direct {v15, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    const v8, 0x800013

    .line 141
    .line 142
    .line 143
    iput v8, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    .line 145
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 146
    .line 147
    invoke-virtual {v15, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 148
    .line 149
    .line 150
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 151
    .line 152
    invoke-virtual {v15, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    .line 164
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 165
    .line 166
    invoke-direct {v8, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    const v15, 0x800005

    .line 170
    .line 171
    .line 172
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 173
    .line 174
    invoke-virtual {v9, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    new-instance v8, Lcom/mycompany/app/view/MyLineLinear;

    .line 178
    .line 179
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    const/4 v9, 0x0

    .line 183
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 187
    .line 188
    .line 189
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 190
    .line 191
    invoke-virtual {v8, v15}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v4}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 195
    .line 196
    .line 197
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 198
    .line 199
    invoke-static {v5, v8, v7, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    const/16 v10, 0x11

    .line 204
    .line 205
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v15, v4, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 209
    .line 210
    .line 211
    sget v4, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 212
    .line 213
    invoke-static {v15, v4, v2, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    const/high16 v7, 0x3f800000    # 1.0f

    .line 218
    .line 219
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 220
    .line 221
    const/4 v7, 0x0

    .line 222
    invoke-static {v8, v15, v4, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    .line 228
    .line 229
    const/4 v4, 0x1

    .line 230
    invoke-virtual {v2, v4, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 231
    .line 232
    .line 233
    sget v4, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 234
    .line 235
    const/4 v7, -0x1

    .line 236
    invoke-static {v2, v4, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    const/high16 v7, 0x3f800000    # 1.0f

    .line 241
    .line 242
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 243
    .line 244
    invoke-virtual {v8, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .line 246
    .line 247
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSeekSub;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 248
    .line 249
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogSeekSub;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 250
    .line 251
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogSeekSub;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    .line 253
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 254
    .line 255
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogSeekSub;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 256
    .line 257
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSeekSub;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 258
    .line 259
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekSub;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 260
    .line 261
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogSeekSub;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 262
    .line 263
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 264
    .line 265
    if-nez v2, :cond_1

    .line 266
    .line 267
    :goto_0
    return-void

    .line 268
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogSeekSub$2;

    .line 269
    .line 270
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSeekSub$2;-><init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    .line 275
    .line 276
    return-void
.end method
