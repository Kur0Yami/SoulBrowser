.class final Lcom/google/android/gms/internal/play_billing/zzfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zziu;


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/zzfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzfc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgb;->a:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 7
    .line 8
    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzfc;->a:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfc;->j(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(II)V
    .locals 1

    .line 1
    add-int v0, p2, p2

    .line 2
    .line 3
    shr-int/lit8 p2, p2, 0x1f

    .line 4
    .line 5
    xor-int/2addr p2, v0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->t(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(IJ)V
    .locals 3

    .line 1
    add-long v0, p2, p2

    .line 2
    .line 3
    const/16 v2, 0x3f

    .line 4
    .line 5
    shr-long/2addr p2, v2

    .line 6
    xor-long/2addr p2, v0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfc;->v(IJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d(ILjava/util/List;)V
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 10
    .line 11
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgk;->zza()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    instance-of v4, v3, Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/play_billing/zzfc;->q(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 32
    .line 33
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/play_billing/zzfc;->f(ILcom/google/android/gms/internal/play_billing/zzev;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ge v1, v0, :cond_2

    .line 44
    .line 45
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfc;->q(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    return-void
.end method

.method public final e(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->t(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfc;->v(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->d(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(ILcom/google/android/gms/internal/play_billing/zzev;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->f(ILcom/google/android/gms/internal/play_billing/zzev;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(ILjava/util/List;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzev;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 15
    .line 16
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfc;->f(ILcom/google/android/gms/internal/play_billing/zzev;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final j(DI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->j(IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final k(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->l(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->h(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfc;->j(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->h(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final o(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhm;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzeg;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 5
    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfc;->s(II)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzhm;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzfd;)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x4

    .line 13
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->s(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final p(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->l(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfc;->v(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhm;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzeg;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 5
    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfc;->s(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzeg;->c(Lcom/google/android/gms/internal/play_billing/zzhm;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->u(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzhm;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzfd;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final s(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfd;->a:Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->h(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
