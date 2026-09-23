.class public final Lcom/google/android/gms/internal/consent_sdk/zzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field public final a:Lcom/google/android/gms/internal/consent_sdk/zzti;

.field public final b:Lcom/google/android/gms/internal/consent_sdk/zztg;

.field public final c:Lcom/google/android/gms/internal/consent_sdk/zztg;

.field public final d:Lcom/google/android/gms/internal/consent_sdk/zztg;

.field public final e:Lcom/google/android/gms/internal/consent_sdk/zzq;

.field public final f:Lcom/google/android/gms/internal/consent_sdk/zzac;

.field public final g:Lcom/google/android/gms/internal/consent_sdk/zztg;

.field public final h:Lcom/google/android/gms/internal/consent_sdk/zztg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzti;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zzq;Lcom/google/android/gms/internal/consent_sdk/zzac;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->a:Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->b:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->c:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->d:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->e:Lcom/google/android/gms/internal/consent_sdk/zzq;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->f:Lcom/google/android/gms/internal/consent_sdk/zzac;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->g:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->h:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/consent_sdk/zzw;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->a:Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzti;->a:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, Landroid/app/Application;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->b:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzad;

    .line 15
    .line 16
    sget-object v3, Lcom/google/android/gms/internal/consent_sdk/zzcz;->a:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zztj;->a(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v4, Lcom/google/android/gms/internal/consent_sdk/zzcz;->b:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    invoke-static {v4}, Lcom/google/android/gms/internal/consent_sdk/zztj;->a(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->c:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v5, v0

    .line 33
    check-cast v5, Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->d:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v6, v0

    .line 42
    check-cast v6, Lcom/google/android/gms/internal/consent_sdk/zzbq;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->e:Lcom/google/android/gms/internal/consent_sdk/zzq;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzq;->a()Lcom/google/android/gms/internal/consent_sdk/zzn;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->f:Lcom/google/android/gms/internal/consent_sdk/zzac;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzac;->a()Lcom/google/android/gms/internal/consent_sdk/zzz;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->g:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v9, v0

    .line 63
    check-cast v9, Lcom/google/android/gms/internal/consent_sdk/zze;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzx;->h:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v10, v0

    .line 72
    check-cast v10, Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 73
    .line 74
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzw;

    .line 75
    .line 76
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/consent_sdk/zzw;-><init>(Landroid/app/Application;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzbq;Lcom/google/android/gms/internal/consent_sdk/zzn;Lcom/google/android/gms/internal/consent_sdk/zzz;Lcom/google/android/gms/internal/consent_sdk/zze;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V

    .line 77
    .line 78
    .line 79
    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzx;->a()Lcom/google/android/gms/internal/consent_sdk/zzw;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
