.class public final synthetic Lcom/google/mlkit/vision/codescanner/internal/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/OptionalModuleApi;


# static fields
.field public static final synthetic c:Lcom/google/mlkit/vision/codescanner/internal/zzc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/codescanner/internal/zzc;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/mlkit/vision/codescanner/internal/zzc;->c:Lcom/google/mlkit/vision/codescanner/internal/zzc;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getOptionalFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/codescanner/internal/zze;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    .line 5
    .line 6
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->b:Lcom/google/android/gms/common/Feature;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 10
    .line 11
    return-object v0
.end method
