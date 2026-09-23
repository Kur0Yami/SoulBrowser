.class public Lcom/google/mlkit/vision/barcode/common/Barcode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/barcode/common/Barcode$WiFi;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$UrlBookmark;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$Sms;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$GeoPoint;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$Email;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$Phone;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$DriverLicense;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$CalendarEvent;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$CalendarDateTime;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$Address;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$BarcodeValueType;,
        Lcom/google/mlkit/vision/barcode/common/Barcode$BarcodeFormat;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->a:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    .line 11
    .line 12
    return-void
.end method
