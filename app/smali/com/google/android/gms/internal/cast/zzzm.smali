.class final Lcom/google/android/gms/internal/cast/zzzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzzs;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/zzzi;

.field public final b:Lcom/google/android/gms/internal/cast/zzaad;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzaad;Lcom/google/android/gms/internal/cast/zzzi;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzxu;->a:Lcom/google/android/gms/internal/cast/zzxt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzzm;->b:Lcom/google/android/gms/internal/cast/zzaad;

    .line 7
    .line 8
    instance-of p1, p2, Lcom/google/android/gms/internal/cast/zzyb;

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzzm;->c:Z

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzzm;->a:Lcom/google/android/gms/internal/cast/zzzi;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/zzyb;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzyb;->zzb:Lcom/google/android/gms/internal/cast/zzxw;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzxw;->c()Z

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzzu;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzzm;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/cast/zzxu;->a:Lcom/google/android/gms/internal/cast/zzxt;

    .line 9
    .line 10
    check-cast p2, Lcom/google/android/gms/internal/cast/zzyb;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzyb;->zzb:Lcom/google/android/gms/internal/cast/zzxw;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

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
    check-cast p1, Lcom/google/android/gms/internal/cast/zzyb;

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

.method public final d(Lcom/google/android/gms/internal/cast/zzyd;)I
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzyd;->zzc:Lcom/google/android/gms/internal/cast/zzaae;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/cast/zzaae;->c:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iput v3, v0, Lcom/google/android/gms/internal/cast/zzaae;->c:I

    .line 10
    .line 11
    move v1, v3

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzzm;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    check-cast p1, Lcom/google/android/gms/internal/cast/zzyb;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzyb;->zzb:Lcom/google/android/gms/internal/cast/zzxw;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    .line 21
    .line 22
    iget v0, p1, Lcom/google/android/gms/internal/cast/zzzz;->f:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-gtz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzzz;->c()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzxw;->e(Ljava/util/Map$Entry;)I

    .line 49
    .line 50
    .line 51
    throw v2

    .line 52
    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/cast/zzzz;->b(I)Ljava/util/Map$Entry;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzxw;->e(Ljava/util/Map$Entry;)I

    .line 57
    .line 58
    .line 59
    throw v2

    .line 60
    :cond_3
    :goto_0
    return v1
.end method

.method public final e(Lcom/google/android/gms/internal/cast/zzyd;Lcom/google/android/gms/internal/cast/zzyd;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzyd;->zzc:Lcom/google/android/gms/internal/cast/zzaae;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/google/android/gms/internal/cast/zzyd;->zzc:Lcom/google/android/gms/internal/cast/zzaae;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzaae;->equals(Ljava/lang/Object;)Z

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzzm;->c:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p1, Lcom/google/android/gms/internal/cast/zzyb;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzyb;->zzb:Lcom/google/android/gms/internal/cast/zzxw;

    .line 20
    .line 21
    check-cast p2, Lcom/google/android/gms/internal/cast/zzyb;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzyb;->zzb:Lcom/google/android/gms/internal/cast/zzxw;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzxw;->equals(Ljava/lang/Object;)Z

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

.method public final f(Lcom/google/android/gms/internal/cast/zzyd;)I
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzyd;->zzc:Lcom/google/android/gms/internal/cast/zzaae;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzzm;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/cast/zzyb;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzyb;->zzb:Lcom/google/android/gms/internal/cast/zzxw;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzzz;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const v0, 0x19a02fb

    .line 21
    .line 22
    .line 23
    add-int/2addr v0, p1

    .line 24
    return v0

    .line 25
    :cond_0
    const p1, 0x7bc6f

    .line 26
    .line 27
    .line 28
    return p1
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzxq;)V
    .locals 1

    .line 1
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/cast/zzyb;

    .line 3
    .line 4
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzyb;->zzb:Lcom/google/android/gms/internal/cast/zzxw;

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzxw;->b()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Lcom/google/android/gms/internal/cast/zzyd;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzyd;->zzc:Lcom/google/android/gms/internal/cast/zzaae;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/android/gms/internal/cast/zzxv;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/google/android/gms/internal/cast/zzxv;->zzc()Lcom/google/android/gms/internal/cast/zzaao;

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    throw p1
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzzm;->b:Lcom/google/android/gms/internal/cast/zzaad;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzaad;->a(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/cast/zzxu;->a:Lcom/google/android/gms/internal/cast/zzxt;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzxt;->a(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzzm;->a:Lcom/google/android/gms/internal/cast/zzzi;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zzyd;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/cast/zzyd;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzyd;->j(ILcom/google/android/gms/internal/cast/zzyd;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/cast/zzyd;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzzi;->k()Lcom/google/android/gms/internal/cast/zzya;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->d()Lcom/google/android/gms/internal/cast/zzyd;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
