.class public Lorg/apache/commons/text/StrBuilder;
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
        Lorg/apache/commons/text/StrBuilder$StrBuilderReader;,
        Lorg/apache/commons/text/StrBuilder$StrBuilderTokenizer;,
        Lorg/apache/commons/text/StrBuilder$StrBuilderWriter;
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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public c:[C

.field public f:I


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 11
    .line 12
    add-int v2, v1, v0

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->c(I)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    .line 19
    .line 20
    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 24
    .line 25
    add-int/2addr p1, v0

    .line 26
    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 27
    .line 28
    :cond_1
    :goto_0
    return-object p0
.end method

.method public final append(C)Ljava/lang/Appendable;
    .locals 3

    .line 41
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int/lit8 v0, v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lorg/apache/commons/text/StrBuilder;->c(I)V

    .line 43
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/text/StrBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lorg/apache/commons/text/StrBuilder;

    .line 3
    iget v0, p1, Lorg/apache/commons/text/StrBuilder;->f:I

    if-lez v0, :cond_3

    .line 4
    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int v3, v2, v0

    .line 5
    invoke-virtual {p0, v3}, Lorg/apache/commons/text/StrBuilder;->c(I)V

    .line 6
    iget-object p1, p1, Lorg/apache/commons/text/StrBuilder;->c:[C

    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    return-object p0

    .line 8
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 11
    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int v3, v2, v0

    .line 12
    invoke-virtual {p0, v3}, Lorg/apache/commons/text/StrBuilder;->c(I)V

    .line 13
    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    invoke-virtual {p1, v1, v0, v3, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 14
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    return-object p0

    .line 15
    :cond_2
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_4

    .line 16
    check-cast p1, Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 18
    iget v2, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int v3, v2, v0

    .line 19
    invoke-virtual {p0, v3}, Lorg/apache/commons/text/StrBuilder;->c(I)V

    .line 20
    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    invoke-virtual {p1, v1, v0, v3, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 21
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    :cond_3
    :goto_0
    return-object p0

    .line 22
    :cond_4
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_6

    .line 23
    check-cast p1, Ljava/nio/CharBuffer;

    .line 24
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 26
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int v2, v1, v0

    .line 27
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->c(I)V

    .line 28
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr p1, v3

    iget-object v3, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    return-object p0

    .line 30
    :cond_5
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->a(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    return-object p0

    .line 31
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/StrBuilder;->a(Ljava/lang/String;)Lorg/apache/commons/text/StrBuilder;

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_4

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    if-lez p3, :cond_2

    .line 35
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int v2, v1, p3

    .line 36
    invoke-virtual {p0, v2}, Lorg/apache/commons/text/StrBuilder;->c(I)V

    .line 37
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 38
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    :cond_2
    :goto_0
    return-object p0

    .line 39
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_4
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

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
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 19
    .line 20
    add-int v1, v0, p3

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lorg/apache/commons/text/StrBuilder;->c(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    .line 26
    .line 27
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iget p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 31
    .line 32
    add-int/2addr p1, p3

    .line 33
    iput p1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

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
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-le p1, v1, :cond_0

    .line 5
    .line 6
    mul-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    new-array p1, p1, [C

    .line 9
    .line 10
    iput-object p1, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    .line 11
    .line 12
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final charAt(I)C
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

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

.method public final d(II)Ljava/lang/String;
    .locals 2

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 4
    .line 5
    if-le p2, v0, :cond_0

    .line 6
    .line 7
    move p2, v0

    .line 8
    :cond_0
    if-gt p1, p2, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    .line 13
    .line 14
    sub-int/2addr p2, p1

    .line 15
    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 20
    .line 21
    const-string p2, "end < start"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 30
    .line 31
    .line 32
    throw p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lorg/apache/commons/text/StrBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    check-cast p1, Lorg/apache/commons/text/StrBuilder;

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
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 12
    .line 13
    iget v2, p1, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    .line 19
    .line 20
    iget-object p1, p1, Lorg/apache/commons/text/StrBuilder;->c:[C

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
    invoke-virtual {p0}, Lorg/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

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
    iget-object v0, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ltz v1, :cond_0

    .line 9
    .line 10
    mul-int/lit8 v2, v2, 0x1f

    .line 11
    .line 12
    aget-char v3, v0, v1

    .line 13
    .line 14
    add-int/2addr v2, v3

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->f:I

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
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 4
    .line 5
    if-gt p2, v0, :cond_1

    .line 6
    .line 7
    if-gt p1, p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/StrBuilder;->d(II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 15
    .line 16
    sub-int/2addr p2, p1

    .line 17
    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 30
    .line 31
    .line 32
    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/text/StrBuilder;->c:[C

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, p0, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
