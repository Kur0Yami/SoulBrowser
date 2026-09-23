.class public final Lcom/google/android/gms/internal/consent_sdk/zzbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field public final a:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field public final b:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field public final c:Lcom/google/android/gms/internal/consent_sdk/zztg;

.field public final d:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field public final e:Lcom/google/android/gms/internal/consent_sdk/zzti;

.field public final f:Lcom/google/android/gms/internal/consent_sdk/zzby;

.field public final g:Lcom/google/android/gms/internal/consent_sdk/zztk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzti;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zzti;Lcom/google/android/gms/internal/consent_sdk/zzby;Lcom/google/android/gms/internal/consent_sdk/zztg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->b:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->c:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->d:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->e:Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->f:Lcom/google/android/gms/internal/consent_sdk/zzby;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->g:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->a:Lcom/google/android/gms/internal/consent_sdk/zztk;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->b:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzad;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->c:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v3, v0

    .line 25
    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzbz;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->d:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move-object v4, v0

    .line 34
    check-cast v4, Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->e:Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzti;->a:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v5, v0

    .line 41
    check-cast v5, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->g:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v7, v0

    .line 50
    check-cast v7, Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 51
    .line 52
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbe;

    .line 53
    .line 54
    iget-object v6, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->f:Lcom/google/android/gms/internal/consent_sdk/zzby;

    .line 55
    .line 56
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/consent_sdk/zzbe;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzbz;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzbs;Lcom/google/android/gms/internal/consent_sdk/zzby;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method
