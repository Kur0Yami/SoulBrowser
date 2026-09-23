.class Lcom/mycompany/app/dialog/DialogSetDark$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetDark;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$1;->c:Lcom/mycompany/app/dialog/DialogSetDark;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark$1;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

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
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 24
    .line 25
    .line 26
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 27
    .line 28
    const/4 v7, -0x1

    .line 29
    invoke-virtual {v4, v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 30
    .line 31
    .line 32
    sget v6, Lcom/mycompany/app/main/MainApp;->M1:I

    .line 33
    .line 34
    if-ne v6, v3, :cond_1

    .line 35
    .line 36
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    .line 45
    .line 46
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    .line 48
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 49
    .line 50
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 54
    .line 55
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v6, 0x0

    .line 63
    :goto_0
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 69
    .line 70
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    .line 72
    .line 73
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .line 75
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 76
    .line 77
    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    const v12, 0x800005

    .line 81
    .line 82
    .line 83
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 84
    .line 85
    sget v13, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 86
    .line 87
    invoke-virtual {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    .line 99
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 100
    .line 101
    invoke-direct {v11, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .line 103
    .line 104
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    .line 106
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 107
    .line 108
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    const/4 v11, 0x0

    .line 115
    invoke-static {v2, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    .line 121
    invoke-direct {v13, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .line 123
    .line 124
    const/high16 v14, 0x3f800000    # 1.0f

    .line 125
    .line 126
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    .line 128
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    new-instance v13, Lcom/mycompany/app/view/MyLineLinear;

    .line 132
    .line 133
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 140
    .line 141
    .line 142
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 143
    .line 144
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v13, v3}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 148
    .line 149
    .line 150
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 151
    .line 152
    invoke-static {v4, v13, v7, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    const/16 v8, 0x11

    .line 157
    .line 158
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    .line 160
    .line 161
    const/high16 v8, 0x41800000    # 16.0f

    .line 162
    .line 163
    invoke-virtual {v15, v3, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 164
    .line 165
    .line 166
    sget v3, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 167
    .line 168
    invoke-static {v15, v3, v2, v11, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iput v14, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 173
    .line 174
    const/4 v14, 0x0

    .line 175
    invoke-static {v13, v15, v3, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    const/16 v3, 0x11

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    .line 183
    .line 184
    const/4 v3, 0x1

    .line 185
    invoke-virtual {v2, v3, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 186
    .line 187
    .line 188
    sget v3, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 189
    .line 190
    invoke-static {v2, v3, v11, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    const/high16 v7, 0x3f800000    # 1.0f

    .line 195
    .line 196
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 197
    .line 198
    invoke-virtual {v13, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSetDark;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 202
    .line 203
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSetDark;->e0:Lcom/mycompany/app/view/MyLineFrame;

    .line 204
    .line 205
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSetDark;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 206
    .line 207
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogSetDark;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 208
    .line 209
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSetDark;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 210
    .line 211
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogSetDark;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 212
    .line 213
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogSetDark;->j0:Lcom/mycompany/app/view/MyLineLinear;

    .line 214
    .line 215
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSetDark;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogSetDark;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 218
    .line 219
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 220
    .line 221
    if-nez v2, :cond_2

    .line 222
    .line 223
    :goto_1
    return-void

    .line 224
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetDark$2;

    .line 225
    .line 226
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetDark$2;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    .line 231
    .line 232
    return-void
.end method
