.class Lcom/google/common/cache/LocalCache$StrongEntry;
.super Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrongEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;

.field public final f:I

.field public final g:Lcom/google/common/cache/ReferenceEntry;

.field public volatile h:Lcom/google/common/cache/LocalCache$ValueReference;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/common/cache/LocalCache;->y:Lcom/google/common/cache/LocalCache$1;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->h:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput p2, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->f:I

    .line 11
    .line 12
    iput-object p3, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->g:Lcom/google/common/cache/ReferenceEntry;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/cache/ReferenceEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->g:Lcom/google/common/cache/ReferenceEntry;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->h:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final e(Lcom/google/common/cache/LocalCache$ValueReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->h:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2
    .line 3
    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
