.class public final Lcom/google/android/gms/internal/auth/zzh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzg;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzab;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/auth/zzab;->a:Lcom/google/android/gms/common/api/Api;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
