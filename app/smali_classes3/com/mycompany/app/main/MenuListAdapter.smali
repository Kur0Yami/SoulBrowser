.class public Lcom/mycompany/app/main/MenuListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MenuListAdapter$ListHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/MenuListAdapter$ListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:[I

.field public e:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

.field public f:I


# direct methods
.method public constructor <init>([ILcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MenuListAdapter;->d:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MenuListAdapter;->e:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MenuListAdapter;->f:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MenuListAdapter;->d:[I

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
    array-length v0, v0

    .line 13
    return v0
.end method

.method public final e(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MenuListAdapter;->d:[I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    if-lt p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    aget p1, v0, p1

    .line 12
    .line 13
    int-to-long v0, p1

    .line 14
    return-wide v0

    .line 15
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    return-wide v0
.end method

.method public final f(I)I
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    :cond_0
    rem-int v1, p1, v0

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    if-lez p1, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 15
    .line 16
    rem-int/2addr v1, v0

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuListAdapter;->d()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    if-ge p1, v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/main/MenuListAdapter;->d:[I

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    if-ltz p1, :cond_4

    .line 35
    .line 36
    array-length v2, v1

    .line 37
    if-lt p1, v2, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    aget p1, v1, p1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    :goto_1
    const/4 p1, -0x1

    .line 44
    :goto_2
    const/16 v1, 0x44

    .line 45
    .line 46
    if-ne p1, v1, :cond_5

    .line 47
    .line 48
    or-int/lit8 p1, v0, 0x8

    .line 49
    .line 50
    return p1

    .line 51
    :cond_5
    return v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MenuListAdapter;->d:[I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-ltz p2, :cond_2

    .line 14
    .line 15
    array-length v3, v1

    .line 16
    if-lt p2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    aget p2, v1, p2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    move p2, v2

    .line 23
    :goto_1
    const/16 v1, 0x8

    .line 24
    .line 25
    if-ltz p2, :cond_7

    .line 26
    .line 27
    const/16 v3, 0x4b

    .line 28
    .line 29
    if-ge p2, v3, :cond_7

    .line 30
    .line 31
    if-nez p2, :cond_3

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_3
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    const/16 v0, 0x44

    .line 40
    .line 41
    if-ne p2, v0, :cond_5

    .line 42
    .line 43
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    iget-object p2, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->u:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    const v0, -0xdededf

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    iget-object p2, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->u:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 59
    .line 60
    .line 61
    :goto_2
    iget-object p2, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->v:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    iget-object v0, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->v:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->u:Landroid/widget/FrameLayout;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->u:Landroid/widget/FrameLayout;

    .line 88
    .line 89
    new-instance v1, Lcom/mycompany/app/main/MenuListAdapter$1;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MenuListAdapter$1;-><init>(Lcom/mycompany/app/main/MenuListAdapter;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->u:Landroid/widget/FrameLayout;

    .line 98
    .line 99
    new-instance v1, Lcom/mycompany/app/main/MenuListAdapter$2;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MenuListAdapter$2;-><init>(Lcom/mycompany/app/main/MenuListAdapter;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3, v3}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget-object v1, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->v:Landroid/view/View;

    .line 112
    .line 113
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->v:Landroid/view/View;

    .line 121
    .line 122
    const/high16 v1, 0x3f800000    # 1.0f

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->l2(I)I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    .line 135
    .line 136
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 137
    .line 138
    if-eqz p2, :cond_6

    .line 139
    .line 140
    iget-object p2, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->u:Landroid/widget/FrameLayout;

    .line 141
    .line 142
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 143
    .line 144
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    const p2, -0x50506

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_6
    iget-object p2, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->u:Landroid/widget/FrameLayout;

    .line 157
    .line 158
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 159
    .line 160
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    const/high16 p2, -0x1000000

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_7
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

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
    new-instance v1, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    and-int/lit8 v2, p2, 0x4

    .line 15
    .line 16
    const/4 v3, -0x2

    .line 17
    const/high16 v4, 0x42500000    # 52.0f

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x2

    .line 21
    const/16 v7, 0x8

    .line 22
    .line 23
    if-ne v2, v5, :cond_2

    .line 24
    .line 25
    and-int/lit8 v8, p2, 0x8

    .line 26
    .line 27
    if-ne v8, v7, :cond_1

    .line 28
    .line 29
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 30
    .line 31
    mul-int/2addr v8, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    float-to-int v8, v8

    .line 38
    :goto_0
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 39
    .line 40
    add-int/2addr v8, v9

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v8, v3

    .line 43
    :goto_1
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    const/4 v10, -0x1

    .line 46
    invoke-direct {v9, v10, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    new-instance v8, Landroid/widget/FrameLayout;

    .line 53
    .line 54
    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    sget v9, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 58
    .line 59
    if-nez v9, :cond_3

    .line 60
    .line 61
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    invoke-virtual {v8, v11, v11, v9, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 65
    .line 66
    .line 67
    :cond_3
    and-int/lit8 v9, p2, 0x8

    .line 68
    .line 69
    if-ne v9, v7, :cond_4

    .line 70
    .line 71
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 72
    .line 73
    mul-int/2addr v7, v6

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-static {p1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    float-to-int v7, v7

    .line 80
    :goto_2
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    invoke-direct {v9, v10, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    and-int/2addr p2, v6

    .line 86
    const/4 v7, 0x1

    .line 87
    if-ne p2, v6, :cond_5

    .line 88
    .line 89
    new-instance p2, Lcom/mycompany/app/main/MenuListAdapter$3;

    .line 90
    .line 91
    invoke-direct {p2}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v7}, Landroid/view/View;->setClipToOutline(Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    if-ne v2, v5, :cond_6

    .line 102
    .line 103
    new-instance p2, Lcom/mycompany/app/main/MenuListAdapter$4;

    .line 104
    .line 105
    invoke-direct {p2}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v7}, Landroid/view/View;->setClipToOutline(Z)V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_3
    invoke-virtual {v1, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    new-instance p2, Landroid/view/View;

    .line 118
    .line 119
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    const/high16 v2, 0x41a00000    # 20.0f

    .line 123
    .line 124
    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    float-to-int v2, v2

    .line 129
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .line 131
    invoke-direct {v5, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 132
    .line 133
    .line 134
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 135
    .line 136
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 137
    .line 138
    sget v6, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 139
    .line 140
    if-ne v6, v7, :cond_7

    .line 141
    .line 142
    const/high16 v2, 0x41b00000    # 22.0f

    .line 143
    .line 144
    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    float-to-int v2, v2

    .line 149
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 154
    .line 155
    .line 156
    :goto_4
    invoke-virtual {v8, p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    invoke-direct {v2, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    .line 163
    .line 164
    const/16 v0, 0x10

    .line 165
    .line 166
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 170
    .line 171
    .line 172
    const/high16 v0, 0x41800000    # 16.0f

    .line 173
    .line 174
    invoke-virtual {v2, v7, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 175
    .line 176
    .line 177
    sget v0, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 178
    .line 179
    if-ne v0, v7, :cond_8

    .line 180
    .line 181
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 182
    .line 183
    invoke-direct {v0, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 184
    .line 185
    .line 186
    const/high16 v3, 0x42800000    # 64.0f

    .line 187
    .line 188
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    float-to-int p1, p1

    .line 193
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 194
    .line 195
    .line 196
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 203
    .line 204
    invoke-direct {v0, v3, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 205
    .line 206
    .line 207
    invoke-static {p1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    float-to-int p1, p1

    .line 212
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 213
    .line 214
    .line 215
    :goto_5
    invoke-virtual {v8, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    new-instance p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;

    .line 219
    .line 220
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 221
    .line 222
    .line 223
    iput-object v8, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->u:Landroid/widget/FrameLayout;

    .line 224
    .line 225
    iput-object p2, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->v:Landroid/view/View;

    .line 226
    .line 227
    iput-object v2, p1, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 228
    .line 229
    return-object p1
.end method
