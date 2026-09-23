.class final Lorg/apache/commons/text/numbers/ParsedDecimal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:[I

.field public c:I

.field public d:I

.field public e:[C

.field public f:I


# direct methods
.method public constructor <init>(Z[III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->b:[I

    .line 7
    .line 8
    iput p3, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 9
    .line 10
    iput p4, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(ILorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->c(Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->e:[C

    .line 8
    .line 9
    iget p2, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->f:I

    .line 10
    .line 11
    add-int/lit8 v0, p2, 0x1

    .line 12
    .line 13
    iput v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->f:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    aput-char v0, p1, p2

    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    throw p1
.end method

.method public final b(ILorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->c(Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    :cond_0
    const/4 p2, 0x1

    .line 12
    if-ge p1, p2, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    add-int/lit8 p1, p1, 0x2

    .line 19
    .line 20
    :goto_0
    add-int/2addr p1, v0

    .line 21
    return p1

    .line 22
    :cond_1
    iget v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 23
    .line 24
    if-lt p1, v1, :cond_2

    .line 25
    .line 26
    sub-int/2addr p1, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    add-int/2addr v0, p2

    .line 29
    return v0
.end method

.method public final c(Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->a:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->b:[I

    .line 7
    .line 8
    aget p1, p1, v0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    return v0
.end method

.method public final d(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->b:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x5

    .line 7
    if-gt v1, v3, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 12
    .line 13
    sub-int/2addr v1, v2

    .line 14
    if-lt p1, v1, :cond_1

    .line 15
    .line 16
    sub-int/2addr p1, v2

    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    rem-int/lit8 p1, p1, 0x2

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    return v2
.end method

.method public final e(Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->b(ILorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-array v1, v1, [C

    .line 17
    .line 18
    iput-object v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->e:[C

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->f:I

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->a(ILorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)I

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    throw p1
.end method

.method public final f(ILorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    sub-int/2addr v0, p1

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->b(ILorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    if-lez v1, :cond_1

    .line 25
    .line 26
    int-to-double p1, v1

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    .line 32
    .line 33
    .line 34
    :cond_1
    throw v4

    .line 35
    :cond_2
    new-array v0, v3, [C

    .line 36
    .line 37
    iput-object v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->e:[C

    .line 38
    .line 39
    iput v2, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->f:I

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->a(ILorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)I

    .line 42
    .line 43
    .line 44
    throw v4
.end method

.method public final g(I)V
    .locals 2

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    :goto_0
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->b:[I

    .line 6
    .line 7
    aget v1, v1, v0

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 17
    .line 18
    iget v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 19
    .line 20
    sub-int/2addr v1, p1

    .line 21
    add-int/2addr v1, v0

    .line 22
    iput v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 23
    .line 24
    iput p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 25
    .line 26
    return-void
.end method
