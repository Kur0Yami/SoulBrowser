.class Lcom/mycompany/app/dialog/DialogLoadImg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogLoadImg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLoadImg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg$1;->c:Lcom/mycompany/app/dialog/DialogLoadImg;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg$1;->c:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogLoadImg;->b0:Landroid/content/Context;

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
    new-instance v6, Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    invoke-virtual {v6, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    .line 39
    .line 40
    const/4 v7, -0x1

    .line 41
    const/4 v9, -0x2

    .line 42
    invoke-virtual {v4, v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 43
    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    const/high16 v11, 0x41800000    # 16.0f

    .line 47
    .line 48
    invoke-static {v2, v10, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    sget v13, Lnet/kaki87/soul2/testing/R$string;->loading:I

    .line 53
    .line 54
    invoke-static {v12, v13, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    const/high16 v14, 0x41400000    # 12.0f

    .line 59
    .line 60
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    float-to-int v14, v14

    .line 65
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 66
    .line 67
    invoke-virtual {v6, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    new-instance v13, Lcom/mycompany/app/view/MyProgressBar;

    .line 71
    .line 72
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    .line 77
    sget v15, Lcom/mycompany/app/main/MainApp;->x1:I

    .line 78
    .line 79
    invoke-direct {v14, v7, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .line 81
    .line 82
    const/high16 v15, 0x41600000    # 14.0f

    .line 83
    .line 84
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    float-to-int v15, v15

    .line 89
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 90
    .line 91
    invoke-virtual {v6, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    invoke-direct {v14, v2, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v14, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 100
    .line 101
    .line 102
    const/16 v5, 0x11

    .line 103
    .line 104
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v14, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 108
    .line 109
    .line 110
    const/16 v15, 0x8

    .line 111
    .line 112
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    .line 117
    invoke-direct {v10, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    .line 119
    .line 120
    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 121
    .line 122
    invoke-virtual {v6, v14, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    new-instance v6, Lcom/mycompany/app/view/MyLineLinear;

    .line 126
    .line 127
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    .line 135
    .line 136
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 137
    .line 138
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v3}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 148
    .line 149
    invoke-static {v4, v6, v7, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 157
    .line 158
    .line 159
    sget v10, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 160
    .line 161
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    .line 172
    invoke-direct {v10, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    .line 174
    .line 175
    const/high16 v15, 0x3f800000    # 1.0f

    .line 176
    .line 177
    iput v15, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 178
    .line 179
    const/4 v15, 0x0

    .line 180
    invoke-static {v6, v9, v10, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 188
    .line 189
    .line 190
    sget v3, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 191
    .line 192
    invoke-static {v2, v3, v8, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    const/high16 v5, 0x3f800000    # 1.0f

    .line 197
    .line 198
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 199
    .line 200
    invoke-virtual {v6, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    .line 202
    .line 203
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogLoadImg;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 204
    .line 205
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogLoadImg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 208
    .line 209
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogLoadImg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 210
    .line 211
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogLoadImg;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 212
    .line 213
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    .line 215
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogLoadImg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 216
    .line 217
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 218
    .line 219
    if-nez v2, :cond_1

    .line 220
    .line 221
    :goto_0
    return-void

    .line 222
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogLoadImg$2;

    .line 223
    .line 224
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogLoadImg$2;-><init>(Lcom/mycompany/app/dialog/DialogLoadImg;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    .line 229
    .line 230
    return-void
.end method
