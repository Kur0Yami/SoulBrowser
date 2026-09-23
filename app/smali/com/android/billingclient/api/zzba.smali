.class public final synthetic Lcom/android/billingclient/api/zzba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic f:Lcom/android/billingclient/api/ConsumeResponseListener;

.field public final synthetic g:Lcom/android/billingclient/api/ConsumeParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzba;->c:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzba;->f:Lcom/android/billingclient/api/ConsumeResponseListener;

    iput-object p3, p0, Lcom/android/billingclient/api/zzba;->g:Lcom/android/billingclient/api/ConsumeParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdb;->k:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    iget-object v2, p0, Lcom/android/billingclient/api/zzba;->c:Lcom/android/billingclient/api/BillingClientImpl;

    .line 5
    .line 6
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->C:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 7
    .line 8
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/billingclient/api/zzba;->g:Lcom/android/billingclient/api/ConsumeParams;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/billingclient/api/ConsumeParams;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/billingclient/api/zzba;->f:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 16
    .line 17
    invoke-interface {v2, v0, v1}, Lcom/android/billingclient/api/ConsumeResponseListener;->f(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
