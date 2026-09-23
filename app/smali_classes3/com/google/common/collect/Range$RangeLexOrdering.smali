.class final Lcom/google/common/collect/Range$RangeLexOrdering;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RangeLexOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering<",
        "Lcom/google/common/collect/Range<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lcom/google/common/collect/Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/Range$RangeLexOrdering;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/collect/Range$RangeLexOrdering;->c:Lcom/google/common/collect/Ordering;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/google/common/collect/Range;

    .line 2
    .line 3
    check-cast p2, Lcom/google/common/collect/Range;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 6
    .line 7
    iget-object v1, p2, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 8
    .line 9
    sget-object v2, Lcom/google/common/collect/ComparisonChain;->a:Lcom/google/common/collect/ComparisonChain;

    .line 10
    .line 11
    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/ComparisonChain;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p1, p1, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ComparisonChain;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/common/collect/ComparisonChain;->b()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method
