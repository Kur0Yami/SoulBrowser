.class Lcom/mycompany/app/dialog/DialogSetTts$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTts;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts$1;->c:Lcom/mycompany/app/dialog/DialogSetTts;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts$1;->c:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

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
    new-instance v5, Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-virtual {v5, v7, v7, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    const/4 v6, -0x1

    .line 28
    const/4 v8, -0x2

    .line 29
    invoke-virtual {v4, v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 30
    .line 31
    .line 32
    new-instance v9, Lcom/mycompany/app/view/MyRoundFrame;

    .line 33
    .line 34
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v9, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 38
    .line 39
    .line 40
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    const/4 v11, 0x0

    .line 43
    invoke-direct {v10, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    .line 45
    .line 46
    const/16 v12, 0x11

    .line 47
    .line 48
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    .line 50
    .line 51
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 52
    .line 53
    int-to-float v13, v13

    .line 54
    const/high16 v14, 0x3f800000    # 1.0f

    .line 55
    .line 56
    invoke-virtual {v10, v13, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 57
    .line 58
    .line 59
    const/high16 v13, 0x41800000    # 16.0f

    .line 60
    .line 61
    invoke-virtual {v10, v3, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 62
    .line 63
    .line 64
    const/high16 v15, 0x42900000    # 72.0f

    .line 65
    .line 66
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 67
    .line 68
    .line 69
    move-result v15

    .line 70
    float-to-int v15, v15

    .line 71
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 72
    .line 73
    .line 74
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .line 76
    invoke-direct {v15, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 80
    .line 81
    invoke-virtual {v15, v8, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 82
    .line 83
    .line 84
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    .line 86
    invoke-virtual {v9, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    new-instance v8, Lcom/mycompany/app/view/MyRecyclerView;

    .line 90
    .line 91
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v3, v7}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 101
    .line 102
    .line 103
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    .line 105
    invoke-direct {v15, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .line 107
    .line 108
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 109
    .line 110
    invoke-virtual {v4, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    new-instance v15, Lcom/mycompany/app/view/MyLineLinear;

    .line 114
    .line 115
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    .line 123
    .line 124
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 125
    .line 126
    invoke-virtual {v15, v11}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v15, v3}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 130
    .line 131
    .line 132
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 133
    .line 134
    invoke-static {v4, v15, v6, v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11, v3, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 142
    .line 143
    .line 144
    sget v3, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 145
    .line 146
    invoke-static {v11, v3, v2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iput v14, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 151
    .line 152
    const/4 v14, 0x0

    .line 153
    invoke-static {v15, v11, v3, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    .line 159
    .line 160
    const/4 v3, 0x1

    .line 161
    invoke-virtual {v2, v3, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 162
    .line 163
    .line 164
    sget v3, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 165
    .line 166
    invoke-static {v2, v3, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    const/high16 v6, 0x3f800000    # 1.0f

    .line 171
    .line 172
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 173
    .line 174
    invoke-virtual {v15, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSetTts;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 178
    .line 179
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSetTts;->d0:Landroid/widget/FrameLayout;

    .line 180
    .line 181
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogSetTts;->e0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 182
    .line 183
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSetTts;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogSetTts;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 186
    .line 187
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSetTts;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSetTts;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 190
    .line 191
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 192
    .line 193
    if-nez v2, :cond_1

    .line 194
    .line 195
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetTts$2;

    .line 197
    .line 198
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetTts$2;-><init>(Lcom/mycompany/app/dialog/DialogSetTts;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    .line 203
    .line 204
    return-void
.end method
