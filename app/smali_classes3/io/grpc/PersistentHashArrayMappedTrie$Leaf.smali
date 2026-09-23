.class final Lio/grpc/PersistentHashArrayMappedTrie$Leaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/PersistentHashArrayMappedTrie$Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/PersistentHashArrayMappedTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Leaf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/Context$Key;II)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->b:Ljava/lang/Object;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public final b(IILjava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;

    .line 10
    .line 11
    invoke-direct {v0, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, p0, v1, p2}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->c(Lio/grpc/PersistentHashArrayMappedTrie$Leaf;ILio/grpc/PersistentHashArrayMappedTrie$Node;II)Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    if-ne v0, p3, :cond_1

    .line 20
    .line 21
    new-instance p1, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;

    .line 22
    .line 23
    invoke-direct {p1, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    new-instance p1, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;

    .line 28
    .line 29
    const/4 p2, 0x2

    .line 30
    new-array v1, p2, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aput-object v0, v1, v2

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput-object p3, v1, v0

    .line 37
    .line 38
    new-array p2, p2, [Ljava/lang/Object;

    .line 39
    .line 40
    iget-object p3, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->b:Ljava/lang/Object;

    .line 41
    .line 42
    aput-object p3, p2, v2

    .line 43
    .line 44
    aput-object p4, p2, v0

    .line 45
    .line 46
    invoke-direct {p1, v1, p2}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->a:Ljava/lang/Object;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;->b:Ljava/lang/Object;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const-string v1, "Leaf(key=%s value=%s)"

    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
