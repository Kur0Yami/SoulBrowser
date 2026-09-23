.class Lcom/mycompany/app/web/WebViewActivity$54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$54;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$54;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B1:Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->l6(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B1:Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzj;->c:Lcom/google/android/gms/internal/consent_sdk/zzbq;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzbq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->C1:Z

    .line 32
    .line 33
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->t1(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->l6(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
