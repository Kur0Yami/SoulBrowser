.class public final Lcom/google/android/gms/internal/cast/zzfr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "usage_and_diagnostics_listener"

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 12
    .line 13
    const-string v5, "usage_and_diagnostics_consents"

    .line 14
    .line 15
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 19
    .line 20
    const-string v6, "usage_and_diagnostics_check_consents"

    .line 21
    .line 22
    invoke-direct {v5, v6, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 23
    .line 24
    .line 25
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 26
    .line 27
    const-string v7, "usage_and_diagnostics_settings_access"

    .line 28
    .line 29
    invoke-direct {v6, v7, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 30
    .line 31
    .line 32
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 33
    .line 34
    const-string v8, "el_capitan"

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    invoke-direct {v7, v8, v2, v3, v9}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x5

    .line 41
    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    .line 42
    .line 43
    aput-object v0, v2, v9

    .line 44
    .line 45
    aput-object v1, v2, v4

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    aput-object v5, v2, v0

    .line 49
    .line 50
    const/4 v0, 0x3

    .line 51
    aput-object v6, v2, v0

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    aput-object v7, v2, v0

    .line 55
    .line 56
    sput-object v2, Lcom/google/android/gms/internal/cast/zzfr;->a:[Lcom/google/android/gms/common/Feature;

    .line 57
    .line 58
    return-void
.end method
