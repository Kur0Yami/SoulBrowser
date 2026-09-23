.class public final synthetic Lcom/android/billingclient/api/zzbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic f:Lcom/android/billingclient/api/PurchasesResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbi;->c:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbi;->f:Lcom/android/billingclient/api/PurchasesResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdb;->k:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/zzbi;->c:Lcom/android/billingclient/api/BillingClientImpl;

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->C:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 8
    .line 9
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/android/billingclient/api/zzbi;->f:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 17
    .line 18
    invoke-interface {v2, v0, v1}, Lcom/android/billingclient/api/PurchasesResponseListener;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
