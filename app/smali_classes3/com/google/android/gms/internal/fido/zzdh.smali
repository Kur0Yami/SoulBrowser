.class public final Lcom/google/android/gms/internal/fido/zzdh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/fido/zzdk;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzdk;

    .line 2
    .line 3
    const-string v1, "cause"

    .line 4
    .line 5
    const-class v2, Ljava/lang/Throwable;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/fido/zzdk;-><init>(Ljava/lang/String;Ljava/lang/Class;ZI)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/internal/fido/zzdh;->a:Lcom/google/android/gms/internal/fido/zzdk;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/fido/zzdk;

    .line 14
    .line 15
    const-string v1, "ratelimit_count"

    .line 16
    .line 17
    const-class v2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/fido/zzdk;-><init>(Ljava/lang/String;Ljava/lang/Class;ZI)V

    .line 20
    .line 21
    .line 22
    const-string v0, "sampling_count"

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/internal/fido/zzdk;

    .line 25
    .line 26
    invoke-direct {v1, v0, v2, v3, v3}, Lcom/google/android/gms/internal/fido/zzdk;-><init>(Ljava/lang/String;Ljava/lang/Class;ZI)V

    .line 27
    .line 28
    .line 29
    const-class v0, Lcom/google/android/gms/internal/fido/zzde;

    .line 30
    .line 31
    new-instance v1, Lcom/google/android/gms/internal/fido/zzdk;

    .line 32
    .line 33
    const-string v4, "ratelimit_period"

    .line 34
    .line 35
    invoke-direct {v1, v4, v0, v3, v3}, Lcom/google/android/gms/internal/fido/zzdk;-><init>(Ljava/lang/String;Ljava/lang/Class;ZI)V

    .line 36
    .line 37
    .line 38
    const-string v0, "skipped"

    .line 39
    .line 40
    new-instance v1, Lcom/google/android/gms/internal/fido/zzdk;

    .line 41
    .line 42
    invoke-direct {v1, v0, v2, v3, v3}, Lcom/google/android/gms/internal/fido/zzdk;-><init>(Ljava/lang/String;Ljava/lang/Class;ZI)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/google/android/gms/internal/fido/zzdf;

    .line 46
    .line 47
    const-string v1, "group_by"

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    const-class v4, Ljava/lang/Object;

    .line 51
    .line 52
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/fido/zzdk;-><init>(Ljava/lang/String;Ljava/lang/Class;ZI)V

    .line 53
    .line 54
    .line 55
    const-class v0, Ljava/lang/Boolean;

    .line 56
    .line 57
    new-instance v1, Lcom/google/android/gms/internal/fido/zzdk;

    .line 58
    .line 59
    const-string v2, "forced"

    .line 60
    .line 61
    invoke-direct {v1, v2, v0, v3, v3}, Lcom/google/android/gms/internal/fido/zzdk;-><init>(Ljava/lang/String;Ljava/lang/Class;ZI)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/google/android/gms/internal/fido/zzdg;

    .line 65
    .line 66
    const-class v1, Lcom/google/android/gms/internal/fido/zzfi;

    .line 67
    .line 68
    const-string v2, "tags"

    .line 69
    .line 70
    invoke-direct {v0, v2, v1, v3, v3}, Lcom/google/android/gms/internal/fido/zzdk;-><init>(Ljava/lang/String;Ljava/lang/Class;ZI)V

    .line 71
    .line 72
    .line 73
    const-class v0, Lcom/google/android/gms/internal/fido/zzdl;

    .line 74
    .line 75
    new-instance v1, Lcom/google/android/gms/internal/fido/zzdk;

    .line 76
    .line 77
    const-string v2, "stack_size"

    .line 78
    .line 79
    invoke-direct {v1, v2, v0, v3, v3}, Lcom/google/android/gms/internal/fido/zzdk;-><init>(Ljava/lang/String;Ljava/lang/Class;ZI)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
