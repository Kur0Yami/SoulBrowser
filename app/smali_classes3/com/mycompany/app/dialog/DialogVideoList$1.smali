.class Lcom/mycompany/app/dialog/DialogVideoList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogVideoList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList$1;->c:Lcom/mycompany/app/dialog/DialogVideoList;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList$1;->c:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogVideoList;->b0:Landroid/content/Context;

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
    iget-boolean v5, v1, Lcom/mycompany/app/dialog/DialogVideoList;->n0:Z

    .line 17
    .line 18
    const/16 v6, 0x8

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, -0x2

    .line 22
    const/4 v9, -0x1

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    new-instance v5, Lcom/mycompany/app/view/MyAdFrame;

    .line 26
    .line 27
    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    const/high16 v10, 0x43aa0000    # 340.0f

    .line 31
    .line 32
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    float-to-int v10, v10

    .line 37
    invoke-virtual {v5, v10}, Landroid/view/View;->setMinimumHeight(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v5, v7

    .line 48
    :goto_0
    new-instance v10, Lcom/mycompany/app/view/MyRoundLinear;

    .line 49
    .line 50
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v10, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 57
    .line 58
    .line 59
    new-instance v11, Lcom/mycompany/app/view/MyLineFrame;

    .line 60
    .line 61
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 65
    .line 66
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 67
    .line 68
    .line 69
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 70
    .line 71
    invoke-virtual {v10, v11, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 72
    .line 73
    .line 74
    new-instance v12, Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-direct {v12, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 80
    .line 81
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    .line 83
    .line 84
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    .line 86
    sget v14, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 87
    .line 88
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .line 90
    .line 91
    const v14, 0x800013

    .line 92
    .line 93
    .line 94
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 95
    .line 96
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 97
    .line 98
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    const/high16 v13, 0x41800000    # 16.0f

    .line 105
    .line 106
    invoke-static {v2, v7, v3, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    .line 109
    move-result-object v15

    .line 110
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    .line 112
    invoke-direct {v6, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    .line 114
    .line 115
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    .line 117
    const/high16 v8, 0x42900000    # 72.0f

    .line 118
    .line 119
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    float-to-int v8, v8

    .line 124
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v11, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .line 137
    invoke-direct {v3, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    iput v14, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 141
    .line 142
    const/high16 v6, 0x3f800000    # 1.0f

    .line 143
    .line 144
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 145
    .line 146
    invoke-virtual {v10, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    .line 148
    .line 149
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    invoke-direct {v3, v2, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    .line 153
    .line 154
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 155
    .line 156
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 157
    .line 158
    .line 159
    const/high16 v7, 0x43200000    # 160.0f

    .line 160
    .line 161
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    float-to-int v2, v2

    .line 166
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 167
    .line 168
    .line 169
    const/16 v2, 0x11

    .line 170
    .line 171
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    .line 173
    .line 174
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 175
    .line 176
    int-to-float v2, v2

    .line 177
    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 178
    .line 179
    .line 180
    const/4 v2, 0x1

    .line 181
    invoke-virtual {v3, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 182
    .line 183
    .line 184
    const/16 v2, 0x8

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    const/4 v2, -0x2

    .line 190
    invoke-virtual {v10, v3, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 191
    .line 192
    .line 193
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 194
    .line 195
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogVideoList;->t0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 196
    .line 197
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogVideoList;->u0:Lcom/mycompany/app/view/MyLineFrame;

    .line 198
    .line 199
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogVideoList;->v0:Landroid/widget/ImageView;

    .line 200
    .line 201
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogVideoList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 202
    .line 203
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 204
    .line 205
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 206
    .line 207
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogVideoList;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 208
    .line 209
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 210
    .line 211
    if-nez v2, :cond_2

    .line 212
    .line 213
    :goto_1
    return-void

    .line 214
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogVideoList$2;

    .line 215
    .line 216
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogVideoList$2;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    .line 221
    .line 222
    return-void
.end method
