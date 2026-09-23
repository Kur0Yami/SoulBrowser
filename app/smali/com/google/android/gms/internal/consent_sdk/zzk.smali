.class public final Lcom/google/android/gms/internal/consent_sdk/zzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field public final a:Lcom/google/android/gms/internal/consent_sdk/zztg;

.field public final b:Lcom/google/android/gms/internal/consent_sdk/zzx;

.field public final c:Lcom/google/android/gms/internal/consent_sdk/zztg;

.field public final d:Lcom/google/android/gms/internal/consent_sdk/zztg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zzx;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->a:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->b:Lcom/google/android/gms/internal/consent_sdk/zzx;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->c:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->d:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->a:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->b:Lcom/google/android/gms/internal/consent_sdk/zzx;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzx;->a()Lcom/google/android/gms/internal/consent_sdk/zzw;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->c:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzbq;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->d:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 30
    .line 31
    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 32
    .line 33
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzw;Lcom/google/android/gms/internal/consent_sdk/zzbq;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V

    .line 34
    .line 35
    .line 36
    return-object v4
.end method
