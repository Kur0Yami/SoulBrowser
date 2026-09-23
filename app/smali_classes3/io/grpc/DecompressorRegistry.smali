.class public final Lio/grpc/DecompressorRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/DecompressorRegistry$DecompressorInfo;
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final b:Lcom/google/common/base/Joiner;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x2c

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/Joiner;->d(C)Lcom/google/common/base/Joiner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/grpc/DecompressorRegistry;->b:Lcom/google/common/base/Joiner;

    .line 8
    .line 9
    new-instance v0, Lio/grpc/DecompressorRegistry;

    .line 10
    .line 11
    invoke-direct {v0}, Lio/grpc/DecompressorRegistry;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lio/grpc/Codec$Gzip;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lio/grpc/DecompressorRegistry;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-direct {v2, v1, v3, v0}, Lio/grpc/DecompressorRegistry;-><init>(Lio/grpc/Codec;ZLio/grpc/DecompressorRegistry;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    new-instance v1, Lio/grpc/DecompressorRegistry;

    .line 27
    .line 28
    sget-object v3, Lio/grpc/Codec$Identity;->a:Lio/grpc/Codec$Identity;

    .line 29
    .line 30
    invoke-direct {v1, v3, v0, v2}, Lio/grpc/DecompressorRegistry;-><init>(Lio/grpc/Codec;ZLio/grpc/DecompressorRegistry;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/grpc/DecompressorRegistry;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/grpc/Codec;ZLio/grpc/DecompressorRegistry;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lio/grpc/Decompressor;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Comma is currently not allowed in message encoding"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->e(ZLjava/lang/Object;)V

    .line 4
    iget-object v1, p3, Lio/grpc/DecompressorRegistry;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 5
    iget-object v2, p3, Lio/grpc/DecompressorRegistry;->a:Ljava/util/Map;

    invoke-interface {p1}, Lio/grpc/Decompressor;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 6
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    iget-object p3, p3, Lio/grpc/DecompressorRegistry;->a:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/DecompressorRegistry$DecompressorInfo;

    .line 8
    iget-object v3, v1, Lio/grpc/DecompressorRegistry$DecompressorInfo;->a:Lio/grpc/Decompressor;

    invoke-interface {v3}, Lio/grpc/Decompressor;->a()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    new-instance v4, Lio/grpc/DecompressorRegistry$DecompressorInfo;

    iget-object v5, v1, Lio/grpc/DecompressorRegistry$DecompressorInfo;->a:Lio/grpc/Decompressor;

    iget-boolean v1, v1, Lio/grpc/DecompressorRegistry$DecompressorInfo;->b:Z

    invoke-direct {v4, v5, v1}, Lio/grpc/DecompressorRegistry$DecompressorInfo;-><init>(Lio/grpc/Decompressor;Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    new-instance p3, Lio/grpc/DecompressorRegistry$DecompressorInfo;

    invoke-direct {p3, p1, p2}, Lio/grpc/DecompressorRegistry$DecompressorInfo;-><init>(Lio/grpc/Decompressor;Z)V

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/DecompressorRegistry;->a:Ljava/util/Map;

    .line 13
    new-instance p2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(I)V

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/DecompressorRegistry$DecompressorInfo;

    iget-boolean v0, v0, Lio/grpc/DecompressorRegistry$DecompressorInfo;->b:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 18
    sget-object p2, Lio/grpc/DecompressorRegistry;->b:Lcom/google/common/base/Joiner;

    invoke-virtual {p2, p1}, Lcom/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "US-ASCII"

    .line 19
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    return-void
.end method
