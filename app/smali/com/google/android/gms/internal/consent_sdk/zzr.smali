.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;

.field public final synthetic f:Lcom/google/android/gms/internal/consent_sdk/zzg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;Lcom/google/android/gms/internal/consent_sdk/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzr;->c:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzr;->f:Lcom/google/android/gms/internal/consent_sdk/zzg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzr;->f:Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzg;->a()Lcom/google/android/ump/FormError;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzr;->c:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
