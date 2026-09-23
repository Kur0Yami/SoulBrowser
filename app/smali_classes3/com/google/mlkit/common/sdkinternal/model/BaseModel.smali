.class public final enum Lcom/google/mlkit/common/sdkinternal/model/BaseModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mlkit/common/sdkinternal/model/BaseModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 2
    .line 3
    const-string v1, "FACE_DETECTION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 10
    .line 11
    const-string v3, "SMART_REPLY"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 18
    .line 19
    const-string v5, "TRANSLATE"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 26
    .line 27
    const-string v7, "ENTITY_EXTRACTION"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 34
    .line 35
    const-string v9, "TOXICITY_DETECTION"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 42
    .line 43
    const-string v11, "IMAGE_CAPTIONING"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const/4 v11, 0x6

    .line 50
    new-array v11, v11, [Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 51
    .line 52
    aput-object v0, v11, v2

    .line 53
    .line 54
    aput-object v1, v11, v4

    .line 55
    .line 56
    aput-object v3, v11, v6

    .line 57
    .line 58
    aput-object v5, v11, v8

    .line 59
    .line 60
    aput-object v7, v11, v10

    .line 61
    .line 62
    aput-object v9, v11, v12

    .line 63
    .line 64
    sput-object v11, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->c:[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 65
    .line 66
    return-void
.end method

.method public static values()[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->c:[Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/model/BaseModel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/model/BaseModel;

    .line 8
    .line 9
    return-object v0
.end method
