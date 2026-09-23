.class final Lcom/google/android/gms/internal/auth/zzhb;
.super Lcom/google/android/gms/internal/auth/zzgz;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/auth/zzha;->e:Lcom/google/android/gms/internal/auth/zzha;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->a()Lcom/google/android/gms/internal/auth/zzha;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    .line 4
    .line 5
    return-object p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzha;->e:Lcom/google/android/gms/internal/auth/zzha;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast p2, Lcom/google/android/gms/internal/auth/zzha;

    .line 17
    .line 18
    check-cast p1, Lcom/google/android/gms/internal/auth/zzha;

    .line 19
    .line 20
    iget v0, p1, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 21
    .line 22
    iget v1, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    iget-object v1, p1, Lcom/google/android/gms/internal/auth/zzha;->b:[I

    .line 26
    .line 27
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v3, p2, Lcom/google/android/gms/internal/auth/zzha;->b:[I

    .line 32
    .line 33
    iget v4, p1, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 34
    .line 35
    iget v5, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 36
    .line 37
    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p1, Lcom/google/android/gms/internal/auth/zzha;->c:[Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, p2, Lcom/google/android/gms/internal/auth/zzha;->c:[Ljava/lang/Object;

    .line 47
    .line 48
    iget p1, p1, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 49
    .line 50
    iget p2, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 51
    .line 52
    invoke-static {v4, v2, v3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lcom/google/android/gms/internal/auth/zzha;

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    invoke-direct {p1, v0, v1, v3, p2}, Lcom/google/android/gms/internal/auth/zzha;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/auth/zzha;

    .line 63
    .line 64
    move-object v1, p1

    .line 65
    check-cast v1, Lcom/google/android/gms/internal/auth/zzha;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-boolean v0, v1, Lcom/google/android/gms/internal/auth/zzha;->d:Z

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget v0, v1, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 82
    .line 83
    iget v3, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 84
    .line 85
    add-int/2addr v0, v3

    .line 86
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/auth/zzha;->c(I)V

    .line 87
    .line 88
    .line 89
    iget-object v3, p2, Lcom/google/android/gms/internal/auth/zzha;->b:[I

    .line 90
    .line 91
    iget-object v4, v1, Lcom/google/android/gms/internal/auth/zzha;->b:[I

    .line 92
    .line 93
    iget v5, v1, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 94
    .line 95
    iget v6, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 96
    .line 97
    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p2, Lcom/google/android/gms/internal/auth/zzha;->c:[Ljava/lang/Object;

    .line 101
    .line 102
    iget-object v4, v1, Lcom/google/android/gms/internal/auth/zzha;->c:[Ljava/lang/Object;

    .line 103
    .line 104
    iget v5, v1, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 105
    .line 106
    iget p2, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 107
    .line 108
    invoke-static {v3, v2, v4, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    iput v0, v1, Lcom/google/android/gms/internal/auth/zzha;->a:I

    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_3
    :goto_0
    return-object p1
.end method

.method public final bridge synthetic d(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p4, Lcom/google/android/gms/internal/auth/zzha;

    .line 8
    .line 9
    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/auth/zzha;->b(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/auth/zzha;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Lcom/google/android/gms/internal/auth/zzha;->d:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final synthetic f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/internal/auth/zzha;

    .line 4
    .line 5
    iput-object p2, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    .line 6
    .line 7
    return-void
.end method
