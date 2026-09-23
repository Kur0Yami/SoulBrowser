.class Lcom/mycompany/app/dialog/DialogSaveSource$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSaveSource;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSaveSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSaveSource$2;->c:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSaveSource$2;->c:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->o0:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    if-nez v3, :cond_2

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->g0:Lcom/mycompany/app/view/MyLineLinear;

    .line 22
    .line 23
    if-nez v3, :cond_3

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_3
    sget v4, Lnet/kaki87/soul2/testing/R$id;->down_icon_frame:I

    .line 28
    .line 29
    sget v5, Lnet/kaki87/soul2/testing/R$id;->down_path_title:I

    .line 30
    .line 31
    new-instance v6, Lcom/mycompany/app/view/MyLineRelative;

    .line 32
    .line 33
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const/high16 v7, 0x40c00000    # 6.0f

    .line 37
    .line 38
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    float-to-int v7, v7

    .line 43
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    invoke-virtual {v6, v8, v9, v7, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 47
    .line 48
    .line 49
    sget v7, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 52
    .line 53
    .line 54
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyLineRelative;->c(I)V

    .line 57
    .line 58
    .line 59
    const/4 v7, -0x1

    .line 60
    const/4 v8, -0x2

    .line 61
    invoke-virtual {v3, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Landroid/widget/RelativeLayout;

    .line 65
    .line 66
    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 70
    .line 71
    invoke-virtual {v3, v9, v10, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    .line 73
    .line 74
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .line 76
    invoke-direct {v10, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    const/16 v11, 0x10

    .line 80
    .line 81
    invoke-virtual {v10, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    .line 83
    .line 84
    const/16 v4, 0xf

    .line 85
    .line 86
    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    .line 88
    .line 89
    const/high16 v4, 0x41200000    # 10.0f

    .line 90
    .line 91
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    float-to-int v4, v4

    .line 96
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    const/high16 v4, 0x41600000    # 14.0f

    .line 103
    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v11, 0x1

    .line 106
    invoke-static {v1, v10, v5, v11, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    sget v12, Lnet/kaki87/soul2/testing/R$string;->down_location:I

    .line 111
    .line 112
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v4, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 116
    .line 117
    .line 118
    const/4 v12, 0x2

    .line 119
    invoke-static {v1, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 124
    .line 125
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 126
    .line 127
    .line 128
    const/high16 v13, 0x41800000    # 16.0f

    .line 129
    .line 130
    invoke-virtual {v12, v11, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 131
    .line 132
    .line 133
    const/4 v14, 0x3

    .line 134
    invoke-static {v8, v8, v14, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 139
    .line 140
    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 141
    .line 142
    invoke-virtual {v3, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    new-instance v3, Lcom/mycompany/app/view/MyLineLinear;

    .line 146
    .line 147
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    .line 155
    .line 156
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 157
    .line 158
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 162
    .line 163
    .line 164
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 165
    .line 166
    invoke-virtual {v2, v3, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 167
    .line 168
    .line 169
    const/16 v2, 0x11

    .line 170
    .line 171
    invoke-static {v1, v10, v2, v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    sget v2, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 176
    .line 177
    invoke-static {v1, v2, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const/high16 v5, 0x3f800000    # 1.0f

    .line 182
    .line 183
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 184
    .line 185
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .line 187
    .line 188
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->k0:Lcom/mycompany/app/view/MyLineRelative;

    .line 189
    .line 190
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 191
    .line 192
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 193
    .line 194
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 197
    .line 198
    if-nez v1, :cond_4

    .line 199
    .line 200
    :goto_0
    return-void

    .line 201
    :cond_4
    new-instance v2, Lcom/mycompany/app/dialog/DialogSaveSource$3;

    .line 202
    .line 203
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSaveSource$3;-><init>(Lcom/mycompany/app/dialog/DialogSaveSource;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    return-void
.end method
