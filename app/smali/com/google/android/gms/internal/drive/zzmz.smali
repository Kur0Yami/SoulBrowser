.class final Lcom/google/android/gms/internal/drive/zzmz;
.super Lcom/google/android/gms/internal/drive/zzmx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzmx<",
        "Lcom/google/android/gms/internal/drive/zzmy;",
        "Lcom/google/android/gms/internal/drive/zzmy;",
        ">;"
    }
.end annotation


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->a(Lcom/google/android/gms/internal/drive/zzns;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 6
    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, p1, :cond_0

    .line 14
    .line 15
    aget v3, v1, v2

    .line 16
    .line 17
    ushr-int/lit8 v3, v3, 0x3

    .line 18
    .line 19
    aget-object v4, v0, v2

    .line 20
    .line 21
    invoke-interface {p2, v3, v4}, Lcom/google/android/gms/internal/drive/zzns;->n(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    .line 4
    .line 5
    iput-object p2, p1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    .line 6
    .line 7
    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/internal/drive/zzmy;

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/drive/zzmy;->e:Lcom/google/android/gms/internal/drive/zzmy;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/drive/zzmy;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p2, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    iget-object v2, p1, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 20
    .line 21
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p2, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 26
    .line 27
    iget v4, p1, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v3, v5, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p2, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {p2, v5, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    new-instance p2, Lcom/google/android/gms/internal/drive/zzmy;

    .line 45
    .line 46
    invoke-direct {p2, v0, v2, p1}, Lcom/google/android/gms/internal/drive/zzmy;-><init>(I[I[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object p2
.end method

.method public final synthetic f(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzmy;->b()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final synthetic g(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    .line 4
    .line 5
    return-object p1
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/drive/zzmy;->d:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 12
    .line 13
    if-ge v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p1, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 16
    .line 17
    aget v2, v2, v0

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    ushr-int/2addr v2, v3

    .line 21
    iget-object v4, p1, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object v4, v4, v0

    .line 24
    .line 25
    check-cast v4, Lcom/google/android/gms/internal/drive/zzjc;

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-static {v5}, Lcom/google/android/gms/internal/drive/zzjr;->g(I)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    shl-int/lit8 v5, v6, 0x1

    .line 33
    .line 34
    const/4 v6, 0x2

    .line 35
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/drive/zzjr;->v(II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/2addr v2, v5

    .line 40
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/drive/zzjr;->m(ILcom/google/android/gms/internal/drive/zzjc;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/2addr v3, v2

    .line 45
    add-int/2addr v1, v3

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iput v1, p1, Lcom/google/android/gms/internal/drive/zzmy;->d:I

    .line 50
    .line 51
    return v1
.end method
