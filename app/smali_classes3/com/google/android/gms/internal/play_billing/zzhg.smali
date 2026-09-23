.class final Lcom/google/android/gms/internal/play_billing/zzhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhm;


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/zzhc;

.field public final b:Lcom/google/android/gms/internal/play_billing/zzic;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzic;Lcom/google/android/gms/internal/play_billing/zzhc;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfk;->a:Lcom/google/android/gms/internal/play_billing/zzfj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->b:Lcom/google/android/gms/internal/play_billing/zzic;

    .line 7
    .line 8
    instance-of p1, p2, Lcom/google/android/gms/internal/play_billing/zzfs;

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->c:Z

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->a:Lcom/google/android/gms/internal/play_billing/zzhc;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->b:Lcom/google/android/gms/internal/play_billing/zzic;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzic;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfk;->a:Lcom/google/android/gms/internal/play_billing/zzfj;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfj;->a(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfs;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfs;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfm;->e()Z

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public final c(Lcom/google/android/gms/internal/play_billing/zzfv;Lcom/google/android/gms/internal/play_billing/zzfv;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzfv;->zzc:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/google/android/gms/internal/play_billing/zzfv;->zzc:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzid;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->c:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfs;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfs;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 20
    .line 21
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfs;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/zzfs;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfm;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method public final d(Lcom/google/android/gms/internal/play_billing/zzfv;)I
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzfv;->zzc:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/play_billing/zzid;->d:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    move v1, v3

    .line 10
    move v2, v1

    .line 11
    :goto_0
    iget v4, v0, Lcom/google/android/gms/internal/play_billing/zzid;->a:I

    .line 12
    .line 13
    if-ge v2, v4, :cond_0

    .line 14
    .line 15
    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/zzid;->b:[I

    .line 16
    .line 17
    aget v4, v4, v2

    .line 18
    .line 19
    ushr-int/lit8 v4, v4, 0x3

    .line 20
    .line 21
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzid;->c:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object v5, v5, v2

    .line 24
    .line 25
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 26
    .line 27
    const/16 v6, 0x8

    .line 28
    .line 29
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    add-int/2addr v6, v6

    .line 34
    const/16 v7, 0x10

    .line 35
    .line 36
    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    add-int/2addr v4, v7

    .line 45
    const/16 v7, 0x18

    .line 46
    .line 47
    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfc;->x(I)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzev;->i()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-static {v5, v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->a(III)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {v6, v4, v5, v1}, Landroid/support/v4/media/a;->b(IIII)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iput v1, v0, Lcom/google/android/gms/internal/play_billing/zzid;->d:I

    .line 67
    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->c:Z

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfs;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfs;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 77
    .line 78
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/zzhu;->f:I

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    if-gtz v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhu;->b()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/util/Map$Entry;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfm;->g(Ljava/util/Map$Entry;)I

    .line 105
    .line 106
    .line 107
    throw v2

    .line 108
    :cond_3
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/play_billing/zzhu;->d(I)Ljava/util/Map$Entry;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfm;->g(Ljava/util/Map$Entry;)I

    .line 113
    .line 114
    .line 115
    throw v2

    .line 116
    :cond_4
    :goto_1
    return v1
.end method

.method public final e(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzej;)V
    .locals 0

    .line 1
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 3
    .line 4
    iget-object p3, p2, Lcom/google/android/gms/internal/play_billing/zzfv;->zzc:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 5
    .line 6
    sget-object p4, Lcom/google/android/gms/internal/play_billing/zzid;->f:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 7
    .line 8
    if-eq p3, p4, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzid;->b()Lcom/google/android/gms/internal/play_billing/zzid;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iput-object p3, p2, Lcom/google/android/gms/internal/play_billing/zzfv;->zzc:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 16
    .line 17
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfs;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    throw p1
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzho;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfk;->a:Lcom/google/android/gms/internal/play_billing/zzfj;

    .line 9
    .line 10
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfs;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/zzfs;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfs;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/play_billing/zzfv;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzfv;->zzc:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzid;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->c:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfs;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfs;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 14
    .line 15
    mul-int/lit8 v0, v0, 0x35

    .line 16
    .line 17
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfm;->a:Lcom/google/android/gms/internal/play_billing/zzhp;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhu;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    add-int/2addr v0, p1

    .line 24
    :cond_0
    return v0
.end method

.method public final h(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzfd;)V
    .locals 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfs;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzfs;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfm;->b()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfv;->zzc:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget v1, p1, Lcom/google/android/gms/internal/play_billing/zzid;->a:I

    .line 22
    .line 23
    if-ge v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/zzid;->b:[I

    .line 26
    .line 27
    aget v1, v1, v0

    .line 28
    .line 29
    ushr-int/lit8 v1, v1, 0x3

    .line 30
    .line 31
    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/zzid;->c:[Ljava/lang/Object;

    .line 32
    .line 33
    aget-object v2, v2, v0

    .line 34
    .line 35
    iget-object v3, p2, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 36
    .line 37
    instance-of v4, v2, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 42
    .line 43
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzfc;->p(ILcom/google/android/gms/internal/play_billing/zzev;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzhc;

    .line 48
    .line 49
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzfc;->o(ILcom/google/android/gms/internal/play_billing/zzhc;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void

    .line 56
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfl;

    .line 67
    .line 68
    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/zzfl;->zzc()Lcom/google/android/gms/internal/play_billing/zzit;

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    throw p1
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhg;->a:Lcom/google/android/gms/internal/play_billing/zzhc;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->m()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzhc;->zzw()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->d()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
