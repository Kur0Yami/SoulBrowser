.class final Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;
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
    name = "CollisionLeaf"
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
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/Context$Key;II)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    iget-object p3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->a:[Ljava/lang/Object;

    .line 3
    .line 4
    array-length v0, p3

    .line 5
    if-ge p2, v0, :cond_1

    .line 6
    .line 7
    aget-object p3, p3, p2

    .line 8
    .line 9
    if-ne p3, p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->b:[Ljava/lang/Object;

    .line 12
    .line 13
    aget-object p1, p1, p2

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method public final b(IILjava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eq v2, p1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;

    .line 13
    .line 14
    invoke-direct {v0, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1, p0, v2, p2}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->c(Lio/grpc/PersistentHashArrayMappedTrie$Leaf;ILio/grpc/PersistentHashArrayMappedTrie$Node;II)Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    :goto_0
    array-length p1, v0

    .line 23
    const/4 p2, -0x1

    .line 24
    if-ge v1, p1, :cond_2

    .line 25
    .line 26
    aget-object p1, v0, v1

    .line 27
    .line 28
    if-ne p1, p3, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v1, p2

    .line 35
    :goto_1
    iget-object p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->b:[Ljava/lang/Object;

    .line 36
    .line 37
    if-eq v1, p2, :cond_3

    .line 38
    .line 39
    array-length p2, v0

    .line 40
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    array-length v0, v0

    .line 45
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    aput-object p3, p2, v1

    .line 50
    .line 51
    aput-object p4, p1, v1

    .line 52
    .line 53
    new-instance p3, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;

    .line 54
    .line 55
    invoke-direct {p3, p2, p1}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-object p3

    .line 59
    :cond_3
    array-length p2, v0

    .line 60
    add-int/lit8 p2, p2, 0x1

    .line 61
    .line 62
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    array-length v1, v0

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    array-length v1, v0

    .line 74
    aput-object p3, p2, v1

    .line 75
    .line 76
    array-length p3, v0

    .line 77
    aput-object p4, p1, p3

    .line 78
    .line 79
    new-instance p3, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;

    .line 80
    .line 81
    invoke-direct {p3, p2, p1}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object p3
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CollisionLeaf("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->b:[Ljava/lang/Object;

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    if-ge v1, v3, :cond_0

    .line 13
    .line 14
    const-string v3, "(key="

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->a:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v3, v3, v1

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, " value="

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    aget-object v2, v2, v1

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ") "

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v1, ")"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
