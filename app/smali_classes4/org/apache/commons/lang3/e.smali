.class public final synthetic Lorg/apache/commons/lang3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 1
    sget v0, Lorg/apache/commons/lang3/CharUtils;->a:I

    .line 2
    .line 3
    int-to-char p1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
