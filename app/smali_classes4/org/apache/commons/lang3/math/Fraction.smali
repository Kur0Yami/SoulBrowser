.class public final Lorg/apache/commons/lang3/math/Fraction;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/math/Fraction;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final f:I

.field public transient g:I

.field public transient h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 9
    .line 10
    invoke-direct {v0, v2, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    invoke-direct {v0, v2, v3}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 26
    .line 27
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    invoke-direct {v0, v2, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 37
    .line 38
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 42
    .line 43
    invoke-direct {v0, v3, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 47
    .line 48
    const/4 v5, 0x5

    .line 49
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 53
    .line 54
    invoke-direct {v0, v1, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 58
    .line 59
    invoke-direct {v0, v3, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    .line 63
    .line 64
    invoke-direct {v0, v4, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 5
    .line 6
    iput p2, p0, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Lorg/apache/commons/lang3/math/Fraction;

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 7
    .line 8
    iget p1, p1, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 11
    .line 12
    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 13
    .line 14
    if-ne v2, v0, :cond_1

    .line 15
    .line 16
    if-ne v1, p1, :cond_1

    .line 17
    .line 18
    :goto_0
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    int-to-long v2, v2

    .line 21
    int-to-long v4, p1

    .line 22
    mul-long/2addr v2, v4

    .line 23
    int-to-long v4, v0

    .line 24
    int-to-long v0, v1

    .line 25
    mul-long/2addr v4, v0

    .line 26
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final doubleValue()D
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 2
    .line 3
    int-to-double v0, v0

    .line 4
    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 5
    .line 6
    int-to-double v2, v2

    .line 7
    div-double/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/lang3/math/Fraction;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lorg/apache/commons/lang3/math/Fraction;

    .line 10
    .line 11
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 12
    .line 13
    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 18
    .line 19
    iget p1, p1, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 20
    .line 21
    if-ne v0, p1, :cond_2

    .line 22
    .line 23
    :goto_0
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final floatValue()F
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->g:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v0, v2, v3

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v1, v2, v0

    .line 25
    .line 26
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lorg/apache/commons/lang3/math/Fraction;->g:I

    .line 31
    .line 32
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->g:I

    .line 33
    .line 34
    return v0
.end method

.method public final intValue()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 4
    .line 5
    div-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final longValue()J
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 5
    .line 6
    int-to-long v2, v2

    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->c:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "/"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->f:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->h:Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->h:Ljava/lang/String;

    .line 32
    .line 33
    return-object v0
.end method
