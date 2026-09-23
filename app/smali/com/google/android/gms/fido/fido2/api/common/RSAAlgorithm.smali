.class public final enum Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fido/fido2/api/common/Algorithm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;",
        ">;",
        "Lcom/google/android/gms/fido/fido2/api/common/Algorithm;"
    }
.end annotation


# static fields
.field public static final enum f:Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

.field public static final synthetic g:[Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 2
    .line 3
    const/16 v1, -0x101

    .line 4
    .line 5
    const-string v2, "RS256"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 12
    .line 13
    const/16 v2, -0x102

    .line 14
    .line 15
    const-string v4, "RS384"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 22
    .line 23
    const/16 v4, -0x103

    .line 24
    .line 25
    const-string v6, "RS512"

    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    invoke-direct {v2, v6, v7, v4}, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 32
    .line 33
    const/16 v6, -0x106

    .line 34
    .line 35
    const-string v8, "LEGACY_RS1"

    .line 36
    .line 37
    const/4 v9, 0x3

    .line 38
    invoke-direct {v4, v8, v9, v6}, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 42
    .line 43
    const/16 v8, -0x25

    .line 44
    .line 45
    const-string v10, "PS256"

    .line 46
    .line 47
    const/4 v11, 0x4

    .line 48
    invoke-direct {v6, v10, v11, v8}, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    new-instance v8, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 52
    .line 53
    const/16 v10, -0x26

    .line 54
    .line 55
    const-string v12, "PS384"

    .line 56
    .line 57
    const/4 v13, 0x5

    .line 58
    invoke-direct {v8, v12, v13, v10}, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    new-instance v10, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 62
    .line 63
    const/16 v12, -0x27

    .line 64
    .line 65
    const-string v14, "PS512"

    .line 66
    .line 67
    const/4 v15, 0x6

    .line 68
    invoke-direct {v10, v14, v15, v12}, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    new-instance v12, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 72
    .line 73
    const v14, -0xffff

    .line 74
    .line 75
    .line 76
    move/from16 v16, v3

    .line 77
    .line 78
    const-string v3, "RS1"

    .line 79
    .line 80
    move/from16 v17, v5

    .line 81
    .line 82
    const/4 v5, 0x7

    .line 83
    invoke-direct {v12, v3, v5, v14}, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 84
    .line 85
    .line 86
    sput-object v12, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;->f:Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 87
    .line 88
    const/16 v3, 0x8

    .line 89
    .line 90
    new-array v3, v3, [Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 91
    .line 92
    aput-object v0, v3, v16

    .line 93
    .line 94
    aput-object v1, v3, v17

    .line 95
    .line 96
    aput-object v2, v3, v7

    .line 97
    .line 98
    aput-object v4, v3, v9

    .line 99
    .line 100
    aput-object v6, v3, v11

    .line 101
    .line 102
    aput-object v8, v3, v13

    .line 103
    .line 104
    aput-object v10, v3, v15

    .line 105
    .line 106
    aput-object v12, v3, v5

    .line 107
    .line 108
    sput-object v3, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;->g:[Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 109
    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;->g:[Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/fido/fido2/api/common/RSAAlgorithm;->c:I

    return v0
.end method
