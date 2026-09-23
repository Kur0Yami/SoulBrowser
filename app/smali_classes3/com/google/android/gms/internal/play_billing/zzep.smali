.class final Lcom/google/android/gms/internal/play_billing/zzep;
.super Lcom/google/android/gms/internal/play_billing/zzes;
.source "SourceFile"


# instance fields
.field public final g:[B

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzes;-><init>()V

    .line 2
    .line 3
    .line 4
    add-int v0, p2, p3

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzev;->q(III)I

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzep;->g:[B

    .line 11
    .line 12
    iput p2, p0, Lcom/google/android/gms/internal/play_billing/zzep;->h:I

    .line 13
    .line 14
    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzep;->i:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzep;->i:I

    .line 4
    .line 5
    sub-int v0, v1, v0

    .line 6
    .line 7
    or-int/2addr v0, p1

    .line 8
    if-gez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    const-string v1, "Index < 0: "

    .line 15
    .line 16
    invoke-static {p1, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_0
    const-string v2, "Index > length: "

    .line 25
    .line 26
    const-string v3, ", "

    .line 27
    .line 28
    invoke-static {v2, p1, v1, v3}, Landroidx/work/impl/workers/a;->s(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzep;->h:I

    .line 37
    .line 38
    add-int/2addr v0, p1

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzep;->g:[B

    .line 40
    .line 41
    aget-byte p1, p1, v0

    .line 42
    .line 43
    return p1
.end method

.method public final c(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzep;->g:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzep;->h:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    aget-byte p1, v0, v1

    .line 7
    .line 8
    return p1
.end method

.method public final g(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzep;->g:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzep;->h:I

    .line 4
    .line 5
    invoke-static {v0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzgb;->a([BIII)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzep;->i:I

    return v0
.end method

.method public final k(II)Lcom/google/android/gms/internal/play_billing/zzev;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzep;->i:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzev;->q(III)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzev;->f:Lcom/google/android/gms/internal/play_billing/zzev;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzep;->h:I

    .line 13
    .line 14
    add-int/2addr v0, p1

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzep;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzep;->g:[B

    .line 18
    .line 19
    invoke-direct {p1, v1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzep;-><init>([BII)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public final m(Lcom/google/android/gms/internal/play_billing/zzem;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzez;

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzep;->h:I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzep;->i:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzep;->g:[B

    .line 8
    .line 9
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzez;->z([BII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/play_billing/zzev;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzet;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzep;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzev;->p(Lcom/google/android/gms/internal/play_billing/zzev;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzev;->i()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzep;->i:I

    .line 20
    .line 21
    if-gt v2, v1, :cond_5

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzev;->i()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-gt v2, v1, :cond_4

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzep;->g:[B

    .line 31
    .line 32
    iget v4, p0, Lcom/google/android/gms/internal/play_billing/zzep;->h:I

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzet;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzet;->g:[B

    .line 39
    .line 40
    invoke-static {v3, p1, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzev;->s([B[BIII)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzep;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzep;

    .line 50
    .line 51
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzep;->g:[B

    .line 52
    .line 53
    iget p1, p1, Lcom/google/android/gms/internal/play_billing/zzep;->h:I

    .line 54
    .line 55
    invoke-static {v3, v0, v4, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzev;->s([B[BIII)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzev;->k(II)Lcom/google/android/gms/internal/play_billing/zzev;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    add-int/2addr v2, v4

    .line 65
    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzep;->k(II)Lcom/google/android/gms/internal/play_billing/zzev;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzev;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzev;->i()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const-string v1, "Ran off end of other: 0, "

    .line 81
    .line 82
    const-string v3, ", "

    .line 83
    .line 84
    invoke-static {v1, v2, p1, v3}, Landroidx/work/impl/workers/a;->s(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Length too large: "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1
.end method
