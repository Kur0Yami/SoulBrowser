.class public final Lcom/google/android/gms/drive/Drive;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/Drive$zza;,
        Lcom/google/android/gms/drive/Drive$zzb;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/drive/zze;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/drive/zzf;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/google/android/gms/drive/zzg;

    .line 17
    .line 18
    invoke-direct {v3}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    .line 22
    .line 23
    const-string v5, "https://www.googleapis.com/auth/drive.file"

    .line 24
    .line 25
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    .line 29
    .line 30
    const-string v5, "https://www.googleapis.com/auth/drive.appdata"

    .line 31
    .line 32
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    .line 36
    .line 37
    const-string v5, "https://www.googleapis.com/auth/drive"

    .line 38
    .line 39
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    .line 43
    .line 44
    const-string v5, "https://www.googleapis.com/auth/drive.apps"

    .line 45
    .line 46
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Lcom/google/android/gms/common/api/Api;

    .line 50
    .line 51
    const-string v5, "Drive.API"

    .line 52
    .line 53
    invoke-direct {v4, v5, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    .line 57
    .line 58
    const-string v4, "Drive.INTERNAL_API"

    .line 59
    .line 60
    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    .line 64
    .line 65
    const-string v2, "Drive.API_CONNECTIONLESS"

    .line 66
    .line 67
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
