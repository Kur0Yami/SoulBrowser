.class final Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;
.super Lcom/google/common/io/BaseEncoding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeparatedBaseEncoding"
.end annotation


# instance fields
.field public final d:Lcom/google/common/io/BaseEncoding;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b([BLjava/lang/CharSequence;)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "\n"

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-gez v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    .line 36
    .line 37
    invoke-virtual {p2, p1, v0}, Lcom/google/common/io/BaseEncoding;->b([BLjava/lang/CharSequence;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public final d(Ljava/lang/Appendable;[BI)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/io/BaseEncoding$4;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/common/io/BaseEncoding$4;-><init>(Ljava/lang/Appendable;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/common/io/BaseEncoding;->d(Ljava/lang/Appendable;[BI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final e()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->e()Lcom/google/common/io/BaseEncoding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->j()Lcom/google/common/io/BaseEncoding;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final f(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->f(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final g(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->g(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    add-int/lit8 v0, p1, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x40

    .line 15
    .line 16
    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/google/common/math/IntMath;->a(IILjava/math/RoundingMode;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, p1

    .line 23
    return v0
.end method

.method public final h()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->h()Lcom/google/common/io/BaseEncoding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->j()Lcom/google/common/io/BaseEncoding;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final i(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->i(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final j()Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Already have a separator"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ".withSeparator(\"\n\", 64)"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
