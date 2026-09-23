.class public final Lcom/google/android/gms/internal/consent_sdk/zzce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field public final a:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field public final b:Lcom/google/android/gms/internal/consent_sdk/zztg;

.field public final c:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field public final d:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field public final e:Lcom/google/android/gms/internal/consent_sdk/zztf;

.field public final f:Lcom/google/android/gms/internal/consent_sdk/zztk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzti;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zzap;Lcom/google/android/gms/internal/consent_sdk/zztf;Lcom/google/android/gms/internal/consent_sdk/zztg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->a:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->b:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->c:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->d:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->e:Lcom/google/android/gms/internal/consent_sdk/zztf;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->f:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/consent_sdk/zzcd;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->a:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Landroid/app/Application;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->b:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v3, v0

    .line 17
    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzbz;

    .line 18
    .line 19
    sget-object v4, Lcom/google/android/gms/internal/consent_sdk/zzcz;->a:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {v4}, Lcom/google/android/gms/internal/consent_sdk/zztj;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object v5, Lcom/google/android/gms/internal/consent_sdk/zzcz;->b:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zztj;->a(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->c:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v6, v0

    .line 36
    check-cast v6, Lcom/google/android/gms/internal/consent_sdk/zze;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->d:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 39
    .line 40
    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzap;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzap;->a()Lcom/google/android/gms/internal/consent_sdk/zzao;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->e:Lcom/google/android/gms/internal/consent_sdk/zztf;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zztf;->zzb()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v8, v0

    .line 53
    check-cast v8, Lcom/google/android/gms/internal/consent_sdk/zzbe;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzce;->f:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 56
    .line 57
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v9, v0

    .line 62
    check-cast v9, Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 63
    .line 64
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzcd;

    .line 65
    .line 66
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/consent_sdk/zzcd;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzbz;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/consent_sdk/zze;Lcom/google/android/gms/internal/consent_sdk/zzao;Lcom/google/android/gms/internal/consent_sdk/zzbe;Lcom/google/android/gms/internal/consent_sdk/zzaq;)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzce;->a()Lcom/google/android/gms/internal/consent_sdk/zzcd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
