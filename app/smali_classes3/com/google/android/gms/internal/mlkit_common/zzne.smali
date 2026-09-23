.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzne;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzba;


# static fields
.field public static final synthetic f:[Lcom/google/android/gms/internal/mlkit_common/zzne;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 2
    .line 3
    const-string v1, "TYPE_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 10
    .line 11
    const-string v3, "CUSTOM"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 18
    .line 19
    const-string v5, "AUTOML_IMAGE_LABELING"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 26
    .line 27
    const-string v7, "BASE_TRANSLATE"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 34
    .line 35
    const-string v9, "CUSTOM_OBJECT_DETECTION"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 42
    .line 43
    const-string v11, "CUSTOM_IMAGE_LABELING"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    new-instance v11, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 50
    .line 51
    const-string v13, "BASE_ENTITY_EXTRACTION"

    .line 52
    .line 53
    const/4 v14, 0x6

    .line 54
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    new-instance v13, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 58
    .line 59
    const-string v15, "BASE_DIGITAL_INK"

    .line 60
    .line 61
    move/from16 v16, v2

    .line 62
    .line 63
    const/4 v2, 0x7

    .line 64
    invoke-direct {v13, v15, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    new-instance v15, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 68
    .line 69
    move/from16 v17, v2

    .line 70
    .line 71
    const-string v2, "TOXICITY_DETECTION"

    .line 72
    .line 73
    move/from16 v18, v4

    .line 74
    .line 75
    const/16 v4, 0x8

    .line 76
    .line 77
    invoke-direct {v15, v2, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 81
    .line 82
    move/from16 v19, v4

    .line 83
    .line 84
    const-string v4, "IMAGE_CAPTIONING"

    .line 85
    .line 86
    move/from16 v20, v6

    .line 87
    .line 88
    const/16 v6, 0x9

    .line 89
    .line 90
    invoke-direct {v2, v4, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    new-instance v4, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 94
    .line 95
    move/from16 v21, v6

    .line 96
    .line 97
    const-string v6, "DIGITAL_INK_SEGMENTATION"

    .line 98
    .line 99
    move/from16 v22, v8

    .line 100
    .line 101
    const/16 v8, 0xa

    .line 102
    .line 103
    invoke-direct {v4, v6, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzne;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    const/16 v6, 0xb

    .line 107
    .line 108
    new-array v6, v6, [Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 109
    .line 110
    aput-object v0, v6, v16

    .line 111
    .line 112
    aput-object v1, v6, v18

    .line 113
    .line 114
    aput-object v3, v6, v20

    .line 115
    .line 116
    aput-object v5, v6, v22

    .line 117
    .line 118
    aput-object v7, v6, v10

    .line 119
    .line 120
    aput-object v9, v6, v12

    .line 121
    .line 122
    aput-object v11, v6, v14

    .line 123
    .line 124
    aput-object v13, v6, v17

    .line 125
    .line 126
    aput-object v15, v6, v19

    .line 127
    .line 128
    aput-object v2, v6, v21

    .line 129
    .line 130
    aput-object v4, v6, v8

    .line 131
    .line 132
    sput-object v6, Lcom/google/android/gms/internal/mlkit_common/zzne;->f:[Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 133
    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzne;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzne;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzne;->f:[Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzne;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzne;->c:I

    return v0
.end method
