.class Lcom/mycompany/app/ocr/OcrDetector$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/ocr/OcrDetector;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/ocr/OcrDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector$6;->c:Lcom/mycompany/app/ocr/OcrDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$6;->c:Lcom/mycompany/app/ocr/OcrDetector;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    :try_start_0
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    if-ne v2, v4, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    if-ne v2, v1, :cond_3

    .line 16
    .line 17
    :cond_1
    iput v4, v0, Lcom/mycompany/app/ocr/OcrDetector;->G:I

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    iput v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->G:I

    .line 21
    .line 22
    :cond_3
    :goto_1
    iget v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->E:F

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_4

    .line 30
    .line 31
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    .line 33
    iput v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->E:F

    .line 34
    .line 35
    :cond_4
    iget v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->E:F

    .line 36
    .line 37
    const/high16 v4, 0x42200000    # 40.0f

    .line 38
    .line 39
    mul-float/2addr v4, v2

    .line 40
    iput v4, v0, Lcom/mycompany/app/ocr/OcrDetector;->a:F

    .line 41
    .line 42
    const/high16 v4, 0x41c00000    # 24.0f

    .line 43
    .line 44
    mul-float/2addr v4, v2

    .line 45
    iput v4, v0, Lcom/mycompany/app/ocr/OcrDetector;->b:F

    .line 46
    .line 47
    const/high16 v4, 0x41000000    # 8.0f

    .line 48
    .line 49
    mul-float/2addr v4, v2

    .line 50
    iput v4, v0, Lcom/mycompany/app/ocr/OcrDetector;->c:F

    .line 51
    .line 52
    const/high16 v4, 0x41a00000    # 20.0f

    .line 53
    .line 54
    mul-float/2addr v4, v2

    .line 55
    iput v4, v0, Lcom/mycompany/app/ocr/OcrDetector;->d:F

    .line 56
    .line 57
    const/high16 v4, 0x42480000    # 50.0f

    .line 58
    .line 59
    mul-float/2addr v4, v2

    .line 60
    iput v4, v0, Lcom/mycompany/app/ocr/OcrDetector;->e:F

    .line 61
    .line 62
    const/high16 v4, 0x40c00000    # 6.0f

    .line 63
    .line 64
    mul-float/2addr v2, v4

    .line 65
    iput v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->f:F

    .line 66
    .line 67
    iput v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->g:F

    .line 68
    .line 69
    invoke-static {v0}, Lcom/mycompany/app/ocr/OcrDetector;->c(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/mycompany/app/ocr/OcrDetector;->e(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/mycompany/app/ocr/OcrDetector;->a(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 76
    .line 77
    .line 78
    iput-boolean v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->M:Z

    .line 79
    .line 80
    invoke-static {v0}, Lcom/mycompany/app/ocr/OcrDetector;->b(Lcom/mycompany/app/ocr/OcrDetector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catch_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
