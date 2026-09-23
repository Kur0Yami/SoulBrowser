.class public final Lcom/google/android/gms/internal/play_billing/zzu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/billingclient/api/zzcm;)Lcom/google/android/gms/internal/play_billing/zzdc;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzp;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzv;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzp;->c:Lcom/google/android/gms/internal/play_billing/zzv;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzt;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzt;-><init>(Lcom/google/android/gms/internal/play_billing/zzp;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzp;->b:Lcom/google/android/gms/internal/play_billing/zzt;

    .line 19
    .line 20
    const-class v2, Lcom/android/billingclient/api/zzcm;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzp;->a:Ljava/lang/Object;

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/zzcm;->a(Lcom/google/android/gms/internal/play_billing/zzp;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    const-string p0, "billingOverrideService.getBillingOverride"

    .line 28
    .line 29
    iput-object p0, v0, Lcom/google/android/gms/internal/play_billing/zzp;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzg;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzg;-><init>(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzo;->j:Lcom/google/android/gms/internal/play_billing/zzd;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iget-object v3, v1, Lcom/google/android/gms/internal/play_billing/zzt;->f:Lcom/google/android/gms/internal/play_billing/zzo;

    .line 42
    .line 43
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzd;->d(Lcom/google/android/gms/internal/play_billing/zzo;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzo;->b(Lcom/google/android/gms/internal/play_billing/zzo;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object v1
.end method
