.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/AbstractSortedMultiset;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeMultiset$AvlNode;,
        Lcom/google/common/collect/TreeMultiset$Reference;,
        Lcom/google/common/collect/TreeMultiset$Aggregate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public final transient i:Lcom/google/common/collect/TreeMultiset$Reference;

.field public final transient j:Lcom/google/common/collect/GeneralRange;

.field public final transient k:Lcom/google/common/collect/TreeMultiset$AvlNode;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeMultiset$Reference;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/common/collect/TreeMultiset;->k:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)Z
    .locals 6

    .line 1
    const-string v0, "newCount"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Lcom/google/common/collect/CollectPreconditions;->b(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "oldCount"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->b(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Lcom/google/common/collect/GeneralRange;->a(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/google/common/collect/TreeMultiset$Reference;->a:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-array v4, v3, [I

    .line 34
    .line 35
    iget-object v5, p0, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 36
    .line 37
    invoke-virtual {v2, v5, p2, p1, v4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v0, v2, p2}, Lcom/google/common/collect/TreeMultiset$Reference;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    aget p2, v4, v1

    .line 45
    .line 46
    if-ne p2, p1, :cond_1

    .line 47
    .line 48
    :goto_0
    return v3

    .line 49
    :cond_1
    return v1
.end method

.method public final F0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->a0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/common/collect/TreeMultiset;

    .line 6
    .line 7
    invoke-virtual {p1, p3, p4}, Lcom/google/common/collect/TreeMultiset;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final G0(Ljava/lang/Object;)I
    .locals 5

    .line 1
    const-string v0, "count"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Lcom/google/common/collect/CollectPreconditions;->b(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->a(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/google/common/collect/TreeMultiset$Reference;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    const/4 v3, 0x1

    .line 26
    new-array v3, v3, [I

    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 29
    .line 30
    invoke-virtual {v2, v4, p1, v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->p(Ljava/util/Comparator;Ljava/lang/Object;[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, v2, p1}, Lcom/google/common/collect/TreeMultiset$Reference;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    aget p1, v3, v1

    .line 38
    .line 39
    return p1
.end method

.method public final L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    .line 2
    .line 3
    new-instance v1, Lcom/google/common/collect/GeneralRange;

    .line 4
    .line 5
    sget-object v5, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 6
    .line 7
    const/4 v6, 0x1

    .line 8
    iget-object v2, p0, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v7, p1

    .line 13
    move-object v8, p2

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/google/common/collect/GeneralRange;->b(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->k:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 26
    .line 27
    invoke-direct {v0, v1, p1, p2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$Reference;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final Q(Ljava/lang/Object;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/google/common/collect/TreeMultiset$Reference;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Lcom/google/common/collect/GeneralRange;->a(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 20
    .line 21
    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->d(Ljava/util/Comparator;Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return p1

    .line 26
    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final T(ILjava/lang/Object;)I
    .locals 5

    .line 1
    const-string v0, "occurrences"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->b(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/common/collect/TreeMultiset;->Q(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$Reference;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    new-array v2, v2, [I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :try_start_0
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 24
    .line 25
    invoke-virtual {v4, p2}, Lcom/google/common/collect/GeneralRange;->a(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 35
    .line 36
    invoke-virtual {v1, v4, p2, p1, v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->j(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/TreeMultiset$Reference;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    aget p1, v2, v3

    .line 44
    .line 45
    return p1

    .line 46
    :catch_0
    :cond_2
    :goto_0
    return v3
.end method

.method public final a0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    .line 2
    .line 3
    new-instance v1, Lcom/google/common/collect/GeneralRange;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    sget-object v8, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v4, p1

    .line 13
    move-object v5, p2

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/google/common/collect/GeneralRange;->b(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/google/common/collect/TreeMultiset;->k:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 26
    .line 27
    invoke-direct {v0, v1, p1, p2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$Reference;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final add(ILjava/lang/Object;)I
    .locals 5

    .line 1
    const-string v0, "occurrences"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->b(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/common/collect/TreeMultiset;->Q(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/google/common/collect/GeneralRange;->a(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$Reference;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iget-object v3, p0, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v3, p2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 37
    .line 38
    invoke-direct {v3, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset;->k:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 42
    .line 43
    iput-object v3, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->i:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 44
    .line 45
    iput-object p1, v3, Lcom/google/common/collect/TreeMultiset$AvlNode;->h:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 46
    .line 47
    iput-object p1, v3, Lcom/google/common/collect/TreeMultiset$AvlNode;->i:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 48
    .line 49
    iput-object v3, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->h:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/TreeMultiset$Reference;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_1
    const/4 v4, 0x1

    .line 56
    new-array v4, v4, [I

    .line 57
    .line 58
    invoke-virtual {v1, v3, p2, p1, v4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/TreeMultiset$Reference;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    aget p1, v4, v2

    .line 66
    .line 67
    return p1
.end method

.method public final clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/common/collect/GeneralRange;->f:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/google/common/collect/GeneralRange;->i:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->k:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->i:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 14
    .line 15
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :goto_0
    const/4 v2, 0x0

    .line 19
    if-eq v1, v0, :cond_0

    .line 20
    .line 21
    iget-object v3, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->i:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 22
    .line 23
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    iput v4, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->b:I

    .line 28
    .line 29
    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->f:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 30
    .line 31
    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->g:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 32
    .line 33
    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->h:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 34
    .line 35
    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->i:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 36
    .line 37
    move-object v1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->i:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 40
    .line 41
    iput-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->h:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 44
    .line 45
    iput-object v2, v0, Lcom/google/common/collect/TreeMultiset$Reference;->a:Ljava/lang/Object;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance v0, Lcom/google/common/collect/TreeMultiset$2;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$2;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->f:Lcom/google/common/collect/TreeMultiset$Aggregate$2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultiset;->r(Lcom/google/common/collect/TreeMultiset$Aggregate;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->c(J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$2;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/common/collect/Multisets$5;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final k()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$2;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final m()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$3;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final p(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-wide/16 p1, 0x0

    .line 4
    .line 5
    return-wide p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/common/collect/GeneralRange;->j:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v2, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 13
    .line 14
    invoke-interface {v3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->g:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->p(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    return-wide p1

    .line 27
    :cond_1
    if-nez v1, :cond_4

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/common/collect/GeneralRange;->k:Lcom/google/common/collect/BoundType;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->g:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->b(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    return-wide p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->a(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-long v0, v0

    .line 58
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->g:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->b(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    add-long/2addr v0, p1

    .line 65
    return-wide v0

    .line 66
    :cond_4
    iget-object v0, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->g:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->b(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->a(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    int-to-long v2, v2

    .line 77
    add-long/2addr v0, v2

    .line 78
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->f:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->p(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 81
    .line 82
    .line 83
    move-result-wide p1

    .line 84
    add-long/2addr p1, v0

    .line 85
    return-wide p1
.end method

.method public final q(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-wide/16 p1, 0x0

    .line 4
    .line 5
    return-wide p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/common/collect/GeneralRange;->g:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v2, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 13
    .line 14
    invoke-interface {v3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-gez v1, :cond_1

    .line 19
    .line 20
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->f:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->q(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    return-wide p1

    .line 27
    :cond_1
    if-nez v1, :cond_4

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/common/collect/GeneralRange;->h:Lcom/google/common/collect/BoundType;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->f:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->b(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    return-wide p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->a(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-long v0, v0

    .line 58
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->f:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->b(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    add-long/2addr v0, p1

    .line 65
    return-wide v0

    .line 66
    :cond_4
    iget-object v0, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->f:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->b(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->a(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    int-to-long v2, v2

    .line 77
    add-long/2addr v0, v2

    .line 78
    iget-object p2, p2, Lcom/google/common/collect/TreeMultiset$AvlNode;->g:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->q(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 81
    .line 82
    .line 83
    move-result-wide p1

    .line 84
    add-long/2addr p1, v0

    .line 85
    return-wide p1
.end method

.method public final r(Lcom/google/common/collect/TreeMultiset$Aggregate;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$Reference;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->b(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 12
    .line 13
    iget-boolean v4, v3, Lcom/google/common/collect/GeneralRange;->f:Z

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->q(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    sub-long/2addr v1, v4

    .line 22
    :cond_0
    iget-boolean v3, v3, Lcom/google/common/collect/GeneralRange;->i:Z

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->p(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    sub-long/2addr v1, v3

    .line 31
    :cond_1
    return-wide v1
.end method

.method public final size()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->c:Lcom/google/common/collect/TreeMultiset$Aggregate$1;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultiset;->r(Lcom/google/common/collect/TreeMultiset$Aggregate;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->c(J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
