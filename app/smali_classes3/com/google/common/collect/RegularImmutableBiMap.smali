.class final Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final m:Lcom/google/common/collect/RegularImmutableBiMap;


# instance fields
.field public final transient h:Ljava/lang/Object;

.field public final transient i:[Ljava/lang/Object;

.field public final transient j:I

.field public final transient k:I

.field public final transient l:Lcom/google/common/collect/RegularImmutableBiMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/collect/RegularImmutableBiMap;->m:Lcom/google/common/collect/RegularImmutableBiMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->i:[Ljava/lang/Object;

    .line 4
    iput v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->j:I

    .line 5
    iput v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->k:I

    .line 6
    iput-object p0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->l:Lcom/google/common/collect/RegularImmutableBiMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;ILcom/google/common/collect/RegularImmutableBiMap;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->h:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->i:[Ljava/lang/Object;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->j:I

    .line 11
    iput p3, p0, Lcom/google/common/collect/RegularImmutableBiMap;->k:I

    .line 12
    iput-object p4, p0, Lcom/google/common/collect/RegularImmutableBiMap;->l:Lcom/google/common/collect/RegularImmutableBiMap;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->i:[Ljava/lang/Object;

    .line 15
    iput p2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->k:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->j:I

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    .line 17
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->r(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    .line 18
    :goto_0
    invoke-static {p1, p2, v2, v0}, Lcom/google/common/collect/RegularImmutableMap;->p([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 19
    instance-of v3, v0, [Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 20
    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 21
    invoke-static {p1, p2, v2, v0}, Lcom/google/common/collect/RegularImmutableMap;->p([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 22
    instance-of v2, v0, [Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 23
    new-instance v1, Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;ILcom/google/common/collect/RegularImmutableBiMap;)V

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->l:Lcom/google/common/collect/RegularImmutableBiMap;

    return-void

    .line 24
    :cond_1
    check-cast v0, [Ljava/lang/Object;

    .line 25
    aget-object p1, v0, v1

    check-cast p1, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 26
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->a()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 27
    :cond_2
    check-cast v0, [Ljava/lang/Object;

    .line 28
    aget-object p1, v0, v1

    check-cast p1, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 29
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->a()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final c()Lcom/google/common/collect/ImmutableSet;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->j:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->k:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableBiMap;->i:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final d()Lcom/google/common/collect/ImmutableSet;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->j:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->k:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableBiMap;->i:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->k:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->j:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->h:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableBiMap;->i:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1, p1}, Lcom/google/common/collect/RegularImmutableMap;->q(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :cond_0
    return-object p1
.end method

.method public final h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->l:Lcom/google/common/collect/RegularImmutableBiMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->k:I

    .line 2
    .line 3
    return v0
.end method
