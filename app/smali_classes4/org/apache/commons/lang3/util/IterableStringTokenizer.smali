.class public Lorg/apache/commons/lang3/util/IterableStringTokenizer;
.super Ljava/util/StringTokenizer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/StringTokenizer;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/util/IterableStringTokenizer$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/util/IterableStringTokenizer$1;-><init>(Lorg/apache/commons/lang3/util/IterableStringTokenizer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
