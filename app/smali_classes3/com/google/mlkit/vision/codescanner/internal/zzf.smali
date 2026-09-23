.class public final synthetic Lcom/google/mlkit/vision/codescanner/internal/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/vision/codescanner/internal/GmsBarcodeScanningDelegateActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/codescanner/internal/GmsBarcodeScanningDelegateActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/codescanner/internal/zzf;->a:Lcom/google/mlkit/vision/codescanner/internal/GmsBarcodeScanningDelegateActivity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->f:Landroid/content/Intent;

    .line 4
    .line 5
    iget p1, p1, Landroidx/activity/result/ActivityResult;->c:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, "extra_barcode_result"

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, [B

    .line 29
    .line 30
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;

    .line 37
    .line 38
    new-instance v0, Lcom/google/mlkit/vision/barcode/common/Barcode;

    .line 39
    .line 40
    new-instance v1, Lcom/google/mlkit/vision/codescanner/internal/zza;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Lcom/google/mlkit/vision/codescanner/internal/zza;-><init>(Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/google/mlkit/vision/barcode/common/Barcode;-><init>(Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-static {v0, p1}, Lcom/google/mlkit/vision/codescanner/internal/zze;->c(Lcom/google/mlkit/vision/barcode/common/Barcode;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/16 p1, 0xd

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const-string v1, "extra_error_code"

    .line 58
    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    invoke-static {v0, p1}, Lcom/google/mlkit/vision/codescanner/internal/zze;->c(Lcom/google/mlkit/vision/barcode/common/Barcode;I)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object p1, p0, Lcom/google/mlkit/vision/codescanner/internal/zzf;->a:Lcom/google/mlkit/vision/codescanner/internal/GmsBarcodeScanningDelegateActivity;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
