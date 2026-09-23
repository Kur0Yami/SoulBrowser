.class public Lcom/mycompany/app/web/WebCrashView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebCrashView$CrashViewListener;
    }
.end annotation


# instance fields
.field public c:Lcom/mycompany/app/web/WebCrashView$CrashViewListener;

.field public f:Landroidx/appcompat/widget/AppCompatTextView;

.field public g:Landroidx/appcompat/widget/AppCompatTextView;

.field public h:Lcom/mycompany/app/view/MyButtonText;

.field public i:Landroidx/appcompat/widget/AppCompatTextView;

.field public j:Lcom/mycompany/app/view/MyButtonText;

.field public k:Lcom/mycompany/app/view/MyButtonText;

.field public l:Lcom/mycompany/app/view/MyButtonText;

.field public m:Ljava/lang/String;


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    const/high16 v1, -0x1000000

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    const v2, -0x50506

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->j:Lcom/mycompany/app/view/MyButtonText;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->j:Lcom/mycompany/app/view/MyButtonText;

    .line 39
    .line 40
    const v3, -0xd8d8d9

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    const/4 v0, -0x1

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->j:Lcom/mycompany/app/view/MyButtonText;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->j:Lcom/mycompany/app/view/MyButtonText;

    .line 92
    .line 93
    const v2, -0x70708

    .line 94
    .line 95
    .line 96
    const/high16 v3, 0x21000000

    .line 97
    .line 98
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 107
    .line 108
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 117
    .line 118
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 2
    .line 3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->H3()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->j0()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eq v1, v0, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public getCrashUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCrashUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebCrashView;->m:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebCrashView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mycompany/app/web/WebCrashView$CrashViewListener;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lcom/mycompany/app/web/WebCrashView;->c:Lcom/mycompany/app/web/WebCrashView$CrashViewListener;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/high16 v2, 0x41a00000    # 20.0f

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    float-to-int v2, v2

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-direct {v4, v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    .line 30
    .line 31
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 32
    .line 33
    int-to-float v6, v6

    .line 34
    const/high16 v7, 0x3f800000    # 1.0f

    .line 35
    .line 36
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 37
    .line 38
    .line 39
    const/high16 v6, 0x41800000    # 16.0f

    .line 40
    .line 41
    invoke-virtual {v4, v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 42
    .line 43
    .line 44
    sget v8, Lnet/kaki87/soul2/testing/R$string;->crash_guide_1:I

    .line 45
    .line 46
    const/4 v9, -0x1

    .line 47
    const/4 v10, -0x2

    .line 48
    invoke-static {v4, v8, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 53
    .line 54
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    invoke-direct {v8, v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    .line 67
    .line 68
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 69
    .line 70
    int-to-float v11, v11

    .line 71
    invoke-virtual {v8, v11, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 72
    .line 73
    .line 74
    const/4 v11, 0x2

    .line 75
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 76
    .line 77
    .line 78
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 79
    .line 80
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 81
    .line 82
    .line 83
    const/high16 v11, 0x41600000    # 14.0f

    .line 84
    .line 85
    invoke-virtual {v8, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 86
    .line 87
    .line 88
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    .line 90
    invoke-direct {v12, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    .line 93
    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 94
    .line 95
    invoke-virtual {v12, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v12, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    new-instance v12, Lcom/mycompany/app/view/MyButtonText;

    .line 105
    .line 106
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 110
    .line 111
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 112
    .line 113
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 114
    .line 115
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 116
    .line 117
    invoke-virtual {v12, v13, v14, v15, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 118
    .line 119
    .line 120
    const/16 v6, 0x11

    .line 121
    .line 122
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    .line 124
    .line 125
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 126
    .line 127
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 131
    .line 132
    .line 133
    sget v13, Lnet/kaki87/soul2/testing/R$string;->refresh:I

    .line 134
    .line 135
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v12, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12, v3}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 142
    .line 143
    .line 144
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 145
    .line 146
    invoke-virtual {v12, v13}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 147
    .line 148
    .line 149
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 150
    .line 151
    invoke-direct {v13, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    .line 153
    .line 154
    const/high16 v14, 0x41e00000    # 28.0f

    .line 155
    .line 156
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    float-to-int v14, v14

    .line 161
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 162
    .line 163
    invoke-virtual {v13, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v13, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    invoke-direct {v13, v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    .line 176
    .line 177
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 178
    .line 179
    int-to-float v5, v5

    .line 180
    invoke-virtual {v13, v5, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 181
    .line 182
    .line 183
    const/high16 v5, 0x41800000    # 16.0f

    .line 184
    .line 185
    invoke-virtual {v13, v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 186
    .line 187
    .line 188
    sget v5, Lnet/kaki87/soul2/testing/R$string;->crash_guide_2:I

    .line 189
    .line 190
    invoke-static {v13, v5, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    const/high16 v7, 0x42900000    # 72.0f

    .line 195
    .line 196
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    float-to-int v7, v7

    .line 201
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 202
    .line 203
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .line 211
    .line 212
    new-instance v5, Lcom/mycompany/app/view/MyButtonText;

    .line 213
    .line 214
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 215
    .line 216
    .line 217
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 218
    .line 219
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 220
    .line 221
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 222
    .line 223
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 224
    .line 225
    invoke-virtual {v5, v7, v14, v15, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 229
    .line 230
    .line 231
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 232
    .line 233
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 237
    .line 238
    .line 239
    sget v7, Lnet/kaki87/soul2/testing/R$string;->mem_save:I

    .line 240
    .line 241
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 248
    .line 249
    .line 250
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 251
    .line 252
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 253
    .line 254
    .line 255
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 256
    .line 257
    const/4 v9, -0x1

    .line 258
    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 262
    .line 263
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 271
    .line 272
    new-instance v7, Lcom/mycompany/app/view/MyButtonText;

    .line 273
    .line 274
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 275
    .line 276
    .line 277
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 278
    .line 279
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 280
    .line 281
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 282
    .line 283
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 284
    .line 285
    invoke-virtual {v7, v9, v14, v15, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 289
    .line 290
    .line 291
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 292
    .line 293
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v7, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 297
    .line 298
    .line 299
    sget v9, Lnet/kaki87/soul2/testing/R$string;->clean_mode:I

    .line 300
    .line 301
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v3}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 308
    .line 309
    .line 310
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 311
    .line 312
    invoke-virtual {v7, v9}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 313
    .line 314
    .line 315
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 316
    .line 317
    const/4 v10, -0x2

    .line 318
    const/4 v14, -0x1

    .line 319
    invoke-direct {v9, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 320
    .line 321
    .line 322
    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 323
    .line 324
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    .line 332
    .line 333
    new-instance v9, Lcom/mycompany/app/view/MyButtonText;

    .line 334
    .line 335
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 336
    .line 337
    .line 338
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 339
    .line 340
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 341
    .line 342
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 343
    .line 344
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 345
    .line 346
    invoke-virtual {v9, v1, v10, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 350
    .line 351
    .line 352
    sget v1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 353
    .line 354
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v9, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 358
    .line 359
    .line 360
    sget v1, Lnet/kaki87/soul2/testing/R$string;->clear_data:I

    .line 361
    .line 362
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v9, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9, v3}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 369
    .line 370
    .line 371
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 372
    .line 373
    invoke-virtual {v9, v1}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 374
    .line 375
    .line 376
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 377
    .line 378
    const/4 v10, -0x2

    .line 379
    const/4 v14, -0x1

    .line 380
    invoke-direct {v1, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 381
    .line 382
    .line 383
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 384
    .line 385
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    .line 393
    .line 394
    iput-object v4, v0, Lcom/mycompany/app/web/WebCrashView;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 395
    .line 396
    iput-object v8, v0, Lcom/mycompany/app/web/WebCrashView;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 397
    .line 398
    iput-object v12, v0, Lcom/mycompany/app/web/WebCrashView;->h:Lcom/mycompany/app/view/MyButtonText;

    .line 399
    .line 400
    iput-object v13, v0, Lcom/mycompany/app/web/WebCrashView;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 401
    .line 402
    iput-object v5, v0, Lcom/mycompany/app/web/WebCrashView;->j:Lcom/mycompany/app/view/MyButtonText;

    .line 403
    .line 404
    iput-object v7, v0, Lcom/mycompany/app/web/WebCrashView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 405
    .line 406
    iput-object v9, v0, Lcom/mycompany/app/web/WebCrashView;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 407
    .line 408
    const/4 v14, -0x1

    .line 409
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v0, Lcom/mycompany/app/web/WebCrashView;->h:Lcom/mycompany/app/view/MyButtonText;

    .line 413
    .line 414
    const v2, -0xc6b655

    .line 415
    .line 416
    .line 417
    const v3, -0xa39440

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebCrashView;->a()V

    .line 424
    .line 425
    .line 426
    new-instance v1, Lcom/mycompany/app/web/WebCrashView$1;

    .line 427
    .line 428
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    .line 433
    .line 434
    iget-object v1, v0, Lcom/mycompany/app/web/WebCrashView;->h:Lcom/mycompany/app/view/MyButtonText;

    .line 435
    .line 436
    new-instance v2, Lcom/mycompany/app/web/WebCrashView$2;

    .line 437
    .line 438
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebCrashView$2;-><init>(Lcom/mycompany/app/web/WebCrashView;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    .line 443
    .line 444
    iget-object v1, v0, Lcom/mycompany/app/web/WebCrashView;->j:Lcom/mycompany/app/view/MyButtonText;

    .line 445
    .line 446
    new-instance v2, Lcom/mycompany/app/web/WebCrashView$3;

    .line 447
    .line 448
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebCrashView$3;-><init>(Lcom/mycompany/app/web/WebCrashView;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    .line 453
    .line 454
    iget-object v1, v0, Lcom/mycompany/app/web/WebCrashView;->k:Lcom/mycompany/app/view/MyButtonText;

    .line 455
    .line 456
    new-instance v2, Lcom/mycompany/app/web/WebCrashView$4;

    .line 457
    .line 458
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebCrashView$4;-><init>(Lcom/mycompany/app/web/WebCrashView;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    .line 463
    .line 464
    iget-object v1, v0, Lcom/mycompany/app/web/WebCrashView;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 465
    .line 466
    new-instance v2, Lcom/mycompany/app/web/WebCrashView$5;

    .line 467
    .line 468
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebCrashView$5;-><init>(Lcom/mycompany/app/web/WebCrashView;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    .line 473
    .line 474
    return-void
.end method
