.class public Lcom/mycompany/app/view/MyPopupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;,
        Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/ArrayList;

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

# Optional long-press listener (same MainLinkListener contract as j)
.field public k:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupAdapter;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final e(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyPopupAdapter;->v(I)Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

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
    iget p1, p1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 11
    .line 12
    int-to-long v0, p1

    .line 13
    return-wide v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 1
    check-cast p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyPopupAdapter;->e:Z

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyPopupAdapter;->v(I)Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    iget-object v2, p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->d:Ljava/lang/String;

    .line 18
    .line 19
    iget-boolean v3, p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->g:Z

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    const v3, 0x3e4ccccd    # 0.2f

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v3, 0x1

    .line 35
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 36
    .line 37
    .line 38
    const/high16 v3, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$1;

    .line 47
    .line 48
    invoke-direct {v3, p0}, Lcom/mycompany/app/view/MyPopupAdapter$1;-><init>(Lcom/mycompany/app/view/MyPopupAdapter;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$2;

    invoke-direct {v3, p0}, Lcom/mycompany/app/view/MyPopupAdapter$2;-><init>(Lcom/mycompany/app/view/MyPopupAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->u:Landroid/view/View;

    .line 55
    .line 56
    const/16 v5, 0x8

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    iget v6, p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->b:I

    .line 61
    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->u:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object v3, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 75
    .line 76
    invoke-virtual {v3, v6, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_2
    iget-object v3, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->w:Landroid/view/View;

    .line 89
    .line 90
    if-eqz v3, :cond_c

    .line 91
    .line 92
    iget-boolean v6, p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->e:Z

    .line 93
    .line 94
    iget-boolean v7, p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->f:Z

    .line 95
    .line 96
    if-eqz v7, :cond_8

    .line 97
    .line 98
    if-eqz v6, :cond_6

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_toggle_on_dark_24:I

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_toggle_on_black_24:I

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    if-eqz v0, :cond_7

    .line 109
    .line 110
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_toggle_off_dark_24:I

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_toggle_off_black_24:I

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_8
    if-eqz v6, :cond_a

    .line 117
    .line 118
    if-eqz v0, :cond_9

    .line 119
    .line 120
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_9
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_a
    move v6, v4

    .line 127
    :goto_3
    if-eqz v6, :cond_b

    .line 128
    .line 129
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    .line 131
    .line 132
    iget-object v3, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->w:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_b
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    :cond_c
    :goto_4
    iget p2, p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->c:I

    .line 142
    .line 143
    if-eqz p2, :cond_d

    .line 144
    .line 145
    iget-object v2, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-nez p2, :cond_e

    .line 156
    .line 157
    iget-object p2, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_e
    iget-object p2, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    const/4 v2, 0x0

    .line 166
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    :goto_5
    if-eqz v0, :cond_f

    .line 170
    .line 171
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 172
    .line 173
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    .line 178
    const p2, -0x50506

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_f
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 186
    .line 187
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 191
    .line 192
    const/high16 p2, -0x1000000

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyPopupAdapter;->h:Z

    .line 10
    .line 11
    iget v1, p0, Lcom/mycompany/app/view/MyPopupAdapter;->i:I

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyPopupAdapter;->g:Z

    .line 14
    .line 15
    new-instance v3, Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 24
    .line 25
    .line 26
    const/16 v4, 0x10

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    iget v6, p0, Lcom/mycompany/app/view/MyPopupAdapter;->f:I

    .line 40
    .line 41
    const/4 v7, -0x1

    .line 42
    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    const/16 v4, 0x8

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    new-instance v6, Landroid/view/View;

    .line 53
    .line 54
    invoke-direct {v6, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v6, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move-object v6, p2

    .line 65
    :goto_0
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-direct {v8, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    .line 69
    .line 70
    const/4 v9, 0x2

    .line 71
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 72
    .line 73
    .line 74
    const/4 v9, 0x1

    .line 75
    const/high16 v10, 0x41800000    # 16.0f

    .line 76
    .line 77
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 78
    .line 79
    .line 80
    const/4 v9, -0x2

    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v3, v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    :goto_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    .line 92
    invoke-direct {v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .line 94
    .line 95
    const/high16 v5, 0x3f800000    # 1.0f

    .line 96
    .line 97
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 98
    .line 99
    invoke-virtual {v3, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    if-eqz v0, :cond_4

    .line 103
    .line 104
    new-instance p2, Landroid/view/View;

    .line 105
    .line 106
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, p2, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 113
    .line 114
    .line 115
    :cond_4
    new-instance p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;

    .line 116
    .line 117
    invoke-direct {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    iput-object v6, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->u:Landroid/view/View;

    .line 121
    .line 122
    iput-object v8, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    iput-object p2, p1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;->w:Landroid/view/View;

    .line 125
    .line 126
    return-object p1
.end method

.method public final v(I)Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupAdapter;->d:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupAdapter;->d:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

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
