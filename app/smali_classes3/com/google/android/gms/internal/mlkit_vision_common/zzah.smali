.class public final enum Lcom/google/android/gms/internal/mlkit_vision_common/zzah;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

.field public static final synthetic f:[Lcom/google/android/gms/internal/mlkit_vision_common/zzah;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 2
    .line 3
    const-string v1, "DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 12
    .line 13
    const-string v3, "SIGNED"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 20
    .line 21
    const-string v5, "FIXED"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    new-array v5, v5, [Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 29
    .line 30
    aput-object v0, v5, v2

    .line 31
    .line 32
    aput-object v1, v5, v4

    .line 33
    .line 34
    aput-object v3, v5, v6

    .line 35
    .line 36
    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;->f:[Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 37
    .line 38
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_common/zzah;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;->f:[Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_common/zzah;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 8
    .line 9
    return-object v0
.end method
