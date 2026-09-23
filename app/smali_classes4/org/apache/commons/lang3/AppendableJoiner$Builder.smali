.class public final Lorg/apache/commons/lang3/AppendableJoiner$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/AppendableJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lorg/apache/commons/lang3/AppendableJoiner<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lorg/apache/commons/lang3/function/FailableBiConsumer;


# virtual methods
.method public final a()Lorg/apache/commons/lang3/AppendableJoiner;
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/AppendableJoiner;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->f:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->g:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->h:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/AppendableJoiner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/lang3/function/FailableBiConsumer;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->a()Lorg/apache/commons/lang3/AppendableJoiner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
