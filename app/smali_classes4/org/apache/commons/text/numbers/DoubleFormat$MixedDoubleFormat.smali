.class final Lorg/apache/commons/text/numbers/DoubleFormat$MixedDoubleFormat;
.super Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/numbers/DoubleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MixedDoubleFormat"
.end annotation


# virtual methods
.method public final a(Lorg/apache/commons/text/numbers/ParsedDecimal;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 2
    .line 3
    iget v1, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    const/4 v1, 0x1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->e(Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    throw v2

    .line 17
    :cond_0
    invoke-virtual {p1, v1, p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->f(ILorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    throw v2
.end method
