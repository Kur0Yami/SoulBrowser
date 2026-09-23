.class final Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# virtual methods
.method public final a(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final b(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    .line 2
    .line 3
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .line 4
    .line 5
    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget v1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->k:I

    .line 15
    .line 16
    iget-object v1, p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->f:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_1
    iget v1, p2, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->c:I

    .line 27
    .line 28
    if-nez p3, :cond_2

    .line 29
    .line 30
    new-instance p3, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .line 31
    .line 32
    iget-object v2, p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->l:Ljava/lang/ref/ReferenceQueue;

    .line 33
    .line 34
    invoke-direct {p3, v2, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    new-instance v2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->l:Ljava/lang/ref/ReferenceQueue;

    .line 41
    .line 42
    invoke-direct {v2, v3, v0, v1, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)V

    .line 43
    .line 44
    .line 45
    move-object p3, v2

    .line 46
    :goto_1
    iget-object p2, p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->f:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->m:Ljava/lang/ref/ReferenceQueue;

    .line 49
    .line 50
    invoke-interface {p2, p1, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;->b(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p3, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->f:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 55
    .line 56
    return-object p3
.end method

.method public final c()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    .line 2
    .line 3
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->f:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 6
    .line 7
    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->m:Ljava/lang/ref/ReferenceQueue;

    .line 10
    .line 11
    invoke-direct {v1, p1, p3, p2}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->f:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final e(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    .line 2
    .line 3
    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .line 4
    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    new-instance p4, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->l:Ljava/lang/ref/ReferenceQueue;

    .line 10
    .line 11
    invoke-direct {p4, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    return-object p4

    .line 15
    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->l:Ljava/lang/ref/ReferenceQueue;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
