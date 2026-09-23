.class public final synthetic Lcom/android/billingclient/api/zzaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic f:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzaj;->c:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzaj;->f:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdb;->k:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lcom/android/billingclient/api/zzaj;->c:Lcom/android/billingclient/api/BillingClientImpl;

    .line 5
    .line 6
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->C:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 7
    .line 8
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/billingclient/api/zzaj;->f:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->c(Lcom/android/billingclient/api/BillingResult;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
