.class Lcom/mycompany/app/dialog/DialogDeleteBook$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDeleteBook;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$1;->c:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$1;->c:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/high16 v4, 0x42900000    # 72.0f

    .line 15
    .line 16
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    float-to-int v4, v4

    .line 21
    new-instance v5, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const/4 v6, -0x1

    .line 27
    invoke-virtual {v3, v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    .line 31
    .line 32
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 36
    .line 37
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    .line 39
    .line 40
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 41
    .line 42
    int-to-float v8, v8

    .line 43
    const/high16 v9, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr v8, v9

    .line 46
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 47
    .line 48
    .line 49
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    .line 51
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 52
    .line 53
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    const v9, 0x800013

    .line 57
    .line 58
    .line 59
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    .line 61
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 62
    .line 63
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    const/4 v8, 0x2

    .line 70
    const/4 v10, 0x0

    .line 71
    invoke-static {v1, v10, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 76
    .line 77
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 78
    .line 79
    .line 80
    const/high16 v11, 0x41800000    # 16.0f

    .line 81
    .line 82
    invoke-virtual {v8, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 83
    .line 84
    .line 85
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .line 87
    const/4 v13, -0x2

    .line 88
    invoke-direct {v12, v6, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .line 90
    .line 91
    iput v9, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    .line 93
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 94
    .line 95
    .line 96
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 97
    .line 98
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    new-instance v4, Lcom/mycompany/app/view/MyLineLinear;

    .line 105
    .line 106
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 110
    .line 111
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 112
    .line 113
    invoke-virtual {v4, v5, v5, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    .line 118
    .line 119
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 125
    .line 126
    .line 127
    const/16 v5, 0x8

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 133
    .line 134
    .line 135
    new-instance v5, Landroid/widget/FrameLayout;

    .line 136
    .line 137
    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v5, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v10, v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    sget v12, Lnet/kaki87/soul2/testing/R$string;->total:I

    .line 148
    .line 149
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v9, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v10, v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    .line 161
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 162
    .line 163
    .line 164
    const v13, 0x800005

    .line 165
    .line 166
    .line 167
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    .line 169
    invoke-virtual {v5, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    new-instance v5, Lcom/mycompany/app/view/MyProgressBar;

    .line 173
    .line 174
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 175
    .line 176
    .line 177
    const/high16 v12, 0x41400000    # 12.0f

    .line 178
    .line 179
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    float-to-int v12, v12

    .line 184
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    .line 186
    invoke-direct {v13, v6, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 187
    .line 188
    .line 189
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 190
    .line 191
    iput v12, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 192
    .line 193
    invoke-virtual {v4, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    new-instance v12, Lcom/mycompany/app/view/MyLineText;

    .line 197
    .line 198
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    const/16 v1, 0x11

    .line 202
    .line 203
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v12, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 207
    .line 208
    .line 209
    sget v1, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 210
    .line 211
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    .line 213
    .line 214
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 215
    .line 216
    invoke-virtual {v12, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v12, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 220
    .line 221
    .line 222
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 223
    .line 224
    invoke-virtual {v3, v12, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 225
    .line 226
    .line 227
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 228
    .line 229
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 230
    .line 231
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 232
    .line 233
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->k0:Lcom/mycompany/app/view/MyLineLinear;

    .line 234
    .line 235
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 236
    .line 237
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 238
    .line 239
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 240
    .line 241
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 242
    .line 243
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 244
    .line 245
    if-nez v1, :cond_1

    .line 246
    .line 247
    :goto_0
    return-void

    .line 248
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogDeleteBook$2;

    .line 249
    .line 250
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDeleteBook$2;-><init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    .line 255
    .line 256
    return-void
.end method
