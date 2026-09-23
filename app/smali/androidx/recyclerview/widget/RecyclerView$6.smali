.class Landroidx/recyclerview/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/AdapterHelper$Callback;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 3

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 20
    .line 21
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 22
    .line 23
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g0(II)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 30
    .line 31
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 32
    .line 33
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->i0(II)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 40
    .line 41
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 42
    .line 43
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h0(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 50
    .line 51
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 52
    .line 53
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e0(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final b(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    move-object v4, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_3

    .line 17
    .line 18
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 19
    .line 20
    iget-object v5, v5, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 21
    .line 22
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_2

    .line 39
    .line 40
    iget v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 41
    .line 42
    if-eq v6, p1, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 46
    .line 47
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 48
    .line 49
    iget-object v4, v4, Landroidx/recyclerview/widget/ChildHelper;->c:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    move-object v4, v5

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v4, v5

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 68
    .line 69
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 70
    .line 71
    iget-object p1, p1, Landroidx/recyclerview/widget/ChildHelper;->c:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    const-string p1, "RecyclerView"

    .line 84
    .line 85
    const-string v0, "assuming view holder cannot be find because it is hidden"

    .line 86
    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_3
    return-object v2

    .line 91
    :cond_6
    return-object v4
.end method

.method public final c(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr p2, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 20
    .line 21
    iget-object v5, v5, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 22
    .line 23
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->q()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 43
    .line 44
    if-lt v7, p1, :cond_1

    .line 45
    .line 46
    if-ge v7, p2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 49
    .line 50
    .line 51
    const/16 v3, 0x400

    .line 52
    .line 53
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 61
    .line 62
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Z

    .line 63
    .line 64
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 68
    .line 69
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    sub-int/2addr v5, v4

    .line 76
    :goto_2
    if-ltz v5, :cond_5

    .line 77
    .line 78
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 83
    .line 84
    if-nez v6, :cond_3

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 88
    .line 89
    if-lt v7, p1, :cond_4

    .line 90
    .line 91
    if-ge v7, p2, :cond_4

    .line 92
    .line 93
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h(I)V

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Z

    .line 103
    .line 104
    return-void
.end method

.method public final d(II)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    const-string v4, " now at position "

    .line 16
    .line 17
    const-string v5, " holder "

    .line 18
    .line 19
    const-string v6, "RecyclerView"

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    if-ge v3, v1, :cond_2

    .line 23
    .line 24
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 25
    .line 26
    iget-object v8, v8, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 27
    .line 28
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    if-eqz v8, :cond_1

    .line 39
    .line 40
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->q()Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-nez v9, :cond_1

    .line 45
    .line 46
    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 47
    .line 48
    if-lt v9, p1, :cond_1

    .line 49
    .line 50
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 51
    .line 52
    if-eqz v9, :cond_0

    .line 53
    .line 54
    new-instance v9, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v10, "offsetPositionRecordsForInsert attached child "

    .line 57
    .line 58
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v4, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 74
    .line 75
    add-int/2addr v4, p2

    .line 76
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-virtual {v8, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n(IZ)V

    .line 87
    .line 88
    .line 89
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 90
    .line 91
    iput-boolean v7, v4, Landroidx/recyclerview/widget/RecyclerView$State;->f:Z

    .line 92
    .line 93
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 97
    .line 98
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    move v8, v2

    .line 105
    :goto_1
    if-ge v8, v3, :cond_5

    .line 106
    .line 107
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 112
    .line 113
    if-eqz v9, :cond_4

    .line 114
    .line 115
    iget v10, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 116
    .line 117
    if-lt v10, p1, :cond_4

    .line 118
    .line 119
    sget-boolean v10, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 120
    .line 121
    if-eqz v10, :cond_3

    .line 122
    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v11, "offsetPositionRecordsForInsert cached "

    .line 126
    .line 127
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v11, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 143
    .line 144
    add-int/2addr v11, p2

    .line 145
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_3
    invoke-virtual {v9, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n(IZ)V

    .line 156
    .line 157
    .line 158
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 162
    .line 163
    .line 164
    iput-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:Z

    .line 165
    .line 166
    return-void
.end method

.method public final e(II)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 10
    .line 11
    iget-object v4, v4, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 12
    .line 13
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v6, 0x1

    .line 20
    if-ge v0, v2, :cond_0

    .line 21
    .line 22
    move v7, v0

    .line 23
    move v8, v2

    .line 24
    const/4 v9, -0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v8, v0

    .line 27
    move v7, v2

    .line 28
    move v9, v6

    .line 29
    :goto_0
    const/4 v10, 0x0

    .line 30
    move v11, v10

    .line 31
    :goto_1
    const-string v12, " holder "

    .line 32
    .line 33
    const-string v13, "RecyclerView"

    .line 34
    .line 35
    if-ge v11, v4, :cond_5

    .line 36
    .line 37
    iget-object v14, v3, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 38
    .line 39
    iget-object v14, v14, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 40
    .line 41
    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    invoke-virtual {v14, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v14

    .line 47
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    if-eqz v14, :cond_4

    .line 52
    .line 53
    iget v15, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 54
    .line 55
    if-lt v15, v7, :cond_4

    .line 56
    .line 57
    if-le v15, v8, :cond_1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_1
    sget-boolean v15, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 61
    .line 62
    if-eqz v15, :cond_2

    .line 63
    .line 64
    new-instance v15, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "offsetPositionRecordsForMove attached child "

    .line 67
    .line 68
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_2
    iget v5, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 88
    .line 89
    if-ne v5, v0, :cond_3

    .line 90
    .line 91
    sub-int v5, v2, v0

    .line 92
    .line 93
    invoke-virtual {v14, v5, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n(IZ)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {v14, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n(IZ)V

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 101
    .line 102
    iput-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$State;->f:Z

    .line 103
    .line 104
    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 108
    .line 109
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 110
    .line 111
    if-ge v0, v2, :cond_6

    .line 112
    .line 113
    move v7, v0

    .line 114
    move v8, v2

    .line 115
    const/4 v5, -0x1

    .line 116
    goto :goto_4

    .line 117
    :cond_6
    move v8, v0

    .line 118
    move v7, v2

    .line 119
    move v5, v6

    .line 120
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    move v11, v10

    .line 125
    :goto_5
    if-ge v11, v9, :cond_a

    .line 126
    .line 127
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 132
    .line 133
    if-eqz v14, :cond_9

    .line 134
    .line 135
    iget v15, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 136
    .line 137
    if-lt v15, v7, :cond_9

    .line 138
    .line 139
    if-le v15, v8, :cond_7

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_7
    if-ne v15, v0, :cond_8

    .line 143
    .line 144
    sub-int v15, v2, v0

    .line 145
    .line 146
    invoke-virtual {v14, v15, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n(IZ)V

    .line 147
    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_8
    invoke-virtual {v14, v5, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n(IZ)V

    .line 151
    .line 152
    .line 153
    :goto_6
    sget-boolean v15, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 154
    .line 155
    if-eqz v15, :cond_9

    .line 156
    .line 157
    new-instance v15, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v10, "offsetPositionRecordsForMove cached child "

    .line 160
    .line 161
    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    .line 181
    .line 182
    const/4 v10, 0x0

    .line 183
    goto :goto_5

    .line 184
    :cond_a
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 185
    .line 186
    .line 187
    iput-boolean v6, v3, Landroidx/recyclerview/widget/RecyclerView;->p0:Z

    .line 188
    .line 189
    return-void
.end method

.method public final f(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->T(IIZ)V

    .line 5
    .line 6
    .line 7
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:Z

    .line 8
    .line 9
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 10
    .line 11
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$State;->c:I

    .line 12
    .line 13
    add-int/2addr v0, p2

    .line 14
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$State;->c:I

    .line 15
    .line 16
    return-void
.end method
