.class public final synthetic Lcom/android/billingclient/api/zzbu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/android/billingclient/api/zzbv;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbu;->c:Lcom/android/billingclient/api/zzbv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbu;->c:Lcom/android/billingclient/api/zzbv;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lcom/android/billingclient/api/zzdb;->k:Lcom/android/billingclient/api/BillingResult;

    .line 10
    .line 11
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->C:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->w(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/zzbv;->d(Lcom/android/billingclient/api/BillingResult;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
