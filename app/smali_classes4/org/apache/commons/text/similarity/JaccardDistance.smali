.class public Lorg/apache/commons/text/similarity/JaccardDistance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/EditDistance<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/CharSequence;

    .line 4
    .line 5
    new-instance v0, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    sget-object p2, Lorg/apache/commons/text/similarity/JaccardSimilarity;->c:Lorg/apache/commons/text/similarity/JaccardSimilarity;

    .line 16
    .line 17
    invoke-virtual {p2, v0, p1}, Lorg/apache/commons/text/similarity/JaccardSimilarity;->a(Lorg/apache/commons/text/similarity/SimilarityInput;Lorg/apache/commons/text/similarity/SimilarityInput;)Ljava/lang/Double;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 26
    .line 27
    sub-double/2addr v0, p1

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method
