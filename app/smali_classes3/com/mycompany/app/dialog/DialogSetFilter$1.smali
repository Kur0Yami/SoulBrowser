.class Lcom/mycompany/app/dialog/DialogSetFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$1;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFilter$1;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_count_view:I

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
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 24
    .line 25
    const/4 v8, -0x1

    .line 26
    invoke-virtual {v5, v6, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 27
    .line 28
    .line 29
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    invoke-direct {v7, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v3}, Landroid/view/View;->setId(I)V

    .line 36
    .line 37
    .line 38
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    invoke-virtual {v7, v10, v11, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 42
    .line 43
    .line 44
    const/16 v10, 0x10

    .line 45
    .line 46
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    .line 48
    .line 49
    const/4 v12, 0x3

    .line 50
    invoke-virtual {v7, v12}, Landroid/view/View;->setTextDirection(I)V

    .line 51
    .line 52
    .line 53
    const/high16 v12, 0x41800000    # 16.0f

    .line 54
    .line 55
    invoke-virtual {v7, v4, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 56
    .line 57
    .line 58
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .line 60
    const/4 v14, -0x2

    .line 61
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 62
    .line 63
    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    const/16 v14, 0x15

    .line 67
    .line 68
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    .line 70
    .line 71
    const/high16 v15, 0x42700000    # 60.0f

    .line 72
    .line 73
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    float-to-int v15, v15

    .line 78
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    new-instance v13, Landroid/widget/ImageView;

    .line 85
    .line 86
    invoke-direct {v13, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 90
    .line 91
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    .line 93
    .line 94
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    .line 96
    sget v11, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 97
    .line 98
    invoke-direct {v15, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .line 100
    .line 101
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 102
    .line 103
    iput v11, v15, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 104
    .line 105
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 106
    .line 107
    invoke-virtual {v15, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    invoke-direct {v11, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v11, v4, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 125
    .line 126
    .line 127
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    .line 129
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 130
    .line 131
    invoke-direct {v9, v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 135
    .line 136
    .line 137
    const/high16 v3, 0x42500000    # 52.0f

    .line 138
    .line 139
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    float-to-int v3, v3

    .line 144
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    new-instance v3, Lcom/mycompany/app/view/MyButtonCheck;

    .line 151
    .line 152
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    .line 157
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 158
    .line 159
    invoke-direct {v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    .line 164
    .line 165
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 166
    .line 167
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    .line 172
    .line 173
    new-instance v6, Lcom/mycompany/app/view/MyRecyclerView;

    .line 174
    .line 175
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->r7(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 182
    .line 183
    .line 184
    const/4 v9, 0x0

    .line 185
    invoke-virtual {v6, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 186
    .line 187
    .line 188
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    .line 190
    invoke-direct {v10, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .line 192
    .line 193
    const/high16 v9, 0x3f800000    # 1.0f

    .line 194
    .line 195
    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 196
    .line 197
    invoke-virtual {v5, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .line 199
    .line 200
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 201
    .line 202
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    const/16 v2, 0x11

    .line 206
    .line 207
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9, v4, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 211
    .line 212
    .line 213
    sget v2, Lnet/kaki87/soul2/testing/R$string;->add:I

    .line 214
    .line 215
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    .line 217
    .line 218
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 219
    .line 220
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 221
    .line 222
    .line 223
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 224
    .line 225
    invoke-virtual {v5, v9, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 226
    .line 227
    .line 228
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 229
    .line 230
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->g0:Landroid/widget/ImageView;

    .line 231
    .line 232
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 233
    .line 234
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 235
    .line 236
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 237
    .line 238
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 239
    .line 240
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 241
    .line 242
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 243
    .line 244
    if-nez v2, :cond_1

    .line 245
    .line 246
    :goto_0
    return-void

    .line 247
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetFilter$2;

    .line 248
    .line 249
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetFilter$2;-><init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    .line 254
    .line 255
    return-void
.end method
