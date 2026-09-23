.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/consent_sdk/zzw;

.field public final synthetic f:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;

.field public final synthetic g:Lcom/google/android/gms/internal/consent_sdk/zzab;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzw;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/gms/internal/consent_sdk/zzab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->c:Lcom/google/android/gms/internal/consent_sdk/zzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->f:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->g:Lcom/google/android/gms/internal/consent_sdk/zzab;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->f:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzt;-><init>(Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->c:Lcom/google/android/gms/internal/consent_sdk/zzw;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzw;->b:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->g:Lcom/google/android/gms/internal/consent_sdk/zzab;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzab;->b:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 18
    .line 19
    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->f:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    iget-object v0, v1, Lcom/google/android/gms/internal/consent_sdk/zzw;->e:Lcom/google/android/gms/internal/consent_sdk/zzbq;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzbq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const-string v0, "UserMessagingPlatform"

    .line 36
    .line 37
    const-string v1, "Failed to load and cache a form due to null consent form resources."

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzbq;->a:Lcom/google/android/gms/internal/consent_sdk/zztm;

    .line 44
    .line 45
    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzag;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzag;->zzb()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzay;

    .line 52
    .line 53
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzay;->a(Lcom/google/android/gms/internal/consent_sdk/zzbs;)Lcom/google/android/gms/internal/consent_sdk/zzay;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzaj;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzaj;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzaz;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzak;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzak;->zza()Lcom/google/android/gms/internal/consent_sdk/zzbe;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x1

    .line 70
    iput-boolean v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzbe;->m:Z

    .line 71
    .line 72
    sget-object v2, Lcom/google/android/gms/internal/consent_sdk/zzcz;->a:Landroid/os/Handler;

    .line 73
    .line 74
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbg;

    .line 75
    .line 76
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzbg;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbq;Lcom/google/android/gms/internal/consent_sdk/zzbe;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method
