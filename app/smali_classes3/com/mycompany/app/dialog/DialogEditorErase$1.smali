.class Lcom/mycompany/app/dialog/DialogEditorErase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditorErase;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorErase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorErase$1;->c:Lcom/mycompany/app/dialog/DialogEditorErase;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase$1;->c:Lcom/mycompany/app/dialog/DialogEditorErase;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditorErase;->a0:Landroid/content/Context;

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
    const/high16 v5, 0x42900000    # 72.0f

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
    new-instance v8, Lcom/mycompany/app/view/MyCircleView;

    .line 38
    .line 39
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyCircleView;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    invoke-direct {v9, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 48
    .line 49
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    const/high16 v5, 0x41400000    # 12.0f

    .line 53
    .line 54
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    float-to-int v5, v5

    .line 59
    new-instance v9, Landroid/widget/FrameLayout;

    .line 60
    .line 61
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    invoke-virtual {v9, v10, v5, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 66
    .line 67
    .line 68
    const/4 v5, -0x2

    .line 69
    invoke-virtual {v4, v9, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 70
    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    const/high16 v11, 0x41800000    # 16.0f

    .line 74
    .line 75
    invoke-static {v2, v10, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    .line 81
    invoke-direct {v13, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 85
    .line 86
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v10, v3, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 97
    .line 98
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 99
    .line 100
    .line 101
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    .line 103
    invoke-direct {v13, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    .line 105
    .line 106
    const v14, 0x800005

    .line 107
    .line 108
    .line 109
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    .line 111
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 112
    .line 113
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    new-instance v9, Landroid/widget/FrameLayout;

    .line 120
    .line 121
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 125
    .line 126
    invoke-virtual {v4, v9, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 127
    .line 128
    .line 129
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 135
    .line 136
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    .line 138
    .line 139
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 140
    .line 141
    invoke-virtual {v9, v13, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 142
    .line 143
    .line 144
    new-instance v3, Landroid/widget/SeekBar;

    .line 145
    .line 146
    invoke-direct {v3, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    .line 151
    invoke-direct {v11, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 152
    .line 153
    .line 154
    const v5, 0x800013

    .line 155
    .line 156
    .line 157
    iput v5, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    .line 159
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 160
    .line 161
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 162
    .line 163
    .line 164
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 165
    .line 166
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 177
    .line 178
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 179
    .line 180
    invoke-direct {v11, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 181
    .line 182
    .line 183
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    .line 185
    invoke-virtual {v9, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .line 187
    .line 188
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 189
    .line 190
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    const/16 v2, 0x11

    .line 194
    .line 195
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 196
    .line 197
    .line 198
    const/high16 v2, 0x41800000    # 16.0f

    .line 199
    .line 200
    const/4 v11, 0x1

    .line 201
    invoke-virtual {v9, v11, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 202
    .line 203
    .line 204
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 205
    .line 206
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    .line 208
    .line 209
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 210
    .line 211
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9, v11}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 215
    .line 216
    .line 217
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 218
    .line 219
    invoke-virtual {v4, v9, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 220
    .line 221
    .line 222
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogEditorErase;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 223
    .line 224
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogEditorErase;->d0:Lcom/mycompany/app/view/MyLineFrame;

    .line 225
    .line 226
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogEditorErase;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 227
    .line 228
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogEditorErase;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 229
    .line 230
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogEditorErase;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 231
    .line 232
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogEditorErase;->h0:Landroid/widget/SeekBar;

    .line 233
    .line 234
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogEditorErase;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 235
    .line 236
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogEditorErase;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 237
    .line 238
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogEditorErase;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 239
    .line 240
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 241
    .line 242
    if-nez v2, :cond_1

    .line 243
    .line 244
    :goto_0
    return-void

    .line 245
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditorErase$2;

    .line 246
    .line 247
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogEditorErase$2;-><init>(Lcom/mycompany/app/dialog/DialogEditorErase;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    .line 252
    .line 253
    return-void
.end method
