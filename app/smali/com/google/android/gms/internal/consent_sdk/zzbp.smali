.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;


# instance fields
.field public final synthetic a:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->a:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbp;->a:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    invoke-interface {p1}, Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;->a()V

    return-void
.end method
