.class public final enum Lcom/google/android/gms/internal/mlkit_vision_common/zzii;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzag;


# static fields
.field public static final enum f:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

.field public static final synthetic g:[Lcom/google/android/gms/internal/mlkit_vision_common/zzii;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_FORMAT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 10
    .line 11
    const-string v3, "NV16"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 18
    .line 19
    const-string v5, "NV21"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 26
    .line 27
    const-string v7, "YV12"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 34
    .line 35
    const-string v9, "YUV_420_888"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    const/4 v11, 0x7

    .line 39
    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 43
    .line 44
    const-string v12, "JPEG"

    .line 45
    .line 46
    const/4 v13, 0x5

    .line 47
    const/16 v14, 0x8

    .line 48
    .line 49
    invoke-direct {v9, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    .line 52
    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 53
    .line 54
    const-string v15, "BITMAP"

    .line 55
    .line 56
    move/from16 v16, v2

    .line 57
    .line 58
    const/4 v2, 0x6

    .line 59
    invoke-direct {v12, v15, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    .line 60
    .line 61
    .line 62
    sput-object v12, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 63
    .line 64
    new-instance v15, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 65
    .line 66
    move/from16 v17, v4

    .line 67
    .line 68
    const-string v4, "CM_SAMPLE_BUFFER_REF"

    .line 69
    .line 70
    invoke-direct {v15, v4, v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 74
    .line 75
    move/from16 v18, v6

    .line 76
    .line 77
    const-string v6, "UI_IMAGE"

    .line 78
    .line 79
    invoke-direct {v4, v6, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 83
    .line 84
    move/from16 v19, v2

    .line 85
    .line 86
    const-string v2, "CV_PIXEL_BUFFER_REF"

    .line 87
    .line 88
    move/from16 v20, v8

    .line 89
    .line 90
    const/16 v8, 0x9

    .line 91
    .line 92
    invoke-direct {v6, v2, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    const/16 v2, 0xa

    .line 96
    .line 97
    new-array v2, v2, [Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 98
    .line 99
    aput-object v0, v2, v16

    .line 100
    .line 101
    aput-object v1, v2, v17

    .line 102
    .line 103
    aput-object v3, v2, v18

    .line 104
    .line 105
    aput-object v5, v2, v20

    .line 106
    .line 107
    aput-object v7, v2, v10

    .line 108
    .line 109
    aput-object v9, v2, v13

    .line 110
    .line 111
    aput-object v12, v2, v19

    .line 112
    .line 113
    aput-object v15, v2, v11

    .line 114
    .line 115
    aput-object v4, v2, v14

    .line 116
    .line 117
    aput-object v6, v2, v8

    .line 118
    .line 119
    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->g:[Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 120
    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_common/zzii;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->g:[Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->c:I

    return v0
.end method
