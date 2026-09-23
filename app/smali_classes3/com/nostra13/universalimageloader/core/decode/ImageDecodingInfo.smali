.class public Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field public final e:I

.field public final f:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public final g:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

.field public final h:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field public final i:Z

.field public final j:Landroid/graphics/BitmapFactory$Options;

.field public final k:Lcom/mycompany/app/main/MainItem$ViewItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainItem$ViewItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;ILcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->d:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 11
    .line 12
    iput p7, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->e:I

    .line 13
    .line 14
    iget-object p2, p10, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->c:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->f:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->g:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->h:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->k:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 23
    .line 24
    iget-boolean p1, p10, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->e:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->i:Z

    .line 27
    .line 28
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->j:Landroid/graphics/BitmapFactory$Options;

    .line 34
    .line 35
    iget-object p2, p10, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->d:Landroid/graphics/BitmapFactory$Options;

    .line 36
    .line 37
    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 38
    .line 39
    iput p3, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 40
    .line 41
    iget-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 42
    .line 43
    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 44
    .line 45
    iget-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 46
    .line 47
    iput-object p3, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 48
    .line 49
    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 50
    .line 51
    iput p3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 52
    .line 53
    iget-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 54
    .line 55
    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 56
    .line 57
    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 58
    .line 59
    iput p3, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 60
    .line 61
    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 62
    .line 63
    iput p3, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 64
    .line 65
    iget-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 66
    .line 67
    iput-object p3, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 68
    .line 69
    iget-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 70
    .line 71
    iput-object p3, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 72
    .line 73
    iget-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 74
    .line 75
    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 76
    .line 77
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    const/16 p4, 0x18

    .line 80
    .line 81
    if-ge p3, p4, :cond_0

    .line 82
    .line 83
    iget-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 84
    .line 85
    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 86
    .line 87
    iget-boolean p2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 88
    .line 89
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 90
    .line 91
    :cond_0
    return-void
.end method
