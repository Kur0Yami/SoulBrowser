.class Lcom/mycompany/app/web/WebViewActivity$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$41;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$41;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l1:Lcom/mycompany/app/view/MyFadeRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_a

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->q1:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    const/high16 v2, 0x3f000000    # 0.5f

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->r1:Lcom/mycompany/app/view/MyButtonImage;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->m1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$string;->notice_tos:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget v5, Lnet/kaki87/soul2/testing/R$string;->notice_privacy:I

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 46
    .line 47
    sget v7, Lnet/kaki87/soul2/testing/R$string;->notice:I

    .line 48
    .line 49
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    new-array v8, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v1, v8, v4

    .line 56
    .line 57
    aput-object v5, v8, v3

    .line 58
    .line 59
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-gez v8, :cond_2

    .line 72
    .line 73
    move v8, v4

    .line 74
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v1, v8

    .line 79
    if-le v1, v7, :cond_3

    .line 80
    .line 81
    move v1, v7

    .line 82
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-gez v9, :cond_4

    .line 87
    .line 88
    move v9, v4

    .line 89
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    add-int/2addr v5, v9

    .line 94
    if-le v5, v7, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    move v7, v5

    .line 98
    :goto_0
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$52;

    .line 99
    .line 100
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebViewActivity$52;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 101
    .line 102
    .line 103
    new-instance v10, Lcom/mycompany/app/web/WebViewActivity$53;

    .line 104
    .line 105
    invoke-direct {v10, v0}, Lcom/mycompany/app/web/WebViewActivity$53;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 106
    .line 107
    .line 108
    new-instance v11, Landroid/text/SpannableStringBuilder;

    .line 109
    .line 110
    invoke-direct {v11, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    const/16 v6, 0x21

    .line 114
    .line 115
    invoke-virtual {v11, v5, v8, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v10, v9, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->m1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->m1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->m1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 141
    .line 142
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$42;

    .line 143
    .line 144
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebViewActivity$42;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l1:Lcom/mycompany/app/view/MyFadeRelative;

    .line 151
    .line 152
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$43;

    .line 153
    .line 154
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l1:Lcom/mycompany/app/view/MyFadeRelative;

    .line 161
    .line 162
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$44;

    .line 163
    .line 164
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebViewActivity$44;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyFadeRelative;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l1:Lcom/mycompany/app/view/MyFadeRelative;

    .line 171
    .line 172
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$45;

    .line 173
    .line 174
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebViewActivity$45;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyFadeRelative;->setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v4}, Lcom/mycompany/app/web/WebViewActivity;->n8(I)V

    .line 181
    .line 182
    .line 183
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    .line 185
    const/16 v4, 0x1f

    .line 186
    .line 187
    if-ge v1, v4, :cond_6

    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o1:Landroidx/viewpager2/widget/ViewPager2;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 192
    .line 193
    .line 194
    :cond_6
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 195
    .line 196
    if-eqz v1, :cond_7

    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o1:Landroidx/viewpager2/widget/ViewPager2;

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    .line 201
    .line 202
    .line 203
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o1:Landroidx/viewpager2/widget/ViewPager2;

    .line 204
    .line 205
    if-nez v1, :cond_8

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_8
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$51;

    .line 209
    .line 210
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$51;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 211
    .line 212
    .line 213
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->p1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 214
    .line 215
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$ViewPagerAdapter;

    .line 216
    .line 217
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$ViewPagerAdapter;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o1:Landroidx/viewpager2/widget/ViewPager2;

    .line 224
    .line 225
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->p1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 228
    .line 229
    .line 230
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->q1:Lcom/mycompany/app/view/MyButtonImage;

    .line 231
    .line 232
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$46;

    .line 233
    .line 234
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$46;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->r1:Lcom/mycompany/app/view/MyButtonImage;

    .line 241
    .line 242
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$47;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$47;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 251
    .line 252
    if-nez v1, :cond_9

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_9
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$48;

    .line 256
    .line 257
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$48;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    .line 262
    .line 263
    :cond_a
    :goto_3
    return-void
.end method
