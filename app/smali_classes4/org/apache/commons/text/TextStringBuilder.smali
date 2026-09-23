.class public Lorg/apache/commons/text/TextStringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/text/Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/TextStringBuilder$TextStringBuilderReader;,
        Lorg/apache/commons/text/TextStringBuilder$TextStringBuilderTokenizer;,
        Lorg/apache/commons/text/TextStringBuilder$TextStringBuilderWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/text/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public c:[C

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;)V
    .locals 3

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-ltz p1, :cond_3

    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gt p1, v0, :cond_3

    .line 11
    .line 12
    if-ltz p2, :cond_2

    .line 13
    .line 14
    add-int v0, p1, p2

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-gt v0, v1, :cond_2

    .line 21
    .line 22
    if-lez p2, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 25
    .line 26
    add-int v2, v1, p2

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/TextStringBuilder;->c(I)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 32
    .line 33
    invoke-virtual {p3, p1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 37
    .line 38
    add-int/2addr p1, p2

    .line 39
    iput p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 43
    .line 44
    const-string p2, "length must be valid"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 51
    .line 52
    const-string p2, "startIndex must be valid"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public final append(C)Ljava/lang/Appendable;
    .locals 3

    .line 58
    iget v0, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    add-int/lit8 v0, v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Lorg/apache/commons/text/TextStringBuilder;->c(I)V

    .line 60
    iget-object v0, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    iget v1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/text/TextStringBuilder;

    const-string v1, "startIndex must be valid"

    const-string v2, "length must be valid"

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Lorg/apache/commons/text/TextStringBuilder;

    .line 3
    sget v0, Lorg/apache/commons/lang3/StringUtils;->a:I

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5
    iget v4, p1, Lorg/apache/commons/text/TextStringBuilder;->f:I

    if-ltz v4, :cond_4

    if-ltz v0, :cond_3

    if-gt v0, v4, :cond_3

    if-lez v0, :cond_9

    .line 6
    iget v1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    add-int v2, v1, v0

    .line 7
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/TextStringBuilder;->c(I)V

    .line 8
    iget-object v2, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    if-ltz v0, :cond_2

    .line 9
    iget v4, p1, Lorg/apache/commons/text/TextStringBuilder;->f:I

    if-gt v0, v4, :cond_2

    if-ltz v0, :cond_1

    .line 10
    iget-object p1, p1, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    invoke-static {p1, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    return-object p0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v0, "end < start"

    invoke-direct {p1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_5
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    .line 17
    check-cast p1, Ljava/lang/StringBuilder;

    .line 18
    sget v0, Lorg/apache/commons/lang3/StringUtils;->a:I

    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ltz v4, :cond_7

    if-ltz v0, :cond_6

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_6

    if-lez v0, :cond_9

    .line 22
    iget v1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    add-int v2, v1, v0

    .line 23
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/TextStringBuilder;->c(I)V

    .line 24
    iget-object v2, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    invoke-virtual {p1, v3, v0, v2, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 25
    iget p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    return-object p0

    .line 26
    :cond_6
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_7
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_8
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_c

    .line 29
    check-cast p1, Ljava/lang/StringBuffer;

    .line 30
    sget v0, Lorg/apache/commons/lang3/StringUtils;->a:I

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ltz v4, :cond_b

    if-ltz v0, :cond_a

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v0, v1, :cond_a

    if-lez v0, :cond_9

    .line 34
    iget v1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    add-int v2, v1, v0

    .line 35
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/TextStringBuilder;->c(I)V

    .line 36
    iget-object v2, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    invoke-virtual {p1, v3, v0, v2, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 37
    iget p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    :cond_9
    :goto_0
    return-object p0

    .line 38
    :cond_a
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_b
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_c
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_10

    .line 41
    check-cast p1, Ljava/nio/CharBuffer;

    .line 42
    sget v0, Lorg/apache/commons/lang3/StringUtils;->a:I

    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 44
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 45
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-ltz v3, :cond_e

    if-ltz v0, :cond_d

    if-gt v0, v3, :cond_d

    .line 46
    iget v1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    add-int v2, v1, v0

    .line 47
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/TextStringBuilder;->c(I)V

    .line 48
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr p1, v3

    iget-object v3, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    return-object p0

    .line 50
    :cond_d
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_e
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v0, p1}, Lorg/apache/commons/text/TextStringBuilder;->a(IILjava/lang/String;)V

    return-object p0

    .line 53
    :cond_10
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->d(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v3, v0, p1}, Lorg/apache/commons/text/TextStringBuilder;->a(IILjava/lang/String;)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-lez p3, :cond_2

    if-ge p2, p3, :cond_1

    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/commons/text/TextStringBuilder;->a(IILjava/lang/String;)V

    return-object p0

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "endIndex must be greater than startIndex"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "endIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b([CII)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-ltz p2, :cond_3

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    if-gt p2, v0, :cond_3

    .line 8
    .line 9
    if-ltz p3, :cond_2

    .line 10
    .line 11
    add-int v0, p2, p3

    .line 12
    .line 13
    array-length v1, p1

    .line 14
    if-gt v0, v1, :cond_2

    .line 15
    .line 16
    if-lez p3, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 19
    .line 20
    add-int v1, v0, p3

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lorg/apache/commons/text/TextStringBuilder;->c(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 26
    .line 27
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iget p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 31
    .line 32
    add-int/2addr p1, p3

    .line 33
    iput p1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 37
    .line 38
    const-string p2, "Invalid length: "

    .line 39
    .line 40
    invoke-static {p3, p2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 49
    .line 50
    const-string p2, "Invalid startIndex: "

    .line 51
    .line 52
    invoke-static {p3, p2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final c(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    sub-int v1, p1, v1

    .line 5
    .line 6
    if-lez v1, :cond_3

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    const/high16 v1, -0x80000000

    .line 12
    .line 13
    xor-int v2, v0, v1

    .line 14
    .line 15
    xor-int v3, p1, v1

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-gez v2, :cond_0

    .line 22
    .line 23
    move v0, p1

    .line 24
    :cond_0
    xor-int/2addr v1, v0

    .line 25
    const/16 v2, -0x9

    .line 26
    .line 27
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_2

    .line 32
    .line 33
    if-ltz p1, :cond_1

    .line 34
    .line 35
    const v0, 0x7ffffff7

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Unable to allocate array size: "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    int-to-long v2, p1

    .line 53
    const-wide v4, 0xffffffffL

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    and-long/2addr v2, v4

    .line 59
    const/16 p1, 0xa

    .line 60
    .line 61
    invoke-static {v2, v3, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {v0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 77
    .line 78
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method public final charAt(I)C
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 8
    .line 9
    aget-char p1, v0, p1

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lorg/apache/commons/text/TextStringBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    check-cast p1, Lorg/apache/commons/text/TextStringBuilder;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget v1, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 12
    .line 13
    iget v2, p1, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 19
    .line 20
    iget-object p1, p1, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 21
    .line 22
    sub-int/2addr v1, v0

    .line 23
    :goto_0
    if-ltz v1, :cond_3

    .line 24
    .line 25
    aget-char v3, v2, v1

    .line 26
    .line 27
    aget-char v4, p1, v1

    .line 28
    .line 29
    if-eq v3, v4, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    :goto_1
    return v0

    .line 36
    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget v3, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 6
    .line 7
    if-ge v1, v3, :cond_0

    .line 8
    .line 9
    mul-int/lit8 v2, v2, 0x1f

    .line 10
    .line 11
    aget-char v3, v0, v1

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final length()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-ltz p1, :cond_5

    .line 2
    .line 3
    iget v0, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 4
    .line 5
    if-gt p2, v0, :cond_4

    .line 6
    .line 7
    if-gt p1, p2, :cond_3

    .line 8
    .line 9
    if-ltz p1, :cond_2

    .line 10
    .line 11
    if-le p2, v0, :cond_0

    .line 12
    .line 13
    move p2, v0

    .line 14
    :cond_0
    if-gt p1, p2, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 19
    .line 20
    sub-int/2addr p2, p1

    .line 21
    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 26
    .line 27
    const-string p2, "end < start"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 36
    .line 37
    .line 38
    throw p2

    .line 39
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 40
    .line 41
    sub-int/2addr p2, p1

    .line 42
    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_4
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_5
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    .line 53
    .line 54
    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 55
    .line 56
    .line 57
    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, p0, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
