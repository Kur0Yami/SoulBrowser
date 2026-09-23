.class final Lcom/google/android/gms/internal/drive/zzlw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzmf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/drive/zzmf<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/drive/zzlq;

.field public final b:Lcom/google/android/gms/internal/drive/zzmx;

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/drive/zzjy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzlq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzlw;->b:Lcom/google/android/gms/internal/drive/zzmx;

    .line 5
    .line 6
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/drive/zzjy;->f(Lcom/google/android/gms/internal/drive/zzlq;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/drive/zzlw;->c:Z

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzlw;->d:Lcom/google/android/gms/internal/drive/zzjy;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzlw;->a:Lcom/google/android/gms/internal/drive/zzlq;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->b:Lcom/google/android/gms/internal/drive/zzmx;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->d:Lcom/google/android/gms/internal/drive/zzjy;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->d:Lcom/google/android/gms/internal/drive/zzjy;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkb;->b()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/google/android/gms/internal/drive/zzkd;

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/google/android/gms/internal/drive/zzkd;->X()Lcom/google/android/gms/internal/drive/zznr;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lcom/google/android/gms/internal/drive/zznr;->n:Lcom/google/android/gms/internal/drive/zznr;

    .line 34
    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/google/android/gms/internal/drive/zzkd;->k0()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-interface {v2}, Lcom/google/android/gms/internal/drive/zzkd;->F()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    instance-of v3, v1, Lcom/google/android/gms/internal/drive/zzkv;

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v2}, Lcom/google/android/gms/internal/drive/zzkd;->m()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    check-cast v1, Lcom/google/android/gms/internal/drive/zzkv;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzkv;->c:Ljava/util/Map$Entry;

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/google/android/gms/internal/drive/zzkt;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzkx;->a()Lcom/google/android/gms/internal/drive/zzjc;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/drive/zzns;->n(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/drive/zzkd;->m()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/drive/zzns;->n(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string p2, "Found invalid MessageSet item."

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->b:Lcom/google/android/gms/internal/drive/zzmx;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzmx;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/drive/zzit;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->b:Lcom/google/android/gms/internal/drive/zzmx;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzmx;->h(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/drive/zzlw;->c:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlw;->d:Lcom/google/android/gms/internal/drive/zzjy;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/drive/zzjy;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkb;->a:Lcom/google/android/gms/internal/drive/zzmj;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    move v2, v1

    .line 25
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/drive/zzmi;->f:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v1, v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/drive/zzmi;->c(I)Ljava/util/Map$Entry;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzkb;->j(Ljava/util/Map$Entry;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    add-int/2addr v2, v3

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzmi;->f()Ljava/lang/Iterable;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzkb;->j(Ljava/util/Map$Entry;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v2, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    add-int/2addr v0, v2

    .line 72
    :cond_2
    return v0
.end method

.method public final d(Lcom/google/android/gms/internal/drive/zzkk;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->b:Lcom/google/android/gms/internal/drive/zzmx;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzmy;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/drive/zzlw;->c:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlw;->d:Lcom/google/android/gms/internal/drive/zzjy;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/drive/zzjy;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    mul-int/lit8 v0, v0, 0x35

    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkb;->a:Lcom/google/android/gms/internal/drive/zzmj;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzmi;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    add-int/2addr v0, p1

    .line 30
    :cond_0
    return v0
.end method

.method public final e(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzmh;->a:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->b:Lcom/google/android/gms/internal/drive/zzmx;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/drive/zzmx;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzmx;->e(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/drive/zzmx;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->c:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->d:Lcom/google/android/gms/internal/drive/zzjy;

    .line 25
    .line 26
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzmh;->c(Lcom/google/android/gms/internal/drive/zzjy;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->b:Lcom/google/android/gms/internal/drive/zzmx;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmx;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/drive/zzmx;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/drive/zzmy;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->c:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->d:Lcom/google/android/gms/internal/drive/zzjy;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/drive/zzjy;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzkb;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_1
    const/4 p1, 0x1

    .line 39
    return p1
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzlw;->d:Lcom/google/android/gms/internal/drive/zzjy;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkb;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
