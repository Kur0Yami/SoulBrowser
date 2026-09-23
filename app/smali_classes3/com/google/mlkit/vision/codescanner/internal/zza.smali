.class final Lcom/google/mlkit/vision/codescanner/internal/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/codescanner/internal/zza;->a:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/codescanner/internal/zza;->a:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->f:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method
