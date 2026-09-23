.class public Lcom/mycompany/app/main/AddrIconAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/AddrIconAdapter$AddrListener;,
        Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:Landroid/view/View;

.field public f:Lcom/mycompany/app/main/AddrIconAdapter$AddrListener;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public i:Z

.field public j:I


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/AddrIconAdapter;->j:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

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

.method public final f(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/AddrIconAdapter;->v(I)Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

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
    return v0

    .line 9
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 10
    .line 11
    const/16 v1, 0x4d2

    .line 12
    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    return v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    check-cast p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/AddrIconAdapter;->v(I)Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget v1, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 16
    .line 17
    const/16 v2, 0x4d2

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    move v1, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v1, v4

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/mycompany/app/main/AddrIconAdapter;->e:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0}, Lcom/mycompany/app/main/AddrIconAdapter;->d()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_3

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    if-ne v1, v3, :cond_4

    .line 41
    .line 42
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 43
    .line 44
    sub-int/2addr v5, v3

    .line 45
    mul-int/2addr v5, v1

    .line 46
    sub-int v1, v2, v5

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_4
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 50
    .line 51
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eq v2, v1, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 66
    .line 67
    .line 68
    :cond_5
    iget-object v1, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 69
    .line 70
    if-nez v1, :cond_6

    .line 71
    .line 72
    const/4 p1, 0x4

    .line 73
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v4}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 93
    .line 94
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 98
    .line 99
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->P1(II)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 107
    .line 108
    iget p2, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 109
    .line 110
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->N(II)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 115
    .line 116
    .line 117
    iget-boolean p2, p0, Lcom/mycompany/app/main/AddrIconAdapter;->i:Z

    .line 118
    .line 119
    if-eqz p2, :cond_7

    .line 120
    .line 121
    iget-object p2, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 122
    .line 123
    invoke-virtual {p2, v3}, Lcom/mycompany/app/view/MyIconView;->setSetting(Z)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 127
    .line 128
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->m0:Z

    .line 129
    .line 130
    invoke-virtual {p2, v0, v4}, Lcom/mycompany/app/view/MyIconView;->x(ZZ)Z

    .line 131
    .line 132
    .line 133
    :cond_7
    iget-object p2, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 134
    .line 135
    new-instance v0, Lcom/mycompany/app/main/AddrIconAdapter$1;

    .line 136
    .line 137
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/AddrIconAdapter$1;-><init>(Lcom/mycompany/app/main/AddrIconAdapter;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 144
    .line 145
    new-instance p2, Lcom/mycompany/app/main/AddrIconAdapter$2;

    .line 146
    .line 147
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/AddrIconAdapter$2;-><init>(Lcom/mycompany/app/main/AddrIconAdapter;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/main/AddrIconAdapter;->d()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, -0x1

    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    move p1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-ne p2, v3, :cond_2

    .line 24
    .line 25
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 26
    .line 27
    sub-int/2addr v1, v3

    .line 28
    mul-int/2addr v1, v4

    .line 29
    sub-int/2addr p1, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 32
    .line 33
    :goto_0
    if-ne p2, v3, :cond_3

    .line 34
    .line 35
    new-instance p2, Landroid/view/View;

    .line 36
    .line 37
    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    invoke-direct {v0, p1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;

    .line 49
    .line 50
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_3
    new-instance p2, Lcom/mycompany/app/view/MyIconView;

    .line 55
    .line 56
    invoke-direct {p2, v0}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p2, v0, v3}, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 69
    .line 70
    invoke-direct {v0, p1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;

    .line 77
    .line 78
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iput-object p2, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 82
    .line 83
    return-object p1
.end method

.method public final v(I)Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

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

.method public final w(ZZ)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x4d2

    .line 14
    .line 15
    iput v2, v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string v0, "0,1,2"

    .line 23
    .line 24
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 44
    .line 45
    :goto_0
    const/4 v1, 0x3

    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    array-length v3, v0

    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    array-length v3, v0

    .line 53
    move v4, v2

    .line 54
    :goto_1
    if-ge v4, v3, :cond_1

    .line 55
    .line 56
    new-instance v5, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    aget v6, v0, v4

    .line 62
    .line 63
    iput v6, v5, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 64
    .line 65
    iget-object v6, p0, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    if-nez p1, :cond_5

    .line 74
    .line 75
    move p1, v2

    .line 76
    :goto_2
    if-ge p1, v1, :cond_5

    .line 77
    .line 78
    move v4, v2

    .line 79
    :goto_3
    if-ge v4, v3, :cond_3

    .line 80
    .line 81
    aget v5, v0, v4

    .line 82
    .line 83
    if-ne v5, p1, :cond_2

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    new-instance v4, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 90
    .line 91
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    iput p1, v4, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 95
    .line 96
    iget-object v5, p0, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    if-nez p1, :cond_5

    .line 105
    .line 106
    :goto_5
    if-ge v2, v1, :cond_5

    .line 107
    .line 108
    new-instance p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    iput v2, p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 114
    .line 115
    iget-object v0, p0, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_5
    if-eqz p2, :cond_6

    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 126
    .line 127
    .line 128
    :cond_6
    return-void
.end method
