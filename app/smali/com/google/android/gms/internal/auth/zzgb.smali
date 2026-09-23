.class final Lcom/google/android/gms/internal/auth/zzgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzgi;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/zzfx;

.field public final b:Lcom/google/android/gms/internal/auth/zzgz;

.field public final c:Lcom/google/android/gms/internal/auth/zzem;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzgb;->b:Lcom/google/android/gms/internal/auth/zzgz;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzgb;->c:Lcom/google/android/gms/internal/auth/zzem;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzgb;->a:Lcom/google/android/gms/internal/auth/zzfx;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->c:Lcom/google/android/gms/internal/auth/zzem;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzem;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzeq;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final d(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->b:Lcom/google/android/gms/internal/auth/zzgz;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public final e(Lcom/google/android/gms/internal/auth/zzev;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->b:Lcom/google/android/gms/internal/auth/zzgz;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzha;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->b:Lcom/google/android/gms/internal/auth/zzgz;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->c:Lcom/google/android/gms/internal/auth/zzem;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzem;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdt;)V
    .locals 0

    .line 1
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/auth/zzev;

    .line 3
    .line 4
    iget-object p3, p2, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    .line 5
    .line 6
    sget-object p4, Lcom/google/android/gms/internal/auth/zzha;->e:Lcom/google/android/gms/internal/auth/zzha;

    .line 7
    .line 8
    if-eq p3, p4, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->a()Lcom/google/android/gms/internal/auth/zzha;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iput-object p3, p2, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    .line 16
    .line 17
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/auth/zzeu;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    throw p1
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzgk;->a:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->b:Lcom/google/android/gms/internal/auth/zzgz;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/auth/zzev;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgb;->a:Lcom/google/android/gms/internal/auth/zzfx;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzev;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->b()Lcom/google/android/gms/internal/auth/zzev;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzev;->h(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/auth/zzet;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzev;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v0, v0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v2, Lcom/google/android/gms/internal/auth/zzgf;->c:Lcom/google/android/gms/internal/auth/zzgf;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/auth/zzgf;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/auth/zzgi;->f(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzev;->d()V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 56
    .line 57
    return-object v0
.end method
