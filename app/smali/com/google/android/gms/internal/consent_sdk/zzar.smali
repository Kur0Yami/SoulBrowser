.class public final Lcom/google/android/gms/internal/consent_sdk/zzar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field public final a:Lcom/google/android/gms/internal/consent_sdk/zzti;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzti;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzar;->a:Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzar;->a:Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzti;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/app/Application;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzaq;-><init>(Landroid/app/Application;)V

    .line 10
    .line 11
    .line 12
    return-object v1
.end method
