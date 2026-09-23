.class final Landroidx/recyclerview/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AdapterHelper$Callback;,
        Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# instance fields
.field public final a:Landroidx/core/util/Pools$SimplePool;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroidx/recyclerview/widget/RecyclerView$6;

.field public final e:Landroidx/recyclerview/widget/OpReorderer;

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$6;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->a:Landroidx/core/util/Pools$SimplePool;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->f:I

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/RecyclerView$6;

    .line 31
    .line 32
    new-instance p1, Landroidx/recyclerview/widget/OpReorderer;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Landroidx/recyclerview/widget/AdapterHelper;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->e:Landroidx/recyclerview/widget/OpReorderer;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 16
    .line 17
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 18
    .line 19
    const/16 v6, 0x8

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 25
    .line 26
    add-int/lit8 v5, v3, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->f(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ne v4, p1, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    if-ne v5, v7, :cond_2

    .line 36
    .line 37
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 38
    .line 39
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 40
    .line 41
    add-int/2addr v4, v5

    .line 42
    :goto_1
    if-ge v5, v4, :cond_2

    .line 43
    .line 44
    add-int/lit8 v6, v3, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper;->f(II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-ne v6, p1, :cond_1

    .line 51
    .line 52
    :goto_2
    return v7

    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return v2
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 16
    .line 17
    iget-object v5, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/RecyclerView$6;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$6;->a(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->k(Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->f:I

    .line 29
    .line 30
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 19
    .line 20
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    iget-object v7, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/RecyclerView$6;

    .line 24
    .line 25
    if-eq v5, v6, :cond_3

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    if-eq v5, v6, :cond_2

    .line 29
    .line 30
    const/4 v6, 0x4

    .line 31
    if-eq v5, v6, :cond_1

    .line 32
    .line 33
    const/16 v6, 0x8

    .line 34
    .line 35
    if-eq v5, v6, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$6;->a(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 39
    .line 40
    .line 41
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 42
    .line 43
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 44
    .line 45
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$6;->e(II)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$6;->a(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 50
    .line 51
    .line 52
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 53
    .line 54
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 55
    .line 56
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$6;->c(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$6;->a(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 61
    .line 62
    .line 63
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 64
    .line 65
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 66
    .line 67
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$6;->f(II)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$6;->a(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 72
    .line 73
    .line 74
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 75
    .line 76
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 77
    .line 78
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$6;->d(II)V

    .line 79
    .line 80
    .line 81
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->k(Ljava/util/ArrayList;)V

    .line 85
    .line 86
    .line 87
    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->f:I

    .line 88
    .line 89
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 12

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_8

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-eq v0, v2, :cond_8

    .line 9
    .line 10
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 11
    .line 12
    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/AdapterHelper;->l(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 17
    .line 18
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x4

    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    move v3, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "op should be remove or update."

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    :goto_0
    move v6, v1

    .line 50
    move v7, v6

    .line 51
    :goto_1
    iget v8, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 52
    .line 53
    iget-object v9, p0, Landroidx/recyclerview/widget/AdapterHelper;->a:Landroidx/core/util/Pools$SimplePool;

    .line 54
    .line 55
    if-ge v6, v8, :cond_6

    .line 56
    .line 57
    iget v8, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 58
    .line 59
    mul-int v10, v3, v6

    .line 60
    .line 61
    add-int/2addr v10, v8

    .line 62
    iget v8, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 63
    .line 64
    invoke-virtual {p0, v10, v8}, Landroidx/recyclerview/widget/AdapterHelper;->l(II)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    iget v10, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 69
    .line 70
    if-eq v10, v4, :cond_3

    .line 71
    .line 72
    if-eq v10, v5, :cond_2

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    add-int/lit8 v11, v0, 0x1

    .line 76
    .line 77
    if-ne v8, v11, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    if-ne v8, v0, :cond_4

    .line 81
    .line 82
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    :goto_3
    invoke-virtual {p0, v10, v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->e(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9, v0}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 96
    .line 97
    if-ne v0, v5, :cond_5

    .line 98
    .line 99
    add-int/2addr v2, v7

    .line 100
    :cond_5
    move v7, v1

    .line 101
    move v0, v8

    .line 102
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    invoke-virtual {v9, p1}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    if-lez v7, :cond_7

    .line 109
    .line 110
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 111
    .line 112
    invoke-virtual {p0, p1, v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->e(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, p1}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_7
    return-void

    .line 123
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string v0, "should not dispatch add or move for pre layout"

    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method public final e(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/RecyclerView$6;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$6;->a(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 15
    .line 16
    invoke-virtual {v0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$6;->c(II)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "only remove and update ops can be dispatched in first pass"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$6;->f(II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final f(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :goto_0
    if-ge p2, v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 14
    .line 15
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 16
    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    if-ne v3, v4, :cond_2

    .line 20
    .line 21
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    iget p1, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-ge v3, p1, :cond_1

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    :cond_1
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 33
    .line 34
    if-gt v2, p1, :cond_5

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget v4, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 40
    .line 41
    if-gt v4, p1, :cond_5

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    if-ne v3, v5, :cond_4

    .line 45
    .line 46
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 47
    .line 48
    add-int/2addr v4, v2

    .line 49
    if-ge p1, v4, :cond_3

    .line 50
    .line 51
    const/4 p1, -0x1

    .line 52
    return p1

    .line 53
    :cond_3
    sub-int/2addr p1, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v4, 0x1

    .line 56
    if-ne v3, v4, :cond_5

    .line 57
    .line 58
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 59
    .line 60
    add-int/2addr p1, v2

    .line 61
    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    return p1
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->a:Landroidx/core/util/Pools$SimplePool;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/util/Pools$SimplePool;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 17
    .line 18
    iput p2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 19
    .line 20
    iput p3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 24
    .line 25
    iput p2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 26
    .line 27
    iput p3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 28
    .line 29
    return-object v0
.end method

.method public final i(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/RecyclerView$6;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_3

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 24
    .line 25
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 26
    .line 27
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$6;->e(II)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Unknown update op type for "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 52
    .line 53
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 54
    .line 55
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$6;->c(II)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 60
    .line 61
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 62
    .line 63
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$6;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v1, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->T(IIZ)V

    .line 67
    .line 68
    .line 69
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->p0:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 73
    .line 74
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 75
    .line 76
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$6;->d(II)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final j()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/AdapterHelper;->e:Landroidx/recyclerview/widget/OpReorderer;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    sub-int/2addr v3, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_1
    const/16 v7, 0x8

    .line 18
    .line 19
    const/4 v8, -0x1

    .line 20
    if-ltz v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 27
    .line 28
    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 29
    .line 30
    if-ne v9, v7, :cond_1

    .line 31
    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    move v6, v4

    .line 36
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v3, v8

    .line 40
    :goto_2
    const/4 v6, 0x2

    .line 41
    const/4 v9, 0x4

    .line 42
    if-eq v3, v8, :cond_22

    .line 43
    .line 44
    add-int/lit8 v7, v3, 0x1

    .line 45
    .line 46
    iget-object v10, v1, Landroidx/recyclerview/widget/OpReorderer;->a:Landroidx/recyclerview/widget/AdapterHelper;

    .line 47
    .line 48
    iget-object v11, v10, Landroidx/recyclerview/widget/AdapterHelper;->a:Landroidx/core/util/Pools$SimplePool;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    check-cast v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 55
    .line 56
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    check-cast v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 61
    .line 62
    iget v14, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 63
    .line 64
    if-eq v14, v4, :cond_1d

    .line 65
    .line 66
    if-eq v14, v6, :cond_b

    .line 67
    .line 68
    if-eq v14, v9, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget v5, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 72
    .line 73
    iget v6, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 74
    .line 75
    if-ge v5, v6, :cond_5

    .line 76
    .line 77
    add-int/lit8 v6, v6, -0x1

    .line 78
    .line 79
    iput v6, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    iget v14, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 83
    .line 84
    add-int/2addr v6, v14

    .line 85
    if-ge v5, v6, :cond_6

    .line 86
    .line 87
    add-int/lit8 v14, v14, -0x1

    .line 88
    .line 89
    iput v14, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 90
    .line 91
    iget v5, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 92
    .line 93
    invoke-virtual {v10, v9, v5, v4}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    goto :goto_4

    .line 98
    :cond_6
    :goto_3
    const/4 v4, 0x0

    .line 99
    :goto_4
    iget v5, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 100
    .line 101
    iget v6, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 102
    .line 103
    if-gt v5, v6, :cond_7

    .line 104
    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    iput v6, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_7
    iget v14, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 111
    .line 112
    add-int/2addr v6, v14

    .line 113
    if-ge v5, v6, :cond_8

    .line 114
    .line 115
    sub-int/2addr v6, v5

    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 117
    .line 118
    invoke-virtual {v10, v9, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 123
    .line 124
    sub-int/2addr v5, v6

    .line 125
    iput v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_8
    :goto_5
    const/4 v8, 0x0

    .line 129
    :goto_6
    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 133
    .line 134
    if-lez v5, :cond_9

    .line 135
    .line 136
    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v13}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :goto_7
    if-eqz v4, :cond_a

    .line 147
    .line 148
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_a
    if-eqz v8, :cond_0

    .line 152
    .line 153
    invoke-virtual {v2, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_b
    iget v9, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 159
    .line 160
    iget v14, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 161
    .line 162
    if-ge v9, v14, :cond_d

    .line 163
    .line 164
    iget v15, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 165
    .line 166
    if-ne v15, v9, :cond_c

    .line 167
    .line 168
    iget v15, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 169
    .line 170
    sub-int v9, v14, v9

    .line 171
    .line 172
    if-ne v15, v9, :cond_c

    .line 173
    .line 174
    move v5, v4

    .line 175
    :goto_8
    const/4 v9, 0x0

    .line 176
    goto :goto_9

    .line 177
    :cond_c
    const/4 v5, 0x0

    .line 178
    goto :goto_8

    .line 179
    :cond_d
    iget v15, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 180
    .line 181
    add-int/lit8 v5, v14, 0x1

    .line 182
    .line 183
    if-ne v15, v5, :cond_e

    .line 184
    .line 185
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 186
    .line 187
    sub-int/2addr v9, v14

    .line 188
    if-ne v5, v9, :cond_e

    .line 189
    .line 190
    move v5, v4

    .line 191
    move v9, v5

    .line 192
    goto :goto_9

    .line 193
    :cond_e
    move v9, v4

    .line 194
    const/4 v5, 0x0

    .line 195
    :goto_9
    iget v15, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 196
    .line 197
    if-ge v14, v15, :cond_f

    .line 198
    .line 199
    add-int/lit8 v15, v15, -0x1

    .line 200
    .line 201
    iput v15, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 202
    .line 203
    goto :goto_a

    .line 204
    :cond_f
    iget v8, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 205
    .line 206
    add-int/2addr v15, v8

    .line 207
    if-ge v14, v15, :cond_10

    .line 208
    .line 209
    add-int/lit8 v8, v8, -0x1

    .line 210
    .line 211
    iput v8, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 212
    .line 213
    iput v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 214
    .line 215
    iput v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 216
    .line 217
    iget v3, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 218
    .line 219
    if-nez v3, :cond_0

    .line 220
    .line 221
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v11, v13}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_10
    :goto_a
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 230
    .line 231
    iget v8, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 232
    .line 233
    if-gt v4, v8, :cond_11

    .line 234
    .line 235
    add-int/lit8 v8, v8, 0x1

    .line 236
    .line 237
    iput v8, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 238
    .line 239
    goto :goto_b

    .line 240
    :cond_11
    iget v14, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 241
    .line 242
    add-int/2addr v8, v14

    .line 243
    if-ge v4, v8, :cond_12

    .line 244
    .line 245
    sub-int/2addr v8, v4

    .line 246
    add-int/lit8 v4, v4, 0x1

    .line 247
    .line 248
    invoke-virtual {v10, v6, v4, v8}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 253
    .line 254
    iget v6, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 255
    .line 256
    sub-int/2addr v4, v6

    .line 257
    iput v4, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 258
    .line 259
    goto :goto_c

    .line 260
    :cond_12
    :goto_b
    const/4 v8, 0x0

    .line 261
    :goto_c
    if-eqz v5, :cond_13

    .line 262
    .line 263
    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v11, v12}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_13
    if-eqz v9, :cond_17

    .line 275
    .line 276
    if-eqz v8, :cond_15

    .line 277
    .line 278
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 279
    .line 280
    iget v5, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 281
    .line 282
    if-le v4, v5, :cond_14

    .line 283
    .line 284
    iget v5, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 285
    .line 286
    sub-int/2addr v4, v5

    .line 287
    iput v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 288
    .line 289
    :cond_14
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 290
    .line 291
    iget v5, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 292
    .line 293
    if-le v4, v5, :cond_15

    .line 294
    .line 295
    iget v5, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 296
    .line 297
    sub-int/2addr v4, v5

    .line 298
    iput v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 299
    .line 300
    :cond_15
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 301
    .line 302
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 303
    .line 304
    if-le v4, v5, :cond_16

    .line 305
    .line 306
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 307
    .line 308
    sub-int/2addr v4, v5

    .line 309
    iput v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 310
    .line 311
    :cond_16
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 312
    .line 313
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 314
    .line 315
    if-le v4, v5, :cond_1b

    .line 316
    .line 317
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 318
    .line 319
    sub-int/2addr v4, v5

    .line 320
    iput v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 321
    .line 322
    goto :goto_d

    .line 323
    :cond_17
    if-eqz v8, :cond_19

    .line 324
    .line 325
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 326
    .line 327
    iget v5, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 328
    .line 329
    if-lt v4, v5, :cond_18

    .line 330
    .line 331
    iget v5, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 332
    .line 333
    sub-int/2addr v4, v5

    .line 334
    iput v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 335
    .line 336
    :cond_18
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 337
    .line 338
    iget v5, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 339
    .line 340
    if-lt v4, v5, :cond_19

    .line 341
    .line 342
    iget v5, v8, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 343
    .line 344
    sub-int/2addr v4, v5

    .line 345
    iput v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 346
    .line 347
    :cond_19
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 348
    .line 349
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 350
    .line 351
    if-lt v4, v5, :cond_1a

    .line 352
    .line 353
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 354
    .line 355
    sub-int/2addr v4, v5

    .line 356
    iput v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 357
    .line 358
    :cond_1a
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 359
    .line 360
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 361
    .line 362
    if-lt v4, v5, :cond_1b

    .line 363
    .line 364
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 365
    .line 366
    sub-int/2addr v4, v5

    .line 367
    iput v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 368
    .line 369
    :cond_1b
    :goto_d
    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 373
    .line 374
    iget v5, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 375
    .line 376
    if-eq v4, v5, :cond_1c

    .line 377
    .line 378
    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    goto :goto_e

    .line 382
    :cond_1c
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    :goto_e
    if-eqz v8, :cond_0

    .line 386
    .line 387
    invoke-virtual {v2, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :cond_1d
    iget v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 393
    .line 394
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 395
    .line 396
    if-ge v4, v5, :cond_1e

    .line 397
    .line 398
    move/from16 v16, v8

    .line 399
    .line 400
    goto :goto_f

    .line 401
    :cond_1e
    const/16 v16, 0x0

    .line 402
    .line 403
    :goto_f
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 404
    .line 405
    if-ge v6, v5, :cond_1f

    .line 406
    .line 407
    add-int/lit8 v16, v16, 0x1

    .line 408
    .line 409
    :cond_1f
    if-gt v5, v6, :cond_20

    .line 410
    .line 411
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 412
    .line 413
    add-int/2addr v6, v5

    .line 414
    iput v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 415
    .line 416
    :cond_20
    iget v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 417
    .line 418
    if-gt v5, v4, :cond_21

    .line 419
    .line 420
    iget v6, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 421
    .line 422
    add-int/2addr v4, v6

    .line 423
    iput v4, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 424
    .line 425
    :cond_21
    add-int v5, v5, v16

    .line 426
    .line 427
    iput v5, v13, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 428
    .line 429
    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    const/4 v3, 0x0

    .line 442
    :goto_10
    if-ge v3, v1, :cond_36

    .line 443
    .line 444
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    check-cast v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 449
    .line 450
    iget v10, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 451
    .line 452
    if-eq v10, v4, :cond_35

    .line 453
    .line 454
    iget-object v11, v0, Landroidx/recyclerview/widget/AdapterHelper;->a:Landroidx/core/util/Pools$SimplePool;

    .line 455
    .line 456
    iget-object v12, v0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/RecyclerView$6;

    .line 457
    .line 458
    if-eq v10, v6, :cond_2c

    .line 459
    .line 460
    if-eq v10, v9, :cond_24

    .line 461
    .line 462
    if-eq v10, v7, :cond_23

    .line 463
    .line 464
    goto/16 :goto_1a

    .line 465
    .line 466
    :cond_23
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->i(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_1a

    .line 470
    .line 471
    :cond_24
    iget v10, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 472
    .line 473
    iget v13, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 474
    .line 475
    add-int/2addr v13, v10

    .line 476
    move v7, v8

    .line 477
    move v14, v10

    .line 478
    const/4 v15, 0x0

    .line 479
    :goto_11
    if-ge v10, v13, :cond_29

    .line 480
    .line 481
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/RecyclerView$6;->b(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 482
    .line 483
    .line 484
    move-result-object v17

    .line 485
    if-nez v17, :cond_27

    .line 486
    .line 487
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/AdapterHelper;->a(I)Z

    .line 488
    .line 489
    .line 490
    move-result v17

    .line 491
    if-eqz v17, :cond_25

    .line 492
    .line 493
    goto :goto_12

    .line 494
    :cond_25
    if-ne v7, v4, :cond_26

    .line 495
    .line 496
    invoke-virtual {v0, v9, v14, v15}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 497
    .line 498
    .line 499
    move-result-object v7

    .line 500
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->i(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 501
    .line 502
    .line 503
    move v14, v10

    .line 504
    const/4 v15, 0x0

    .line 505
    :cond_26
    const/4 v7, 0x0

    .line 506
    goto :goto_13

    .line 507
    :cond_27
    :goto_12
    if-nez v7, :cond_28

    .line 508
    .line 509
    invoke-virtual {v0, v9, v14, v15}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->d(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 514
    .line 515
    .line 516
    move v14, v10

    .line 517
    const/4 v15, 0x0

    .line 518
    :cond_28
    move v7, v4

    .line 519
    :goto_13
    add-int/2addr v15, v4

    .line 520
    add-int/lit8 v10, v10, 0x1

    .line 521
    .line 522
    goto :goto_11

    .line 523
    :cond_29
    iget v10, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 524
    .line 525
    if-eq v15, v10, :cond_2a

    .line 526
    .line 527
    invoke-virtual {v11, v5}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0, v9, v14, v15}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    :cond_2a
    if-nez v7, :cond_2b

    .line 535
    .line 536
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->d(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_1a

    .line 540
    .line 541
    :cond_2b
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->i(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 542
    .line 543
    .line 544
    goto :goto_1a

    .line 545
    :cond_2c
    iget v7, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 546
    .line 547
    iget v10, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 548
    .line 549
    add-int/2addr v10, v7

    .line 550
    move v13, v7

    .line 551
    move v15, v8

    .line 552
    const/4 v14, 0x0

    .line 553
    :goto_14
    if-ge v13, v10, :cond_32

    .line 554
    .line 555
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView$6;->b(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 556
    .line 557
    .line 558
    move-result-object v17

    .line 559
    if-nez v17, :cond_2f

    .line 560
    .line 561
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/AdapterHelper;->a(I)Z

    .line 562
    .line 563
    .line 564
    move-result v17

    .line 565
    if-eqz v17, :cond_2d

    .line 566
    .line 567
    goto :goto_16

    .line 568
    :cond_2d
    if-ne v15, v4, :cond_2e

    .line 569
    .line 570
    invoke-virtual {v0, v6, v7, v14}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 571
    .line 572
    .line 573
    move-result-object v15

    .line 574
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/AdapterHelper;->i(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 575
    .line 576
    .line 577
    move v15, v4

    .line 578
    goto :goto_15

    .line 579
    :cond_2e
    const/4 v15, 0x0

    .line 580
    :goto_15
    const/16 v17, 0x0

    .line 581
    .line 582
    goto :goto_18

    .line 583
    :cond_2f
    :goto_16
    if-nez v15, :cond_30

    .line 584
    .line 585
    invoke-virtual {v0, v6, v7, v14}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 586
    .line 587
    .line 588
    move-result-object v15

    .line 589
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/AdapterHelper;->d(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 590
    .line 591
    .line 592
    move v15, v4

    .line 593
    goto :goto_17

    .line 594
    :cond_30
    const/4 v15, 0x0

    .line 595
    :goto_17
    move/from16 v17, v4

    .line 596
    .line 597
    :goto_18
    if-eqz v15, :cond_31

    .line 598
    .line 599
    sub-int/2addr v13, v14

    .line 600
    sub-int/2addr v10, v14

    .line 601
    move v14, v4

    .line 602
    goto :goto_19

    .line 603
    :cond_31
    add-int/lit8 v14, v14, 0x1

    .line 604
    .line 605
    :goto_19
    add-int/2addr v13, v4

    .line 606
    move/from16 v15, v17

    .line 607
    .line 608
    goto :goto_14

    .line 609
    :cond_32
    iget v10, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 610
    .line 611
    if-eq v14, v10, :cond_33

    .line 612
    .line 613
    invoke-virtual {v11, v5}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v6, v7, v14}, Landroidx/recyclerview/widget/AdapterHelper;->h(III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    :cond_33
    if-nez v15, :cond_34

    .line 621
    .line 622
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->d(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 623
    .line 624
    .line 625
    goto :goto_1a

    .line 626
    :cond_34
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->i(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 627
    .line 628
    .line 629
    goto :goto_1a

    .line 630
    :cond_35
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->i(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 631
    .line 632
    .line 633
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    .line 634
    .line 635
    const/16 v7, 0x8

    .line 636
    .line 637
    goto/16 :goto_10

    .line 638
    .line 639
    :cond_36
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 640
    .line 641
    .line 642
    return-void
.end method

.method public final k(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->a:Landroidx/core/util/Pools$SimplePool;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final l(II)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    const/16 v3, 0x8

    .line 10
    .line 11
    if-ltz v1, :cond_d

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 18
    .line 19
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    if-ne v5, v3, :cond_8

    .line 23
    .line 24
    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 25
    .line 26
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 27
    .line 28
    if-ge v3, v5, :cond_0

    .line 29
    .line 30
    move v7, v3

    .line 31
    move v8, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v8, v3

    .line 34
    move v7, v5

    .line 35
    :goto_1
    if-lt p1, v7, :cond_6

    .line 36
    .line 37
    if-gt p1, v8, :cond_6

    .line 38
    .line 39
    if-ne v7, v3, :cond_3

    .line 40
    .line 41
    if-ne p2, v2, :cond_1

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    if-ne p2, v6, :cond_2

    .line 49
    .line 50
    add-int/lit8 v5, v5, -0x1

    .line 51
    .line 52
    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 53
    .line 54
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_3
    if-ne p2, v2, :cond_4

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    if-ne p2, v6, :cond_5

    .line 65
    .line 66
    add-int/lit8 v3, v3, -0x1

    .line 67
    .line 68
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 69
    .line 70
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    if-ge p1, v3, :cond_c

    .line 74
    .line 75
    if-ne p2, v2, :cond_7

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 80
    .line 81
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_7
    if-ne p2, v6, :cond_c

    .line 87
    .line 88
    add-int/lit8 v3, v3, -0x1

    .line 89
    .line 90
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 91
    .line 92
    add-int/lit8 v5, v5, -0x1

    .line 93
    .line 94
    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 98
    .line 99
    if-gt v3, p1, :cond_a

    .line 100
    .line 101
    if-ne v5, v2, :cond_9

    .line 102
    .line 103
    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 104
    .line 105
    sub-int/2addr p1, v3

    .line 106
    goto :goto_4

    .line 107
    :cond_9
    if-ne v5, v6, :cond_c

    .line 108
    .line 109
    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 110
    .line 111
    add-int/2addr p1, v3

    .line 112
    goto :goto_4

    .line 113
    :cond_a
    if-ne p2, v2, :cond_b

    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_b
    if-ne p2, v6, :cond_c

    .line 121
    .line 122
    add-int/lit8 v3, v3, -0x1

    .line 123
    .line 124
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 125
    .line 126
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    sub-int/2addr p2, v2

    .line 134
    :goto_5
    if-ltz p2, :cond_11

    .line 135
    .line 136
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 141
    .line 142
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a:I

    .line 143
    .line 144
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->a:Landroidx/core/util/Pools$SimplePool;

    .line 145
    .line 146
    if-ne v2, v3, :cond_f

    .line 147
    .line 148
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 149
    .line 150
    iget v5, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->b:I

    .line 151
    .line 152
    if-eq v2, v5, :cond_e

    .line 153
    .line 154
    if-gez v2, :cond_10

    .line 155
    .line 156
    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v1}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_f
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->c:I

    .line 164
    .line 165
    if-gtz v2, :cond_10

    .line 166
    .line 167
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v1}, Landroidx/core/util/Pools$SimplePool;->a(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_11
    return p1
.end method
