.class public Lcom/mycompany/app/main/MainAreaAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;,
        Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;,
        Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/ArrayList;

.field public e:Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;

.field public f:I

.field public g:I


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainAreaAdapter;->g:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainAreaAdapter;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final e(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainAreaAdapter;->v(I)Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->f:I

    .line 11
    .line 12
    int-to-long v0, p1

    .line 13
    return-wide v0
.end method

.method public final f(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainAreaAdapter;->v(I)Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 10
    .line 11
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/MainAreaAdapter;->v(I)Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    iget v1, p2, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->c:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    new-instance v1, Lcom/mycompany/app/main/MainAreaAdapter$3;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v4, 0x2

    .line 40
    if-ne v1, v4, :cond_3

    .line 41
    .line 42
    new-instance v1, Lcom/mycompany/app/main/MainAreaAdapter$4;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v4, 0x3

    .line 55
    if-ne v1, v4, :cond_4

    .line 56
    .line 57
    new-instance v1, Lcom/mycompany/app/main/MainAreaAdapter$5;

    .line 58
    .line 59
    invoke-direct {v1}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget v1, p2, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->d:I

    .line 73
    .line 74
    iget v2, p2, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->e:I

    .line 75
    .line 76
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 77
    .line 78
    .line 79
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->J:Z

    .line 80
    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    iget v1, p2, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->f:I

    .line 84
    .line 85
    iget v2, p0, Lcom/mycompany/app/main/MainAreaAdapter;->f:I

    .line 86
    .line 87
    if-ne v1, v2, :cond_6

    .line 88
    .line 89
    instance-of v1, v0, Landroid/widget/FrameLayout;

    .line 90
    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    iget-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 94
    .line 95
    if-nez v1, :cond_5

    .line 96
    .line 97
    new-instance v1, Lcom/mycompany/app/view/MyCircleView;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyCircleView;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 107
    .line 108
    const v2, -0xbbcca

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCircleView;->setColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const/high16 v2, 0x40c00000    # 6.0f

    .line 121
    .line 122
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    mul-int/lit8 v2, v1, 0x2

    .line 131
    .line 132
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 133
    .line 134
    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 138
    .line 139
    .line 140
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 141
    .line 142
    move-object v1, v0

    .line 143
    check-cast v1, Landroid/widget/FrameLayout;

    .line 144
    .line 145
    iget-object v2, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 146
    .line 147
    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    iget-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    iget-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 157
    .line 158
    if-eqz v1, :cond_7

    .line 159
    .line 160
    const/16 v2, 0x8

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    :cond_7
    :goto_1
    iget-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 171
    .line 172
    iget-object v2, p2, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    new-instance v2, Lcom/mycompany/app/main/MainAreaAdapter$1;

    .line 180
    .line 181
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainAreaAdapter$1;-><init>(Lcom/mycompany/app/main/MainAreaAdapter;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyButtonCheck;

    .line 188
    .line 189
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyButtonCheck;

    .line 193
    .line 194
    iget-boolean p2, p2, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->i:Z

    .line 195
    .line 196
    invoke-virtual {v1, p2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 197
    .line 198
    .line 199
    iget-object p2, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyButtonCheck;

    .line 200
    .line 201
    new-instance v1, Lcom/mycompany/app/main/MainAreaAdapter$2;

    .line 202
    .line 203
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainAreaAdapter$2;-><init>(Lcom/mycompany/app/main/MainAreaAdapter;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 210
    .line 211
    if-eqz p2, :cond_8

    .line 212
    .line 213
    iget-object p2, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    .line 215
    const v1, -0x50506

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    .line 220
    .line 221
    iget-object p2, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 222
    .line 223
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 224
    .line 225
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 226
    .line 227
    .line 228
    const p2, -0xdededf

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 232
    .line 233
    .line 234
    iget-object p2, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyButtonCheck;

    .line 235
    .line 236
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 237
    .line 238
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 239
    .line 240
    invoke-virtual {p2, v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyButtonCheck;

    .line 244
    .line 245
    const p2, -0xc0c0c1

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_8
    iget-object p2, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 253
    .line 254
    const/high16 v1, -0x1000000

    .line 255
    .line 256
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    .line 258
    .line 259
    iget-object p2, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 260
    .line 261
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 262
    .line 263
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 264
    .line 265
    .line 266
    const/4 p2, -0x1

    .line 267
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 268
    .line 269
    .line 270
    iget-object p2, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyButtonCheck;

    .line 271
    .line 272
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 273
    .line 274
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 275
    .line 276
    invoke-virtual {p2, v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyButtonCheck;

    .line 280
    .line 281
    const p2, -0x1f1f20

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 285
    .line 286
    .line 287
    :cond_9
    :goto_2
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    new-instance p2, Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 21
    .line 22
    invoke-direct {p1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;

    .line 29
    .line 30
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    const/4 v4, -0x2

    .line 42
    invoke-direct {v3, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-direct {v3, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    .line 52
    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    const/high16 v5, 0x42800000    # 64.0f

    .line 56
    .line 57
    invoke-static {p1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    :goto_0
    float-to-int v5, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/high16 v5, 0x41c00000    # 24.0f

    .line 64
    .line 65
    invoke-static {p1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    goto :goto_0

    .line 70
    :goto_1
    const/high16 v6, 0x42900000    # 72.0f

    .line 71
    .line 72
    invoke-static {p1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    float-to-int v6, v6

    .line 77
    const/4 v7, 0x0

    .line 78
    invoke-virtual {v3, v5, v7, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 79
    .line 80
    .line 81
    const/16 v5, 0x10

    .line 82
    .line 83
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 88
    .line 89
    .line 90
    const/high16 v7, 0x41800000    # 16.0f

    .line 91
    .line 92
    invoke-virtual {v3, v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 93
    .line 94
    .line 95
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 96
    .line 97
    invoke-virtual {v1, v3, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 98
    .line 99
    .line 100
    if-nez p2, :cond_4

    .line 101
    .line 102
    new-instance p2, Landroid/widget/FrameLayout;

    .line 103
    .line 104
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    .line 109
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 110
    .line 111
    invoke-direct {v7, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 112
    .line 113
    .line 114
    const/high16 v8, 0x41600000    # 14.0f

    .line 115
    .line 116
    invoke-static {p1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    float-to-int v8, v8

    .line 121
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    invoke-direct {v7, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    .line 131
    .line 132
    const/high16 v0, 0x40c00000    # 6.0f

    .line 133
    .line 134
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    float-to-int v0, v0

    .line 139
    const/high16 v8, 0x40000000    # 2.0f

    .line 140
    .line 141
    invoke-static {p1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    float-to-int v8, v8

    .line 146
    invoke-virtual {v7, v0, v8, v0, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 147
    .line 148
    .line 149
    const/high16 v0, 0x41400000    # 12.0f

    .line 150
    .line 151
    invoke-virtual {v7, v6, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 152
    .line 153
    .line 154
    const-string v0, "TAG"

    .line 155
    .line 156
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    .line 161
    .line 162
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 163
    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    const v0, -0xc0c0c1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_3
    const/high16 v0, -0x1000000

    .line 174
    .line 175
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    .line 177
    .line 178
    :goto_2
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->n7(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 182
    .line 183
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 184
    .line 185
    .line 186
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 187
    .line 188
    invoke-virtual {p2, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    new-instance p2, Lcom/mycompany/app/view/MyButtonCheck;

    .line 192
    .line 193
    invoke-direct {p2, p1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 197
    .line 198
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 199
    .line 200
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 201
    .line 202
    .line 203
    const v0, 0x800005

    .line 204
    .line 205
    .line 206
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 207
    .line 208
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .line 215
    .line 216
    new-instance p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;

    .line 217
    .line 218
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    iput-object v3, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 222
    .line 223
    iput-object p2, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyButtonCheck;

    .line 224
    .line 225
    return-object p1
.end method

.method public final v(I)Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainAreaAdapter;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainAreaAdapter;->d:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final w()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainAreaAdapter;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :cond_1
    :goto_0
    if-ge v3, v1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    check-cast v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 27
    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget v5, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    if-ne v5, v6, :cond_1

    .line 35
    .line 36
    iget v0, v4, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->f:I

    .line 37
    .line 38
    return v0

    .line 39
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :cond_4
    :goto_1
    if-ge v2, v1, :cond_6

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    check-cast v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 52
    .line 53
    if-nez v3, :cond_5

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_5
    iget v4, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 57
    .line 58
    if-nez v4, :cond_4

    .line 59
    .line 60
    iget v0, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->f:I

    .line 61
    .line 62
    return v0

    .line 63
    :cond_6
    :goto_2
    const/4 v0, -0x1

    .line 64
    return v0
.end method
