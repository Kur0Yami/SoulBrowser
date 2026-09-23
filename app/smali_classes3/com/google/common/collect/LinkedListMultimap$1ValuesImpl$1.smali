.class Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;
.super Lcom/google/common/collect/TransformedListIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedListIterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;Lcom/google/common/collect/LinkedListMultimap$NodeIterator;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;->f:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;->f:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->g:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->l(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->g:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method
