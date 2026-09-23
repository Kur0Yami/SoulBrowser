.class final Lcom/google/android/gms/internal/consent_sdk/zzpt;
.super Lcom/google/android/gms/internal/consent_sdk/zzpq;
.source "SourceFile"


# instance fields
.field public final g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;-><init>(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpt;->g:Ljava/io/OutputStream;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string p2, "out"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public final C()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpt;->g:Ljava/io/OutputStream;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->d:[B

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    .line 10
    .line 11
    iput v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 12
    .line 13
    return-void
.end method

.method public final D(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->C()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E([BI)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->e:I

    .line 4
    .line 5
    sub-int v2, v1, v0

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->d:[B

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-lt v2, p2, :cond_0

    .line 11
    .line 12
    invoke-static {p1, v4, v3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 16
    .line 17
    add-int/2addr p1, p2

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {p1, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->C()V

    .line 27
    .line 28
    .line 29
    sub-int/2addr p2, v2

    .line 30
    if-gt p2, v1, :cond_1

    .line 31
    .line 32
    invoke-static {p1, v2, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iput p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpt;->g:Ljava/io/OutputStream;

    .line 39
    .line 40
    invoke-virtual {v0, p1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final a([BI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->E([BI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(B)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->e:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->C()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->d:[B

    .line 13
    .line 14
    aput-byte p1, v1, v0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 19
    .line 20
    return-void
.end method

.method public final g(IZ)V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->D(I)V

    .line 4
    .line 5
    .line 6
    shl-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->d:[B

    .line 14
    .line 15
    aput-byte p2, v0, p1

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 20
    .line 21
    return-void
.end method

.method public final h([BI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->v(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->E([BI)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final i(ILcom/google/android/gms/internal/consent_sdk/zzpm;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->v(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->j(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->v(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->m(Lcom/google/android/gms/internal/consent_sdk/zzpv;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final k(II)V
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->D(I)V

    .line 4
    .line 5
    .line 6
    shl-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x5

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->y(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->D(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->y(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final m(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->D(I)V

    .line 4
    .line 5
    .line 6
    shl-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->z(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final n(J)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->D(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->z(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final o(II)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->D(I)V

    .line 4
    .line 5
    .line 6
    shl-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 9
    .line 10
    .line 11
    if-ltz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    int-to-long p1, p2

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->B(J)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final p(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->v(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->x(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzn()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->v(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->a(Lcom/google/android/gms/internal/consent_sdk/zzpv;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r(ILjava/lang/String;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->v(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->c(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int v2, v1, v0

    .line 12
    .line 13
    iget v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->e:I

    .line 14
    .line 15
    if-le v2, v3, :cond_0

    .line 16
    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->a(Ljava/lang/String;[BII)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->v(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->E([BI)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_3

    .line 33
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 34
    .line 35
    sub-int v0, v3, v0

    .line 36
    .line 37
    if-le v2, v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->C()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->c(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/consent_sdk/zzsx; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->d:[B

    .line 53
    .line 54
    if-ne v0, v1, :cond_2

    .line 55
    .line 56
    add-int v1, v2, v0

    .line 57
    .line 58
    :try_start_1
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 59
    .line 60
    sub-int/2addr v3, v1

    .line 61
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->a(Ljava/lang/String;[BII)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 66
    .line 67
    sub-int v3, v1, v2

    .line 68
    .line 69
    sub-int/2addr v3, v0

    .line 70
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 71
    .line 72
    .line 73
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    goto :goto_1

    .line 78
    :catch_2
    move-exception v0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->b(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 85
    .line 86
    .line 87
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 88
    .line 89
    invoke-static {p1, v4, v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->a(Ljava/lang/String;[BII)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/consent_sdk/zzsx; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    :goto_0
    return-void

    .line 96
    :goto_1
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzps;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :goto_2
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 103
    .line 104
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/consent_sdk/zzsx; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->e(Ljava/lang/String;Lcom/google/android/gms/internal/consent_sdk/zzsx;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final t(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->v(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final u(II)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->D(I)V

    .line 4
    .line 5
    .line 6
    shl-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final v(I)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->D(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final w(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->D(I)V

    .line 4
    .line 5
    .line 6
    shl-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->A(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->B(J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final x(J)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->D(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->B(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
