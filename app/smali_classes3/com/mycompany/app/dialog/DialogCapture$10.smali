.class Lcom/mycompany/app/dialog/DialogCapture$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$10;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$10;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->T:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyFadeFrame;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 29
    .line 30
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 39
    .line 40
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    .line 42
    .line 43
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_16:I

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    .line 47
    .line 48
    const/high16 v4, 0x43040000    # 132.0f

    .line 49
    .line 50
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    float-to-int v4, v4

    .line 55
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    .line 57
    const/4 v6, -0x2

    .line 58
    invoke-direct {v5, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    const/16 v4, 0x11

    .line 62
    .line 63
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    .line 65
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    new-instance v4, Landroid/view/View;

    .line 69
    .line 70
    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    const/high16 v5, 0x42a80000    # 84.0f

    .line 74
    .line 75
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    float-to-int v5, v5

    .line 80
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    invoke-direct {v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    .line 88
    invoke-virtual {v3, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    invoke-direct {v7, v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    .line 96
    .line 97
    const/high16 v9, 0x41800000    # 16.0f

    .line 98
    .line 99
    invoke-virtual {v7, v5, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 100
    .line 101
    .line 102
    const/4 v10, -0x1

    .line 103
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    .line 108
    invoke-direct {v11, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 109
    .line 110
    .line 111
    const/high16 v12, 0x42b80000    # 92.0f

    .line 112
    .line 113
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    float-to-int v12, v12

    .line 118
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 119
    .line 120
    iput v5, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    .line 122
    invoke-virtual {v3, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    new-instance v3, Landroid/widget/FrameLayout;

    .line 126
    .line 127
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_8:I

    .line 131
    .line 132
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    .line 134
    .line 135
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .line 137
    invoke-direct {v11, v10, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    const v12, 0x800053

    .line 141
    .line 142
    .line 143
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    .line 145
    invoke-virtual {v2, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    .line 147
    .line 148
    new-instance v11, Landroid/widget/LinearLayout;

    .line 149
    .line 150
    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 154
    .line 155
    invoke-virtual {v11, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    .line 160
    .line 161
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 162
    .line 163
    invoke-direct {v12, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    .line 165
    .line 166
    iput v5, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 167
    .line 168
    invoke-virtual {v3, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    invoke-direct {v12, v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    .line 175
    .line 176
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 177
    .line 178
    int-to-float v13, v13

    .line 179
    const/high16 v14, 0x3f800000    # 1.0f

    .line 180
    .line 181
    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12, v5, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v11, v12, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 191
    .line 192
    .line 193
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 194
    .line 195
    invoke-direct {v13, v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    .line 197
    .line 198
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 199
    .line 200
    int-to-float v1, v1

    .line 201
    invoke-virtual {v13, v1, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v13, v5, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    .line 212
    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 213
    .line 214
    .line 215
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 216
    .line 217
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 218
    .line 219
    invoke-virtual {v11, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->T:Lcom/mycompany/app/view/MyFadeFrame;

    .line 223
    .line 224
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_pinch:I

    .line 225
    .line 226
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    .line 228
    .line 229
    sget v1, Lnet/kaki87/soul2/testing/R$string;->guide_pinch:I

    .line 230
    .line 231
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    .line 233
    .line 234
    sget v1, Lnet/kaki87/soul2/testing/R$string;->scroll_guide_1:I

    .line 235
    .line 236
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    .line 238
    .line 239
    sget v1, Lnet/kaki87/soul2/testing/R$string;->scroll_guide_2:I

    .line 240
    .line 241
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->T:Lcom/mycompany/app/view/MyFadeFrame;

    .line 245
    .line 246
    new-instance v2, Lcom/mycompany/app/dialog/DialogCapture$11;

    .line 247
    .line 248
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCapture$11;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->T:Lcom/mycompany/app/view/MyFadeFrame;

    .line 255
    .line 256
    new-instance v2, Lcom/mycompany/app/dialog/DialogCapture$12;

    .line 257
    .line 258
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCapture$12;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    .line 263
    .line 264
    new-instance v1, Lcom/mycompany/app/dialog/DialogCapture$13;

    .line 265
    .line 266
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogCapture$13;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture;->T:Lcom/mycompany/app/view/MyFadeFrame;

    .line 275
    .line 276
    invoke-virtual {v1, v0, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 277
    .line 278
    .line 279
    :cond_2
    :goto_0
    return-void

    .line 280
    :cond_3
    sget v0, Lcom/mycompany/app/dialog/DialogCapture;->Y:I

    .line 281
    .line 282
    return-void
.end method
