.class final Lcom/google/common/collect/StandardTable$Column$KeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->f:Lcom/google/common/collect/StandardTable$Column;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->f:Lcom/google/common/collect/StandardTable$Column;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/common/collect/StandardTable$Column;->i:Lcom/google/common/collect/StandardTable;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->h:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/StandardTable;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->f:Lcom/google/common/collect/StandardTable$Column;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/common/collect/StandardTable$Column;->i:Lcom/google/common/collect/StandardTable;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->h:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/StandardTable;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Predicates;->e(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/common/base/Predicates;->g(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->c:Lcom/google/common/collect/Maps$EntryFunction$1;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/google/common/base/Predicates;->c(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    throw p1
.end method
