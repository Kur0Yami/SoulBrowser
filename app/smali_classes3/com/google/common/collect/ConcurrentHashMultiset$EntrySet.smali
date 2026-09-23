.class final Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
.super Lcom/google/common/collect/AbstractMultiset$EntrySet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultiset<",
        "TE;>.EntrySet;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->f:Lcom/google/common/collect/ConcurrentHashMultiset;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultiset$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultiset;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->f:Lcom/google/common/collect/ConcurrentHashMultiset;

    .line 2
    .line 3
    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$EntrySet;->c:Lcom/google/common/collect/AbstractMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultiset;->g()I

    move-result v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    .line 3
    const-string v3, "arraySize"

    invoke-static {v1, v3}, Lcom/google/common/collect/CollectPreconditions;->b(ILjava/lang/String;)V

    const-wide/16 v3, 0x5

    int-to-long v5, v1

    add-long/2addr v5, v3

    .line 4
    div-int/lit8 v1, v1, 0xa

    int-to-long v3, v1

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Lcom/google/common/primitives/Ints;->c(J)I

    move-result v1

    .line 5
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultiset;->k()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    invoke-static {v2, v0}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    .line 9
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$EntrySet;->c:Lcom/google/common/collect/AbstractMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultiset;->g()I

    move-result v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    const-string v3, "arraySize"

    invoke-static {v1, v3}, Lcom/google/common/collect/CollectPreconditions;->b(ILjava/lang/String;)V

    const-wide/16 v3, 0x5

    int-to-long v5, v1

    add-long/2addr v5, v3

    .line 12
    div-int/lit8 v1, v1, 0xa

    int-to-long v3, v1

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Lcom/google/common/primitives/Ints;->c(J)I

    move-result v1

    .line 13
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultiset;->k()Ljava/util/Iterator;

    move-result-object v0

    .line 15
    invoke-static {v2, v0}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 16
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
