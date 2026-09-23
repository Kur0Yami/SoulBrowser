.class final Lorg/apache/commons/text/numbers/DoubleFormat$EngineeringDoubleFormat;
.super Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/numbers/DoubleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EngineeringDoubleFormat"
.end annotation


# virtual methods
.method public final a(Lorg/apache/commons/text/numbers/ParsedDecimal;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 2
    .line 3
    iget v1, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    rem-int/lit8 v1, v0, 0x3

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    xor-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    shr-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    or-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {p1, v1, p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->f(ILorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    throw p1
.end method
