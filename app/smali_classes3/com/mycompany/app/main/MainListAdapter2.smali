.class public Lcom/mycompany/app/main/MainListAdapter2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainListAdapter2$List2Listener;,
        Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Landroid/content/Context;

.field public e:I

.field public f:Lcom/mycompany/app/view/MyRecyclerView;

.field public g:Ljava/util/List;

.field public h:[Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Lcom/mycompany/app/main/MainListLoader;

.field public q:Lcom/mycompany/app/main/MainListAdapter2$List2Listener;

.field public r:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

.field public s:Ljava/lang/String;

.field public t:Ljava/util/regex/Pattern;

.field public u:Z

.field public v:I


# virtual methods
.method public final A(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lt p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    return p1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 22
    return p1
.end method

.method public final B()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    iget v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    return v0
.end method

.method public final C(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 6
    .line 7
    if-lt p1, v1, :cond_1

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    if-lt p1, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    aget-boolean p1, v0, p1

    .line 17
    .line 18
    return p1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public final D()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 14
    .line 15
    sub-int/2addr v0, v3

    .line 16
    iget v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 17
    .line 18
    sub-int/2addr v0, v3

    .line 19
    if-ne v2, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_1
    return v1
.end method

.method public final E(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 32
    return p1
.end method

.method public final F(II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 9
    .line 10
    if-lt p1, v2, :cond_6

    .line 11
    .line 12
    if-ge p2, v2, :cond_1

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 21
    .line 22
    sub-int/2addr v0, v2

    .line 23
    if-ge p1, v0, :cond_6

    .line 24
    .line 25
    if-lt p2, v0, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainListAdapter2;->z(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-lez v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListAdapter2;->D()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    array-length v0, v0

    .line 61
    if-lez v0, :cond_5

    .line 62
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 69
    .line 70
    array-length v3, v3

    .line 71
    move v4, v1

    .line 72
    :goto_0
    if-ge v4, v3, :cond_4

    .line 73
    .line 74
    iget-object v5, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 75
    .line 76
    aget-boolean v5, v5, v4

    .line 77
    .line 78
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget-object v4, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 92
    .line 93
    aget-boolean p1, v4, p1

    .line 94
    .line 95
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    if-ge v1, v3, :cond_5

    .line 103
    .line 104
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    aput-boolean p2, p1, v1

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    return v2

    .line 122
    :cond_6
    :goto_2
    return v1
.end method

.method public final G(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    if-ltz p1, :cond_c

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 16
    .line 17
    if-eqz v0, :cond_c

    .line 18
    .line 19
    if-ltz p1, :cond_c

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    if-lt p1, v0, :cond_1

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 33
    .line 34
    if-eqz v0, :cond_c

    .line 35
    .line 36
    iget v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 42
    .line 43
    aget-boolean v1, v0, p1

    .line 44
    .line 45
    if-ne v1, p2, :cond_3

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_3
    aput-boolean p2, v0, p1

    .line 49
    .line 50
    if-eqz p2, :cond_4

    .line 51
    .line 52
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 53
    .line 54
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ge v0, v1, :cond_5

    .line 61
    .line 62
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    iput v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 70
    .line 71
    if-lez v0, :cond_5

    .line 72
    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    iput v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 76
    .line 77
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 78
    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    move-object v3, v1

    .line 89
    :goto_1
    if-ge v2, v0, :cond_b

    .line 90
    .line 91
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 92
    .line 93
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-nez v3, :cond_7

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-nez v4, :cond_8

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_8
    instance-of v5, v4, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 108
    .line 109
    if-nez v5, :cond_9

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_9
    check-cast v4, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 113
    .line 114
    iget v5, v4, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 115
    .line 116
    if-ne v5, p1, :cond_a

    .line 117
    .line 118
    move-object v1, v4

    .line 119
    goto :goto_3

    .line 120
    :cond_a
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_b
    :goto_3
    invoke-virtual {p0, v3, v1, p2}, Lcom/mycompany/app/main/MainListAdapter2;->v(Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;Z)V

    .line 124
    .line 125
    .line 126
    :cond_c
    :goto_4
    return-void
.end method

.method public final H(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->b([ZZ)V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 38
    .line 39
    sub-int/2addr v0, v2

    .line 40
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 41
    .line 42
    sub-int/2addr v0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, v1

    .line 45
    :goto_0
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 46
    .line 47
    if-ne v0, v2, :cond_3

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    iput v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :goto_1
    if-ge v1, v0, :cond_8

    .line 59
    .line 60
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-nez v2, :cond_5

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-nez v3, :cond_6

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_6
    instance-of v4, v3, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 77
    .line 78
    if-eqz v4, :cond_7

    .line 79
    .line 80
    check-cast v3, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 81
    .line 82
    invoke-virtual {p0, v2, v3, p1}, Lcom/mycompany/app/main/MainListAdapter2;->v(Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;Z)V

    .line 83
    .line 84
    .line 85
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_8
    :goto_3
    return-void
.end method

.method public final I(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/mycompany/app/main/MainListAdapter2;->l:I

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    if-ge v1, p1, :cond_a

    .line 16
    .line 17
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_2
    instance-of v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 35
    .line 36
    if-eqz v3, :cond_9

    .line 37
    .line 38
    check-cast v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 39
    .line 40
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    iget v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 46
    .line 47
    iget v4, p0, Lcom/mycompany/app/main/MainListAdapter2;->l:I

    .line 48
    .line 49
    if-ne v3, v4, :cond_4

    .line 50
    .line 51
    iget v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->e:I

    .line 52
    .line 53
    invoke-static {v3}, Lcom/mycompany/app/pref/PrefUtil;->b(I)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    const v4, -0xbbcca

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    iget-boolean v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->n:Z

    .line 69
    .line 70
    const/high16 v4, -0x1000000

    .line 71
    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 77
    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    const v4, -0x3e3e3f

    .line 81
    .line 82
    .line 83
    :cond_5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 90
    .line 91
    if-eqz v5, :cond_7

    .line 92
    .line 93
    const v4, -0x50506

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->r:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    .line 100
    .line 101
    if-eqz v3, :cond_9

    .line 102
    .line 103
    iget-boolean v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 104
    .line 105
    if-eqz v3, :cond_8

    .line 106
    .line 107
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 108
    .line 109
    const/4 v4, 0x4

    .line 110
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_8
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    :goto_2
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    iget v4, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 122
    .line 123
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    new-instance v3, Lcom/mycompany/app/main/MainListAdapter2$7;

    .line 133
    .line 134
    invoke-direct {v3, p0}, Lcom/mycompany/app/main/MainListAdapter2$7;-><init>(Lcom/mycompany/app/main/MainListAdapter2;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_a
    :goto_4
    return-void
.end method

.method public final J()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_6

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    instance-of v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 30
    .line 31
    if-eqz v3, :cond_5

    .line 32
    .line 33
    check-cast v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 34
    .line 35
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->w:Lcom/mycompany/app/view/MySelectView;

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->I:Z

    .line 41
    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    iget v2, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MySelectView;->c(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {v3}, Lcom/mycompany/app/view/MySelectView;->b()V

    .line 51
    .line 52
    .line 53
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_6
    :goto_2
    return-void
.end method

.method public final K(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_6

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    instance-of v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 30
    .line 31
    if-eqz v3, :cond_5

    .line 32
    .line 33
    check-cast v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 34
    .line 35
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->w:Lcom/mycompany/app/view/MySelectView;

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    iget v2, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 41
    .line 42
    if-ne v2, p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Lcom/mycompany/app/view/MySelectView;->c(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {v3}, Lcom/mycompany/app/view/MySelectView;->b()V

    .line 49
    .line 50
    .line 51
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    :goto_2
    return-void
.end method

.method public final L()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->e:I

    .line 17
    .line 18
    const/16 v2, 0x25

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move v2, v3

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_5

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 42
    .line 43
    iget v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 44
    .line 45
    if-eq v6, v2, :cond_1

    .line 46
    .line 47
    iput v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 48
    .line 49
    int-to-long v6, v2

    .line 50
    iput-wide v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 51
    .line 52
    iget-wide v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 53
    .line 54
    invoke-static {v0, v5, v6, v2}, Lcom/mycompany/app/db/book/DbBookMemo;->b(Landroid/content/Context;JI)V

    .line 55
    .line 56
    .line 57
    move v3, v4

    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move v2, v3

    .line 68
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_4

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 79
    .line 80
    iget v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 81
    .line 82
    if-eq v6, v3, :cond_3

    .line 83
    .line 84
    iput v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 85
    .line 86
    int-to-long v6, v3

    .line 87
    iput-wide v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 88
    .line 89
    invoke-static {v0, v5, v3}, Lcom/mycompany/app/db/book/DbBookWeb;->z(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;I)V

    .line 90
    .line 91
    .line 92
    move v2, v4

    .line 93
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    move v3, v2

    .line 97
    :cond_5
    if-eqz v3, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    new-instance v1, Lcom/mycompany/app/main/MainListAdapter2$9;

    .line 104
    .line 105
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainListAdapter2$9;-><init>(Lcom/mycompany/app/main/MainListAdapter2;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_2
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->v:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

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
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final f(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainListAdapter2;->z(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 10
    .line 11
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 8
    .line 9
    iget v3, v0, Lcom/mycompany/app/main/MainListAdapter2;->e:I

    .line 10
    .line 11
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Lcom/mycompany/app/main/MainListAdapter2$2;

    .line 20
    .line 21
    invoke-direct {v5, v0}, Lcom/mycompany/app/main/MainListAdapter2$2;-><init>(Lcom/mycompany/app/main/MainListAdapter2;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v5, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 28
    .line 29
    const/4 v6, 0x4

    .line 30
    const/4 v7, -0x1

    .line 31
    const/4 v8, 0x0

    .line 32
    if-nez v5, :cond_5

    .line 33
    .line 34
    instance-of v1, v4, Landroid/widget/ImageView;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    move-object v1, v4

    .line 43
    check-cast v1, Landroid/widget/ImageView;

    .line 44
    .line 45
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_list_footer_dark_24:I

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object v1, v4

    .line 52
    check-cast v1, Landroid/widget/ImageView;

    .line 53
    .line 54
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_list_footer_black_24:I

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    iput v7, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 60
    .line 61
    iput-boolean v8, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->I:Z

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter2;->B()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/16 v2, 0x14

    .line 68
    .line 69
    if-le v1, v2, :cond_4

    .line 70
    .line 71
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_book_dark:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_book:I

    .line 79
    .line 80
    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v8}, Landroid/view/View;->setActivated(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 95
    .line 96
    const v9, -0x3e3e3f

    .line 97
    .line 98
    .line 99
    if-eqz v5, :cond_6

    .line 100
    .line 101
    iget-object v5, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v5, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    .line 111
    iget-object v5, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    .line 114
    .line 115
    invoke-virtual {v5, v10}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    iget-object v5, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    const v10, -0x9e9e9f

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object v5, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object v5, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 133
    .line 134
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    .line 135
    .line 136
    invoke-virtual {v5, v10}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 137
    .line 138
    .line 139
    :goto_2
    iget-object v5, v0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 140
    .line 141
    const/4 v10, 0x0

    .line 142
    const/16 v11, 0x8

    .line 143
    .line 144
    if-nez v5, :cond_7

    .line 145
    .line 146
    iput v7, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 147
    .line 148
    iput-boolean v8, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->I:Z

    .line 149
    .line 150
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->w:Lcom/mycompany/app/view/MySelectView;

    .line 151
    .line 152
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 156
    .line 157
    invoke-virtual {v1, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 161
    .line 162
    invoke-virtual {v1, v8}, Landroid/view/View;->setActivated(Z)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_7
    if-ltz v1, :cond_8

    .line 167
    .line 168
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-lt v1, v5, :cond_9

    .line 173
    .line 174
    :cond_8
    move v1, v7

    .line 175
    goto/16 :goto_12

    .line 176
    .line 177
    :cond_9
    iget-object v5, v0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    check-cast v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 184
    .line 185
    if-nez v5, :cond_a

    .line 186
    .line 187
    iput v7, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 188
    .line 189
    iput-boolean v8, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->I:Z

    .line 190
    .line 191
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->w:Lcom/mycompany/app/view/MySelectView;

    .line 192
    .line 193
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 197
    .line 198
    invoke-virtual {v1, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 202
    .line 203
    invoke-virtual {v1, v8}, Landroid/view/View;->setActivated(Z)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_a
    iget v10, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 208
    .line 209
    iput v10, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->G:I

    .line 210
    .line 211
    const/high16 v14, 0x3f800000    # 1.0f

    .line 212
    .line 213
    const/4 v15, 0x1

    .line 214
    if-ne v10, v15, :cond_d

    .line 215
    .line 216
    iput v7, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 217
    .line 218
    iput-boolean v8, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->I:Z

    .line 219
    .line 220
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->w:Lcom/mycompany/app/view/MySelectView;

    .line 221
    .line 222
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->x:Landroid/widget/FrameLayout;

    .line 226
    .line 227
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->A:Landroid/widget/RelativeLayout;

    .line 231
    .line 232
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 236
    .line 237
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 241
    .line 242
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 246
    .line 247
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 251
    .line 252
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->E:Landroid/widget/FrameLayout;

    .line 256
    .line 257
    new-instance v3, Lcom/mycompany/app/main/MainListAdapter2$3;

    .line 258
    .line 259
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 266
    .line 267
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 271
    .line 272
    invoke-virtual {v1, v8}, Landroid/view/View;->setActivated(Z)V

    .line 273
    .line 274
    .line 275
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 276
    .line 277
    invoke-virtual {v1, v14}, Landroid/view/View;->setScaleX(F)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 281
    .line 282
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 286
    .line 287
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 288
    .line 289
    invoke-virtual {v1, v8, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 293
    .line 294
    iget-object v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 300
    .line 301
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 302
    .line 303
    if-eqz v3, :cond_b

    .line 304
    .line 305
    const v12, -0x50506

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_b
    const/high16 v12, -0x1000000

    .line 310
    .line 311
    :goto_3
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    .line 313
    .line 314
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 315
    .line 316
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 317
    .line 318
    if-eqz v3, :cond_c

    .line 319
    .line 320
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_book_dark:I

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_c
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_book:I

    .line 324
    .line 325
    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 326
    .line 327
    .line 328
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 329
    .line 330
    invoke-virtual {v1, v8}, Landroid/view/View;->setActivated(Z)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_d
    new-instance v10, Lcom/mycompany/app/main/MainListAdapter2$4;

    .line 335
    .line 336
    invoke-direct {v10, v0}, Lcom/mycompany/app/main/MainListAdapter2$4;-><init>(Lcom/mycompany/app/main/MainListAdapter2;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 340
    .line 341
    .line 342
    iput v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 343
    .line 344
    iget-boolean v4, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 345
    .line 346
    iput-boolean v4, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->I:Z

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListAdapter2;->C(I)Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    iget-object v10, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->w:Lcom/mycompany/app/view/MySelectView;

    .line 353
    .line 354
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 355
    .line 356
    .line 357
    move-result v10

    .line 358
    if-nez v10, :cond_e

    .line 359
    .line 360
    iget-object v10, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->w:Lcom/mycompany/app/view/MySelectView;

    .line 361
    .line 362
    invoke-virtual {v10}, Lcom/mycompany/app/view/MySelectView;->getChildPos()I

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    iget v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 367
    .line 368
    if-eq v10, v9, :cond_e

    .line 369
    .line 370
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->w:Lcom/mycompany/app/view/MySelectView;

    .line 371
    .line 372
    invoke-virtual {v9, v11}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    :cond_e
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->x:Landroid/widget/FrameLayout;

    .line 376
    .line 377
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->A:Landroid/widget/RelativeLayout;

    .line 381
    .line 382
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 383
    .line 384
    .line 385
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 386
    .line 387
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 391
    .line 392
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 393
    .line 394
    .line 395
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 396
    .line 397
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 401
    .line 402
    invoke-virtual {v9, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->E:Landroid/widget/FrameLayout;

    .line 406
    .line 407
    new-instance v10, Lcom/mycompany/app/main/MainListAdapter2$5;

    .line 408
    .line 409
    invoke-direct {v10, v0}, Lcom/mycompany/app/main/MainListAdapter2$5;-><init>(Lcom/mycompany/app/main/MainListAdapter2;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 413
    .line 414
    .line 415
    if-eqz v4, :cond_10

    .line 416
    .line 417
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 418
    .line 419
    invoke-virtual {v9, v14}, Landroid/view/View;->setScaleX(F)V

    .line 420
    .line 421
    .line 422
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 423
    .line 424
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 425
    .line 426
    if-eqz v10, :cond_f

    .line 427
    .line 428
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_f
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 432
    .line 433
    :goto_5
    invoke-virtual {v9, v8, v10}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 434
    .line 435
    .line 436
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 437
    .line 438
    invoke-virtual {v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 442
    .line 443
    invoke-virtual {v9, v15}, Landroid/view/View;->setActivated(Z)V

    .line 444
    .line 445
    .line 446
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 447
    .line 448
    invoke-virtual {v9, v6}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 449
    .line 450
    .line 451
    goto :goto_6

    .line 452
    :cond_10
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 453
    .line 454
    invoke-virtual {v9, v6}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 458
    .line 459
    invoke-virtual {v9, v8}, Landroid/view/View;->setActivated(Z)V

    .line 460
    .line 461
    .line 462
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 463
    .line 464
    invoke-virtual {v9, v14}, Landroid/view/View;->setScaleX(F)V

    .line 465
    .line 466
    .line 467
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 468
    .line 469
    invoke-virtual {v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 470
    .line 471
    .line 472
    :goto_6
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 473
    .line 474
    if-eqz v9, :cond_1a

    .line 475
    .line 476
    iget-object v10, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 477
    .line 478
    if-eqz v10, :cond_1a

    .line 479
    .line 480
    iget-object v11, v0, Lcom/mycompany/app/main/MainListAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    .line 481
    .line 482
    if-nez v11, :cond_11

    .line 483
    .line 484
    goto/16 :goto_8

    .line 485
    .line 486
    :cond_11
    iget-boolean v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 487
    .line 488
    if-eqz v11, :cond_12

    .line 489
    .line 490
    iget v9, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 491
    .line 492
    invoke-virtual {v10, v8, v9}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_8

    .line 496
    .line 497
    :cond_12
    iget v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 498
    .line 499
    const/16 v14, 0xb

    .line 500
    .line 501
    if-eq v11, v15, :cond_13

    .line 502
    .line 503
    const/4 v12, 0x2

    .line 504
    if-eq v11, v12, :cond_13

    .line 505
    .line 506
    const/4 v12, 0x3

    .line 507
    if-eq v11, v12, :cond_13

    .line 508
    .line 509
    if-eq v11, v6, :cond_13

    .line 510
    .line 511
    const/4 v12, 0x5

    .line 512
    if-eq v11, v12, :cond_13

    .line 513
    .line 514
    const/4 v12, 0x6

    .line 515
    if-eq v11, v12, :cond_13

    .line 516
    .line 517
    if-eq v11, v14, :cond_13

    .line 518
    .line 519
    iget v9, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 520
    .line 521
    iget v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 522
    .line 523
    invoke-virtual {v10, v9, v11}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_8

    .line 527
    .line 528
    :cond_13
    new-instance v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 529
    .line 530
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 531
    .line 532
    .line 533
    if-ne v11, v14, :cond_14

    .line 534
    .line 535
    iput v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 536
    .line 537
    iput v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 538
    .line 539
    iget-object v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 540
    .line 541
    iput-object v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 542
    .line 543
    iput-object v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 544
    .line 545
    iget-wide v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 546
    .line 547
    iput-wide v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 548
    .line 549
    iget v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 550
    .line 551
    iput v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 552
    .line 553
    iget v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 554
    .line 555
    iput v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 556
    .line 557
    iget v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 558
    .line 559
    iput v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 560
    .line 561
    goto :goto_7

    .line 562
    :cond_14
    move-object v10, v5

    .line 563
    :goto_7
    iget-object v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 564
    .line 565
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 566
    .line 567
    .line 568
    move-result v11

    .line 569
    const-string v12, "\\p{Punct}"

    .line 570
    .line 571
    if-eqz v11, :cond_16

    .line 572
    .line 573
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 574
    .line 575
    iget v10, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 576
    .line 577
    iget v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 578
    .line 579
    iget-object v14, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 580
    .line 581
    iget-object v13, v0, Lcom/mycompany/app/main/MainListAdapter2;->t:Ljava/util/regex/Pattern;

    .line 582
    .line 583
    if-nez v13, :cond_15

    .line 584
    .line 585
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 586
    .line 587
    .line 588
    move-result-object v12

    .line 589
    iput-object v12, v0, Lcom/mycompany/app/main/MainListAdapter2;->t:Ljava/util/regex/Pattern;

    .line 590
    .line 591
    :cond_15
    iget-object v12, v0, Lcom/mycompany/app/main/MainListAdapter2;->t:Ljava/util/regex/Pattern;

    .line 592
    .line 593
    invoke-virtual {v9, v10, v11, v14, v12}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 594
    .line 595
    .line 596
    goto :goto_8

    .line 597
    :cond_16
    invoke-static {v10}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 598
    .line 599
    .line 600
    move-result-object v11

    .line 601
    invoke-static {v11}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 602
    .line 603
    .line 604
    move-result v13

    .line 605
    if-eqz v13, :cond_18

    .line 606
    .line 607
    iget v9, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 608
    .line 609
    if-ne v9, v6, :cond_17

    .line 610
    .line 611
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 612
    .line 613
    const v12, -0x70708

    .line 614
    .line 615
    .line 616
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 617
    .line 618
    .line 619
    :cond_17
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 620
    .line 621
    iget-object v10, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 622
    .line 623
    invoke-virtual {v9, v10, v8}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 624
    .line 625
    .line 626
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 627
    .line 628
    invoke-virtual {v9, v11}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 629
    .line 630
    .line 631
    goto :goto_8

    .line 632
    :cond_18
    iget-object v11, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 633
    .line 634
    iget v13, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 635
    .line 636
    iget v14, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 637
    .line 638
    iget-object v15, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 639
    .line 640
    iget-object v7, v0, Lcom/mycompany/app/main/MainListAdapter2;->t:Ljava/util/regex/Pattern;

    .line 641
    .line 642
    if-nez v7, :cond_19

    .line 643
    .line 644
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 645
    .line 646
    .line 647
    move-result-object v7

    .line 648
    iput-object v7, v0, Lcom/mycompany/app/main/MainListAdapter2;->t:Ljava/util/regex/Pattern;

    .line 649
    .line 650
    :cond_19
    iget-object v7, v0, Lcom/mycompany/app/main/MainListAdapter2;->t:Ljava/util/regex/Pattern;

    .line 651
    .line 652
    invoke-virtual {v11, v13, v14, v15, v7}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 653
    .line 654
    .line 655
    iget-object v7, v0, Lcom/mycompany/app/main/MainListAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    .line 656
    .line 657
    invoke-virtual {v7, v10, v9}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 658
    .line 659
    .line 660
    :cond_1a
    :goto_8
    iget-boolean v7, v0, Lcom/mycompany/app/main/MainListAdapter2;->n:Z

    .line 661
    .line 662
    const v9, -0xbbcca

    .line 663
    .line 664
    .line 665
    if-eqz v7, :cond_1c

    .line 666
    .line 667
    iget-object v7, v0, Lcom/mycompany/app/main/MainListAdapter2;->o:Ljava/lang/String;

    .line 668
    .line 669
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    if-nez v7, :cond_1c

    .line 674
    .line 675
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 676
    .line 677
    if-eqz v7, :cond_1b

    .line 678
    .line 679
    const/4 v7, -0x1

    .line 680
    goto :goto_9

    .line 681
    :cond_1b
    move v7, v9

    .line 682
    :goto_9
    iget-object v10, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 683
    .line 684
    iget-object v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 685
    .line 686
    iget-object v12, v0, Lcom/mycompany/app/main/MainListAdapter2;->o:Ljava/lang/String;

    .line 687
    .line 688
    invoke-static {v11, v7, v8, v12}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 689
    .line 690
    .line 691
    move-result-object v11

    .line 692
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 693
    .line 694
    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 695
    .line 696
    .line 697
    const/4 v15, 0x1

    .line 698
    goto :goto_a

    .line 699
    :cond_1c
    iget-object v7, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 700
    .line 701
    iget-object v10, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 702
    .line 703
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    .line 705
    .line 706
    move v7, v8

    .line 707
    move v15, v7

    .line 708
    :goto_a
    iget-object v10, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 709
    .line 710
    invoke-static {v3}, Lcom/mycompany/app/pref/PrefUtil;->c(I)Z

    .line 711
    .line 712
    .line 713
    move-result v11

    .line 714
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 715
    .line 716
    .line 717
    iget v10, v0, Lcom/mycompany/app/main/MainListAdapter2;->l:I

    .line 718
    .line 719
    if-ne v1, v10, :cond_1d

    .line 720
    .line 721
    invoke-static {v3}, Lcom/mycompany/app/pref/PrefUtil;->b(I)Z

    .line 722
    .line 723
    .line 724
    move-result v10

    .line 725
    if-eqz v10, :cond_1d

    .line 726
    .line 727
    iget-object v10, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 728
    .line 729
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    .line 731
    .line 732
    goto :goto_d

    .line 733
    :cond_1d
    iget-boolean v9, v0, Lcom/mycompany/app/main/MainListAdapter2;->n:Z

    .line 734
    .line 735
    if-eqz v9, :cond_1f

    .line 736
    .line 737
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 738
    .line 739
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 740
    .line 741
    if-eqz v10, :cond_1e

    .line 742
    .line 743
    const v10, -0x3e3e3f

    .line 744
    .line 745
    .line 746
    goto :goto_b

    .line 747
    :cond_1e
    const/high16 v10, -0x1000000

    .line 748
    .line 749
    :goto_b
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 750
    .line 751
    .line 752
    goto :goto_d

    .line 753
    :cond_1f
    iget-object v9, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 754
    .line 755
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 756
    .line 757
    if-eqz v10, :cond_20

    .line 758
    .line 759
    const v12, -0x50506

    .line 760
    .line 761
    .line 762
    goto :goto_c

    .line 763
    :cond_20
    const/high16 v12, -0x1000000

    .line 764
    .line 765
    :goto_c
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 766
    .line 767
    .line 768
    :goto_d
    iget-object v9, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 769
    .line 770
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 771
    .line 772
    .line 773
    move-result v9

    .line 774
    if-eqz v9, :cond_21

    .line 775
    .line 776
    iget-wide v9, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 777
    .line 778
    const-wide/16 v11, -0x1

    .line 779
    .line 780
    cmp-long v11, v9, v11

    .line 781
    .line 782
    if-eqz v11, :cond_21

    .line 783
    .line 784
    iget-object v11, v0, Lcom/mycompany/app/main/MainListAdapter2;->s:Ljava/lang/String;

    .line 785
    .line 786
    const-string v12, "yyyy.MM.dd"

    .line 787
    .line 788
    invoke-static {v9, v10, v11, v12}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v9

    .line 792
    iput-object v9, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 793
    .line 794
    :cond_21
    invoke-static {v3}, Lcom/mycompany/app/pref/PrefUtil;->a(I)Z

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    if-eqz v3, :cond_26

    .line 799
    .line 800
    iget-object v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 801
    .line 802
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 803
    .line 804
    .line 805
    move-result v3

    .line 806
    if-nez v3, :cond_23

    .line 807
    .line 808
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 809
    .line 810
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    .line 811
    .line 812
    if-ne v3, v9, :cond_22

    .line 813
    .line 814
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 815
    .line 816
    iget-object v9, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 817
    .line 818
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    .line 820
    .line 821
    goto :goto_e

    .line 822
    :cond_22
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 823
    .line 824
    iget-object v9, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 825
    .line 826
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    .line 828
    .line 829
    :goto_e
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 830
    .line 831
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 832
    .line 833
    .line 834
    :cond_23
    iget-object v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 835
    .line 836
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 837
    .line 838
    .line 839
    move-result v3

    .line 840
    if-nez v3, :cond_26

    .line 841
    .line 842
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 843
    .line 844
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    .line 845
    .line 846
    if-ne v3, v9, :cond_24

    .line 847
    .line 848
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 849
    .line 850
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 851
    .line 852
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    .line 854
    .line 855
    goto :goto_f

    .line 856
    :cond_24
    if-eqz v15, :cond_25

    .line 857
    .line 858
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 859
    .line 860
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 861
    .line 862
    iget-object v9, v0, Lcom/mycompany/app/main/MainListAdapter2;->o:Ljava/lang/String;

    .line 863
    .line 864
    invoke-static {v5, v7, v8, v9}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 865
    .line 866
    .line 867
    move-result-object v5

    .line 868
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 869
    .line 870
    invoke-virtual {v3, v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 871
    .line 872
    .line 873
    goto :goto_f

    .line 874
    :cond_25
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 875
    .line 876
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 877
    .line 878
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    .line 880
    .line 881
    :goto_f
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 882
    .line 883
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 884
    .line 885
    .line 886
    :cond_26
    iget-object v3, v0, Lcom/mycompany/app/main/MainListAdapter2;->r:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    .line 887
    .line 888
    if-eqz v3, :cond_28

    .line 889
    .line 890
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 891
    .line 892
    if-eqz v3, :cond_27

    .line 893
    .line 894
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 895
    .line 896
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 897
    .line 898
    .line 899
    goto :goto_10

    .line 900
    :cond_27
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 901
    .line 902
    invoke-virtual {v3, v8}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 903
    .line 904
    .line 905
    :goto_10
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 906
    .line 907
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 912
    .line 913
    .line 914
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 915
    .line 916
    new-instance v3, Lcom/mycompany/app/main/MainListAdapter2$6;

    .line 917
    .line 918
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainListAdapter2$6;-><init>(Lcom/mycompany/app/main/MainListAdapter2;)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 922
    .line 923
    .line 924
    :cond_28
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 925
    .line 926
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 927
    .line 928
    if-eqz v3, :cond_29

    .line 929
    .line 930
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_book_dark:I

    .line 931
    .line 932
    goto :goto_11

    .line 933
    :cond_29
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_book:I

    .line 934
    .line 935
    :goto_11
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 936
    .line 937
    .line 938
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 939
    .line 940
    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    .line 941
    .line 942
    .line 943
    return-void

    .line 944
    :goto_12
    iput v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 945
    .line 946
    iput-boolean v8, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->I:Z

    .line 947
    .line 948
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->w:Lcom/mycompany/app/view/MySelectView;

    .line 949
    .line 950
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 951
    .line 952
    .line 953
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 954
    .line 955
    invoke-virtual {v1, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 956
    .line 957
    .line 958
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 959
    .line 960
    invoke-virtual {v1, v8}, Landroid/view/View;->setActivated(Z)V

    .line 961
    .line 962
    .line 963
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 18

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x2

    .line 13
    if-ne v0, v4, :cond_1

    .line 14
    .line 15
    new-instance v2, Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    sget v4, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 28
    .line 29
    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iput v0, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->u:I

    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_1
    new-instance v4, Lcom/mycompany/app/view/MyListChild;

    .line 44
    .line 45
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyListChild;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    const/4 v6, -0x2

    .line 51
    invoke-direct {v5, v3, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    sget v5, Lnet/kaki87/soul2/testing/R$id;->mai2_item_ftext:I

    .line 58
    .line 59
    sget v7, Lnet/kaki87/soul2/testing/R$id;->mai2_item_button:I

    .line 60
    .line 61
    new-instance v8, Lcom/mycompany/app/view/MySelectView;

    .line 62
    .line 63
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MySelectView;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    const/16 v9, 0x8

    .line 67
    .line 68
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    const/16 v10, 0xa

    .line 72
    .line 73
    invoke-static {v3, v3, v10, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v11, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    new-instance v11, Landroid/widget/FrameLayout;

    .line 84
    .line 85
    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    sget v12, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 89
    .line 90
    invoke-virtual {v4, v11, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 91
    .line 92
    .line 93
    new-instance v12, Lcom/mycompany/app/view/MyRoundImage;

    .line 94
    .line 95
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    const/high16 v13, 0x41c00000    # 24.0f

    .line 99
    .line 100
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    float-to-int v14, v14

    .line 105
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 106
    .line 107
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    .line 109
    .line 110
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 111
    .line 112
    invoke-virtual {v12, v9}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 113
    .line 114
    .line 115
    div-int/lit8 v9, v14, 0x2

    .line 116
    .line 117
    int-to-float v9, v9

    .line 118
    invoke-virtual {v12, v9}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 119
    .line 120
    .line 121
    const/4 v9, 0x4

    .line 122
    invoke-virtual {v12, v9}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 126
    .line 127
    invoke-direct {v9, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 128
    .line 129
    .line 130
    const/16 v14, 0x11

    .line 131
    .line 132
    iput v14, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    .line 134
    invoke-virtual {v11, v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    new-instance v9, Lcom/mycompany/app/view/MyRoundImage;

    .line 138
    .line 139
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    float-to-int v13, v13

    .line 147
    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    .line 149
    .line 150
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 151
    .line 152
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 153
    .line 154
    .line 155
    div-int/lit8 v15, v13, 0x2

    .line 156
    .line 157
    int-to-float v15, v15

    .line 158
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 159
    .line 160
    .line 161
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 162
    .line 163
    invoke-direct {v15, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    .line 165
    .line 166
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 167
    .line 168
    invoke-virtual {v11, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    new-instance v13, Landroid/widget/RelativeLayout;

    .line 172
    .line 173
    invoke-direct {v13, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v13, v5}, Landroid/view/View;->setId(I)V

    .line 177
    .line 178
    .line 179
    const/16 v15, 0x10

    .line 180
    .line 181
    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 182
    .line 183
    .line 184
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 185
    .line 186
    const/4 v14, 0x0

    .line 187
    invoke-virtual {v13, v14, v10, v14, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 188
    .line 189
    .line 190
    sget v10, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 191
    .line 192
    invoke-virtual {v13, v10}, Landroid/view/View;->setMinimumHeight(I)V

    .line 193
    .line 194
    .line 195
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 196
    .line 197
    invoke-direct {v10, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v15, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 201
    .line 202
    .line 203
    sget v14, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 204
    .line 205
    invoke-virtual {v10, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .line 210
    .line 211
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 212
    .line 213
    invoke-direct {v10, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    .line 215
    .line 216
    sget v14, Lnet/kaki87/soul2/testing/R$id;->mai2_item_name:I

    .line 217
    .line 218
    invoke-virtual {v10, v14}, Landroid/view/View;->setId(I)V

    .line 219
    .line 220
    .line 221
    const/4 v15, 0x1

    .line 222
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 223
    .line 224
    .line 225
    const/high16 v3, 0x41800000    # 16.0f

    .line 226
    .line 227
    invoke-virtual {v10, v15, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v13, v10, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 231
    .line 232
    .line 233
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 234
    .line 235
    invoke-direct {v3, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    .line 237
    .line 238
    sget v2, Lnet/kaki87/soul2/testing/R$id;->mai2_item_date:I

    .line 239
    .line 240
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 244
    .line 245
    .line 246
    const/high16 v6, 0x41600000    # 14.0f

    .line 247
    .line 248
    invoke-virtual {v3, v15, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 249
    .line 250
    .line 251
    const/4 v6, 0x3

    .line 252
    move-object/from16 v17, v10

    .line 253
    .line 254
    const/4 v15, -0x2

    .line 255
    invoke-static {v15, v15, v6, v14}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 260
    .line 261
    iput v6, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 262
    .line 263
    invoke-virtual {v13, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .line 265
    .line 266
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 267
    .line 268
    const/4 v10, 0x0

    .line 269
    invoke-direct {v6, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    .line 271
    .line 272
    const/4 v10, 0x1

    .line 273
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 274
    .line 275
    .line 276
    move-object/from16 v16, v3

    .line 277
    .line 278
    const/high16 v3, 0x41600000    # 14.0f

    .line 279
    .line 280
    invoke-virtual {v6, v10, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 281
    .line 282
    .line 283
    const/4 v3, 0x3

    .line 284
    invoke-static {v15, v15, v3, v14}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    const/16 v10, 0x11

    .line 289
    .line 290
    invoke-virtual {v3, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 291
    .line 292
    .line 293
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 294
    .line 295
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 296
    .line 297
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 298
    .line 299
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v13, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    .line 304
    .line 305
    new-instance v2, Landroid/widget/FrameLayout;

    .line 306
    .line 307
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    .line 311
    .line 312
    .line 313
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 314
    .line 315
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 316
    .line 317
    const/4 v10, -0x1

    .line 318
    invoke-direct {v3, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 319
    .line 320
    .line 321
    const/16 v7, 0x15

    .line 322
    .line 323
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 324
    .line 325
    .line 326
    const/16 v7, 0xa

    .line 327
    .line 328
    invoke-virtual {v3, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 329
    .line 330
    .line 331
    const/16 v7, 0x8

    .line 332
    .line 333
    invoke-virtual {v3, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    .line 338
    .line 339
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 340
    .line 341
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 342
    .line 343
    .line 344
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 345
    .line 346
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 347
    .line 348
    .line 349
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 350
    .line 351
    if-eqz v1, :cond_2

    .line 352
    .line 353
    const v1, -0xc0c0c1

    .line 354
    .line 355
    .line 356
    goto :goto_0

    .line 357
    :cond_2
    const v1, -0x1f1f20

    .line 358
    .line 359
    .line 360
    :goto_0
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 361
    .line 362
    .line 363
    const/16 v7, 0x8

    .line 364
    .line 365
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 366
    .line 367
    .line 368
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .line 370
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 371
    .line 372
    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 373
    .line 374
    .line 375
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 376
    .line 377
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 378
    .line 379
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    .line 381
    .line 382
    new-instance v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 383
    .line 384
    invoke-direct {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 385
    .line 386
    .line 387
    iput v0, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->u:I

    .line 388
    .line 389
    iput-object v4, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->v:Lcom/mycompany/app/view/MyListChild;

    .line 390
    .line 391
    iput-object v8, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->w:Lcom/mycompany/app/view/MySelectView;

    .line 392
    .line 393
    iput-object v11, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->x:Landroid/widget/FrameLayout;

    .line 394
    .line 395
    iput-object v12, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 396
    .line 397
    iput-object v9, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 398
    .line 399
    iput-object v13, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->A:Landroid/widget/RelativeLayout;

    .line 400
    .line 401
    move-object/from16 v0, v17

    .line 402
    .line 403
    iput-object v0, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 404
    .line 405
    move-object/from16 v0, v16

    .line 406
    .line 407
    iput-object v0, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 408
    .line 409
    iput-object v6, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 410
    .line 411
    iput-object v2, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->E:Landroid/widget/FrameLayout;

    .line 412
    .line 413
    iput-object v3, v1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 414
    .line 415
    return-object v1
.end method

.method public final v(Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->G:I

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_1
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne p3, v0, :cond_3

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_3
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 24
    .line 25
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 33
    .line 34
    :goto_0
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 36
    .line 37
    .line 38
    if-eqz p3, :cond_5

    .line 39
    .line 40
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 41
    .line 42
    iget-object v1, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :cond_5
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 50
    .line 51
    iget-object v1, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_1
    if-eqz v0, :cond_6

    .line 58
    .line 59
    new-instance v1, Lcom/mycompany/app/main/MainListAdapter2$8;

    .line 60
    .line 61
    invoke-direct {v1, p0, p1, p2}, Lcom/mycompany/app/main/MainListAdapter2$8;-><init>(Lcom/mycompany/app/main/MainListAdapter2;Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    .line 66
    .line 67
    :cond_6
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 68
    .line 69
    if-eqz p2, :cond_7

    .line 70
    .line 71
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_book_dark:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_7
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_book:I

    .line 75
    .line 76
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Landroid/view/View;->setActivated(Z)V

    .line 80
    .line 81
    .line 82
    :cond_8
    :goto_3
    return-void
.end method

.method public final w(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, "/"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget p1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 70
    .line 71
    return p1

    .line 72
    :cond_4
    :goto_1
    const/4 p1, -0x1

    .line 73
    return p1
.end method

.method public final x()Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 9
    .line 10
    if-eqz v2, :cond_8

    .line 11
    .line 12
    array-length v2, v2

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq v2, v0, :cond_1

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_1
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 21
    .line 22
    if-lez v0, :cond_8

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListAdapter2;->D()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_7

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-wide v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 61
    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 71
    .line 72
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iget v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 79
    .line 80
    sub-int/2addr v2, v3

    .line 81
    :goto_1
    if-ge v1, v2, :cond_7

    .line 82
    .line 83
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 90
    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    iget v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 94
    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    iget-object v4, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 99
    .line 100
    aget-boolean v4, v4, v1

    .line 101
    .line 102
    if-eqz v4, :cond_6

    .line 103
    .line 104
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 105
    .line 106
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_7
    return-object v0

    .line 117
    :cond_8
    :goto_3
    return-object v1
.end method

.method public final y()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 8
    .line 9
    if-eqz v2, :cond_8

    .line 10
    .line 11
    array-length v2, v2

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq v2, v0, :cond_1

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_1
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 20
    .line 21
    if-lez v0, :cond_8

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListAdapter2;->D()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 30
    .line 31
    if-gtz v0, :cond_3

    .line 32
    .line 33
    iget v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 34
    .line 35
    if-lez v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 53
    .line 54
    sub-int/2addr v2, v3

    .line 55
    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 66
    .line 67
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iget v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 74
    .line 75
    sub-int/2addr v2, v3

    .line 76
    :goto_1
    if-ge v1, v2, :cond_7

    .line 77
    .line 78
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    iget v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 89
    .line 90
    if-eqz v4, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    iget-object v4, p0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 94
    .line 95
    aget-boolean v4, v4, v1

    .line 96
    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_7
    return-object v0

    .line 106
    :cond_8
    :goto_3
    return-object v1
.end method

.method public final z(I)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

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
