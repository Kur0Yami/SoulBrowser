.class Lcom/mycompany/app/web/WebViewActivity$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/help/PayHelper$PayListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$17;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$17;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$17$1;->a:Lcom/mycompany/app/web/WebViewActivity$17;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$17$1;->a:Lcom/mycompany/app/web/WebViewActivity$17;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$17;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->u9:Lcom/mycompany/app/help/PayHelper;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/help/PayHelper;->c(Landroid/os/Handler;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$17$1;->a:Lcom/mycompany/app/web/WebViewActivity$17;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$17;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p1, v2, :cond_0

    .line 8
    .line 9
    move p1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, v1

    .line 12
    :goto_0
    sget v3, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->u9:Lcom/mycompany/app/help/PayHelper;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$18;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebViewActivity$18;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :goto_1
    if-eqz p1, :cond_5

    .line 28
    .line 29
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->B1:Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :try_start_0
    new-instance p1, Lcom/google/android/ump/ConsentRequestParameters;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zza;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/consent_sdk/zza;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/consent_sdk/zza;->b()Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->B1:Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 48
    .line 49
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$54;

    .line 50
    .line 51
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$54;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 52
    .line 53
    .line 54
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$55;

    .line 55
    .line 56
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebViewActivity$55;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0, p1, v4, v5}, Lcom/google/android/gms/internal/consent_sdk/zzj;->b(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->B1:Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->a()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->l6(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catch_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->l6(Z)V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_2
    return v1

    .line 81
    :cond_5
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->l6(Z)V

    .line 82
    .line 83
    .line 84
    return v1
.end method

.method public final c(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method
