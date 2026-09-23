.class final enum Lcom/google/common/cache/LocalCache$EntryFactory$3;
.super Lcom/google/common/cache/LocalCache$EntryFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$EntryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "STRONG_WRITE"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/cache/ReferenceEntry;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$EntryFactory;->b(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/cache/ReferenceEntry;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2, p1}, Lcom/google/common/cache/LocalCache$EntryFactory;->c(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final d(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/common/cache/LocalCache$StrongWriteEntry;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)V

    .line 4
    .line 5
    .line 6
    const-wide p2, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide p2, p1, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->i:J

    .line 12
    .line 13
    sget-object p2, Lcom/google/common/cache/LocalCache;->y:Lcom/google/common/cache/LocalCache$1;

    .line 14
    .line 15
    sget-object p2, Lcom/google/common/cache/LocalCache$NullEntry;->c:Lcom/google/common/cache/LocalCache$NullEntry;

    .line 16
    .line 17
    iput-object p2, p1, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->j:Lcom/google/common/cache/ReferenceEntry;

    .line 18
    .line 19
    iput-object p2, p1, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->k:Lcom/google/common/cache/ReferenceEntry;

    .line 20
    .line 21
    return-object p1
.end method
