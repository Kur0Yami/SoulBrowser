.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;

.field public final synthetic b:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbo;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbo;->b:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/ump/ConsentForm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbo;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbo;->b:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/ump/ConsentForm;->a(Lcom/mycompany/app/web/WebViewActivity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
