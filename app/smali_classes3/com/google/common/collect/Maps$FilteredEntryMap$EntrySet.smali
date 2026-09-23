.class final Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;
.super Lcom/google/common/collect/ForwardingSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/Maps$FilteredEntryMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->c:Lcom/google/common/collect/Maps$FilteredEntryMap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e0()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->c:Lcom/google/common/collect/Maps$FilteredEntryMap;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->j:Ljava/util/Set;

    .line 4
    .line 5
    return-object v0
.end method

.method public final h0()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->c:Lcom/google/common/collect/Maps$FilteredEntryMap;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->j:Ljava/util/Set;

    .line 4
    .line 5
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->c:Lcom/google/common/collect/Maps$FilteredEntryMap;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/common/collect/Maps$FilteredEntryMap;->j:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;Ljava/util/Iterator;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final y0()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->c:Lcom/google/common/collect/Maps$FilteredEntryMap;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->j:Ljava/util/Set;

    .line 4
    .line 5
    return-object v0
.end method
