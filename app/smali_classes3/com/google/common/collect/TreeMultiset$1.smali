.class Lcom/google/common/collect/TreeMultiset$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/TreeMultiset$AvlNode;

.field public final synthetic f:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$1;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$1;->f:Lcom/google/common/collect/TreeMultiset;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$1;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$1;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->b:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$1;->f:Lcom/google/common/collect/TreeMultiset;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/common/collect/TreeMultiset;->Q(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    return v1
.end method
