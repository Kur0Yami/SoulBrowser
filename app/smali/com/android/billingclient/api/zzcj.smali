.class public final synthetic Lcom/android/billingclient/api/zzcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/android/billingclient/api/zzcv;

.field public final synthetic f:Lcom/android/billingclient/api/QueryProductDetailsParams;

.field public final synthetic g:Lcom/android/billingclient/api/ProductDetailsResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzcv;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcj;->c:Lcom/android/billingclient/api/zzcv;

    iput-object p2, p0, Lcom/android/billingclient/api/zzcj;->f:Lcom/android/billingclient/api/QueryProductDetailsParams;

    iput-object p3, p0, Lcom/android/billingclient/api/zzcj;->g:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/zzcj;->f:Lcom/android/billingclient/api/QueryProductDetailsParams;

    iget-object v1, p0, Lcom/android/billingclient/api/zzcj;->g:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    iget-object v2, p0, Lcom/android/billingclient/api/zzcj;->c:Lcom/android/billingclient/api/zzcv;

    invoke-static {v2, v0, v1}, Lcom/android/billingclient/api/zzcv;->T(Lcom/android/billingclient/api/zzcv;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method
