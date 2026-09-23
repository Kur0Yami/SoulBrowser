.class public Lcom/mycompany/app/view/MyEngineAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;,
        Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/ArrayList;

.field public e:Z

.field public f:I

.field public g:I

.field public h:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineAdapter;->d:Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyEngineAdapter;->v(I)Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;

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
    iget p1, p1, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->a:I

    .line 11
    .line 12
    int-to-long v0, p1

    .line 13
    return-wide v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    check-cast p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyEngineAdapter;->e:Z

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
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyEngineAdapter;->v(I)Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;

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
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/mycompany/app/view/MyEngineAdapter$1;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/mycompany/app/view/MyEngineAdapter$1;-><init>(Lcom/mycompany/app/view/MyEngineAdapter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p2, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->c:Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v5, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->u:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->u:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 48
    .line 49
    invoke-virtual {v2, v5, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget v2, p2, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->b:I

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    iget-object v5, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->u:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->u:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 70
    .line 71
    invoke-virtual {v2, v5, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->u:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 83
    .line 84
    .line 85
    :goto_1
    iget v2, p2, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->a:I

    .line 86
    .line 87
    sget v5, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 88
    .line 89
    if-ne v2, v5, :cond_5

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->w:Landroid/view/View;

    .line 94
    .line 95
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->w:Landroid/view/View;

    .line 102
    .line 103
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    :goto_2
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->w:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->w:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    :goto_3
    iget v2, p2, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->d:I

    .line 120
    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    iget-object p2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_6
    iget-object v2, p2, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->e:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_7

    .line 136
    .line 137
    iget-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    iget-object p2, p2, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->e:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_7
    iget-object p2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    const/4 v2, 0x0

    .line 148
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :goto_4
    if-eqz v0, :cond_8

    .line 152
    .line 153
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 154
    .line 155
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    const p2, -0x50506

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_8
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 168
    .line 169
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    const/high16 p2, -0x1000000

    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

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
    iget v0, p0, Lcom/mycompany/app/view/MyEngineAdapter;->g:I

    .line 10
    .line 11
    new-instance v1, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x10

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    const/4 v4, -0x1

    .line 36
    iget v5, p0, Lcom/mycompany/app/view/MyEngineAdapter;->f:I

    .line 37
    .line 38
    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroid/view/View;

    .line 45
    .line 46
    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    invoke-direct {v4, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x2

    .line 58
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 59
    .line 60
    .line 61
    const/4 p2, 0x1

    .line 62
    const/high16 v5, 0x41800000    # 16.0f

    .line 63
    .line 64
    invoke-virtual {v4, p2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    .line 69
    const/4 v5, -0x2

    .line 70
    invoke-direct {p2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    const/high16 v3, 0x3f800000    # 1.0f

    .line 74
    .line 75
    iput v3, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 76
    .line 77
    invoke-virtual {v1, v4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    new-instance p2, Landroid/view/View;

    .line 81
    .line 82
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    const/16 p1, 0x8

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p2, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;

    .line 94
    .line 95
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    iput-object v2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->u:Landroid/view/View;

    .line 99
    .line 100
    iput-object v4, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    iput-object p2, p1, Lcom/mycompany/app/view/MyEngineAdapter$ListHolder;->w:Landroid/view/View;

    .line 103
    .line 104
    return-object p1
.end method

.method public final v(I)Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineAdapter;->d:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineAdapter;->d:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;

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
