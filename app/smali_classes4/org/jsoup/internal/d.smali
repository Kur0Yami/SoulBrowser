.class public final synthetic Lorg/jsoup/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/jsoup/internal/StringUtil$StringJoiner;

    .line 2
    .line 3
    check-cast p2, Lorg/jsoup/internal/StringUtil$StringJoiner;

    .line 4
    .line 5
    sget-object v0, Lorg/jsoup/internal/StringUtil;->a:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/jsoup/internal/StringUtil$StringJoiner;->complete()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Lorg/jsoup/internal/StringUtil$StringJoiner;->append(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    .line 12
    .line 13
    .line 14
    return-object p1
.end method
