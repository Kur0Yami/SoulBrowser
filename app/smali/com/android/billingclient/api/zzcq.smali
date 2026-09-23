.class public final synthetic Lcom/android/billingclient/api/zzcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/zzcv;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/android/billingclient/api/BillingFlowParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzcv;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcq;->a:Lcom/android/billingclient/api/zzcv;

    iput-object p2, p0, Lcom/android/billingclient/api/zzcq;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/billingclient/api/zzcq;->c:Lcom/android/billingclient/api/BillingFlowParams;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/zzcq;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/billingclient/api/zzcq;->c:Lcom/android/billingclient/api/BillingFlowParams;

    iget-object v2, p0, Lcom/android/billingclient/api/zzcq;->a:Lcom/android/billingclient/api/zzcv;

    invoke-static {v2, v0, v1}, Lcom/android/billingclient/api/zzcv;->Q(Lcom/android/billingclient/api/zzcv;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0
.end method
