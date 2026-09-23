.class final Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;
.super Lcom/google/android/gms/internal/play_billing/zzab;
.source "SourceFile"


# annotations
.annotation build Lcom/android/billingclient/api/zzh;
.end annotation


# virtual methods
.method public final L1(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x21

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v3, "IsBillingProgramAvailableDelegateToBackendCallback"

    .line 8
    .line 9
    invoke-static {p1, v3, v2, v1}, Lcom/android/billingclient/api/zzdg;->a(Landroid/os/Bundle;Ljava/lang/String;II)Lcom/android/billingclient/api/BillingResult;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->W0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 14
    .line 15
    invoke-static {v3, p1, v2, v1}, Lcom/android/billingclient/api/zzdd;->a(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;II)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzje;->Y0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 20
    .line 21
    sget-object v3, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 22
    .line 23
    invoke-static {p1, v3, v2, v1}, Lcom/android/billingclient/api/zzdd;->a(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;II)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method
