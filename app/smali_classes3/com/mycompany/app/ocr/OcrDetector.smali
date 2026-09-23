.class public Lcom/mycompany/app/ocr/OcrDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/ocr/OcrDetector$OcrListener;,
        Lcom/mycompany/app/ocr/OcrDetector$OcrItem;,
        Lcom/mycompany/app/ocr/OcrDetector$RectItem;,
        Lcom/mycompany/app/ocr/OcrDetector$SortOcr;,
        Lcom/mycompany/app/ocr/OcrDetector$SortRect;,
        Lcom/mycompany/app/ocr/OcrDetector$ColorItem;
    }
.end annotation


# static fields
.field public static final Q:[Ljava/lang/String;


# instance fields
.field public A:Landroid/graphics/Bitmap;

.field public B:I

.field public C:I

.field public D:F

.field public E:F

.field public F:Landroid/graphics/Bitmap;

.field public G:I

.field public H:Lcom/google/mlkit/vision/text/Text;

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Landroid/graphics/Bitmap;

.field public L:Landroid/graphics/Canvas;

.field public M:Z

.field public N:Lcom/mycompany/app/main/MainTransOcr;

.field public O:Z

.field public P:Lcom/mycompany/app/dialog/DialogOcrLoad;

.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:[D

.field public i:[I

.field public j:[I

.field public k:[I

.field public l:[I

.field public m:Lcom/mycompany/app/main/MainActivity;

.field public n:Landroid/view/ViewGroup;

.field public o:Lcom/mycompany/app/ocr/OcrDetector$OcrListener;

.field public p:Landroid/os/Handler;

.field public q:I

.field public r:I

.field public s:Landroid/graphics/Paint;

.field public t:Lcom/mycompany/app/ocr/OcrExecutor;

.field public u:Lcom/google/mlkit/vision/text/internal/zzn;

.field public v:I

.field public w:Lcom/google/mlkit/vision/common/InputImage;

.field public x:Ljava/util/ArrayList;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "ja"

    .line 2
    .line 3
    const-string v1, "ko"

    .line 4
    .line 5
    const-string v2, "en"

    .line 6
    .line 7
    const-string v3, "zh"

    .line 8
    .line 9
    const-string v4, "hi"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/mycompany/app/ocr/OcrDetector;->Q:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static B(III)Z
    .locals 2

    .line 1
    sub-int v0, p0, p1

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sub-int/2addr p1, p2

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-le p1, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sub-int/2addr p2, p0

    .line 21
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-le p0, v1, :cond_2

    .line 26
    .line 27
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_2
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public static C(F)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/high16 v0, 0x42b40000    # 90.0f

    .line 6
    .line 7
    rem-float/2addr p0, v0

    .line 8
    const/high16 v0, 0x40a00000    # 5.0f

    .line 9
    .line 10
    cmpl-float v0, p0, v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const/high16 v0, 0x42aa0000    # 85.0f

    .line 15
    .line 16
    cmpg-float p0, p0, v0

    .line 17
    .line 18
    if-gez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static D(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string v0, "/sbtrans_"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget v0, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "_"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->B:I

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget v0, Lcom/mycompany/app/pref/PrefAlbum;->C:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static a(Lcom/mycompany/app/ocr/OcrDetector;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->F:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x3

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_2
    :try_start_0
    iget v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 30
    .line 31
    iget v3, p0, Lcom/mycompany/app/ocr/OcrDetector;->C:I

    .line 32
    .line 33
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 34
    .line 35
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v3, Landroid/graphics/Canvas;

    .line 40
    .line 41
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 54
    .line 55
    .line 56
    iget v5, p0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const/4 v7, 0x0

    .line 63
    if-eq v5, v6, :cond_3

    .line 64
    .line 65
    iget v5, p0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 66
    .line 67
    int-to-float v5, v5

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    int-to-float v6, v6

    .line 73
    div-float/2addr v5, v6

    .line 74
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v0, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v3, v0, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->k(Landroid/graphics/Bitmap;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/mycompany/app/ocr/OcrDetector;->r()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    const/4 v5, 0x0

    .line 103
    :goto_1
    if-ge v5, v4, :cond_4

    .line 104
    .line 105
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    check-cast v6, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 112
    .line 113
    invoke-virtual {p0, v1, v3, v6}, Lcom/mycompany/app/ocr/OcrDetector;->m(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/mycompany/app/ocr/OcrDetector$RectItem;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->K:Landroid/graphics/Bitmap;

    .line 118
    .line 119
    iput-object v3, p0, Lcom/mycompany/app/ocr/OcrDetector;->L:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    return-void

    .line 122
    :catch_0
    invoke-virtual {p0, v2}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catch_1
    invoke-virtual {p0, v2}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 127
    .line 128
    .line 129
    :goto_2
    return-void

    .line 130
    :cond_5
    :goto_3
    invoke-virtual {p0, v2}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public static b(Lcom/mycompany/app/ocr/OcrDetector;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_9

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->M:Z

    .line 8
    .line 9
    if-eqz v0, :cond_e

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->O:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_9

    .line 16
    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->M:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->O:Z

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->K:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mycompany/app/ocr/OcrDetector;->L:Landroid/graphics/Canvas;

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    if-eqz v1, :cond_d

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    goto/16 :goto_8

    .line 32
    .line 33
    :cond_2
    iget-object v4, p0, Lcom/mycompany/app/ocr/OcrDetector;->F:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 46
    .line 47
    if-eqz v5, :cond_c

    .line 48
    .line 49
    iget-object v5, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 50
    .line 51
    if-nez v5, :cond_4

    .line 52
    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :cond_4
    :try_start_0
    iget v5, p0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 56
    .line 57
    iget v6, p0, Lcom/mycompany/app/ocr/OcrDetector;->C:I

    .line 58
    .line 59
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    new-instance v6, Landroid/graphics/Canvas;

    .line 66
    .line 67
    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    .line 69
    .line 70
    new-instance v7, Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v8, 0x1

    .line 76
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 80
    .line 81
    .line 82
    iget v9, p0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 83
    .line 84
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    const/4 v11, 0x0

    .line 89
    if-eq v9, v10, :cond_5

    .line 90
    .line 91
    iget v9, p0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 92
    .line 93
    int-to-float v9, v9

    .line 94
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    int-to-float v10, v10

    .line 99
    div-float/2addr v9, v10

    .line 100
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v4, v11, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    invoke-virtual {v6, v4, v11, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    iget-object v4, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    move v10, v0

    .line 123
    :goto_1
    if-ge v10, v9, :cond_6

    .line 124
    .line 125
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    add-int/lit8 v10, v10, 0x1

    .line 130
    .line 131
    check-cast v12, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 132
    .line 133
    invoke-virtual {p0, v12}, Lcom/mycompany/app/ocr/OcrDetector;->l(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    iget-object v4, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    move v10, v0

    .line 144
    :goto_2
    if-ge v10, v9, :cond_7

    .line 145
    .line 146
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    add-int/lit8 v10, v10, 0x1

    .line 151
    .line 152
    check-cast v12, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 153
    .line 154
    invoke-virtual {p0, v12}, Lcom/mycompany/app/ocr/OcrDetector;->g(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    iget-object v4, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    move v10, v0

    .line 165
    :goto_3
    if-ge v10, v9, :cond_8

    .line 166
    .line 167
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    add-int/lit8 v10, v10, 0x1

    .line 172
    .line 173
    check-cast v12, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 174
    .line 175
    invoke-virtual {p0, v12}, Lcom/mycompany/app/ocr/OcrDetector;->g(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_8
    iget-object v4, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    move v10, v0

    .line 186
    :goto_4
    if-ge v10, v9, :cond_9

    .line 187
    .line 188
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    add-int/lit8 v10, v10, 0x1

    .line 193
    .line 194
    check-cast v12, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 195
    .line 196
    invoke-virtual {p0, v6, v12}, Lcom/mycompany/app/ocr/OcrDetector;->o(Landroid/graphics/Canvas;Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_9
    new-instance v4, Landroid/graphics/Paint;

    .line 201
    .line 202
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 209
    .line 210
    .line 211
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    .line 212
    .line 213
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 214
    .line 215
    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 219
    .line 220
    .line 221
    iget-object v8, p0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    move v10, v0

    .line 228
    :goto_5
    if-ge v10, v9, :cond_a

    .line 229
    .line 230
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    add-int/lit8 v10, v10, 0x1

    .line 235
    .line 236
    check-cast v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 237
    .line 238
    invoke-static {v6, v12, v4}, Lcom/mycompany/app/ocr/OcrDetector;->n(Landroid/graphics/Canvas;Lcom/mycompany/app/ocr/OcrDetector$RectItem;Landroid/graphics/Paint;)V

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_a
    invoke-virtual {v2, v5, v11, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 243
    .line 244
    .line 245
    iget-object v4, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    move v6, v0

    .line 252
    :goto_6
    if-ge v6, v5, :cond_b

    .line 253
    .line 254
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    add-int/lit8 v6, v6, 0x1

    .line 259
    .line 260
    check-cast v7, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 261
    .line 262
    invoke-static {v2, v7}, Lcom/mycompany/app/ocr/OcrDetector;->p(Landroid/graphics/Canvas;Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_b
    invoke-virtual {p0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->I(Landroid/graphics/Bitmap;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v0}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :catch_0
    invoke-virtual {p0, v3}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 274
    .line 275
    .line 276
    goto :goto_9

    .line 277
    :catch_1
    invoke-virtual {p0, v3}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_9

    .line 281
    :cond_c
    :goto_7
    invoke-virtual {p0, v3}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :cond_d
    :goto_8
    invoke-virtual {p0, v3}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 286
    .line 287
    .line 288
    :cond_e
    :goto_9
    return-void
.end method

.method public static c(Lcom/mycompany/app/ocr/OcrDetector;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->H:Lcom/google/mlkit/vision/text/Text;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v1, Lcom/google/mlkit/vision/text/Text;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v5, 0x0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x2

    .line 37
    const/high16 v8, 0x40000000    # 2.0f

    .line 38
    .line 39
    const/4 v9, 0x1

    .line 40
    if-eqz v6, :cond_11

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/google/mlkit/vision/text/Text$TextBlock;

    .line 47
    .line 48
    if-nez v6, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    monitor-enter v6

    .line 52
    :try_start_0
    iget-object v10, v6, Lcom/google/mlkit/vision/text/Text$TextBlock;->d:Ljava/util/AbstractList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    monitor-exit v6

    .line 55
    if-nez v10, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-eqz v10, :cond_2

    .line 67
    .line 68
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    check-cast v10, Lcom/google/mlkit/vision/text/Text$Line;

    .line 73
    .line 74
    if-nez v10, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {v10}, Lcom/google/mlkit/vision/text/Text$Line;->a()Landroid/graphics/Rect;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    const/4 v12, 0x0

    .line 82
    if-nez v11, :cond_6

    .line 83
    .line 84
    move-object v13, v12

    .line 85
    goto :goto_3

    .line 86
    :cond_6
    invoke-virtual {v11}, Landroid/graphics/Rect;->sort()V

    .line 87
    .line 88
    .line 89
    new-instance v13, Landroid/graphics/RectF;

    .line 90
    .line 91
    invoke-direct {v13, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    iget v11, v13, Landroid/graphics/RectF;->left:F

    .line 95
    .line 96
    iget v14, v0, Lcom/mycompany/app/ocr/OcrDetector;->D:F

    .line 97
    .line 98
    mul-float/2addr v11, v14

    .line 99
    iput v11, v13, Landroid/graphics/RectF;->left:F

    .line 100
    .line 101
    iget v11, v13, Landroid/graphics/RectF;->right:F

    .line 102
    .line 103
    mul-float/2addr v11, v14

    .line 104
    iput v11, v13, Landroid/graphics/RectF;->right:F

    .line 105
    .line 106
    iget v11, v13, Landroid/graphics/RectF;->top:F

    .line 107
    .line 108
    mul-float/2addr v11, v14

    .line 109
    iput v11, v13, Landroid/graphics/RectF;->top:F

    .line 110
    .line 111
    iget v11, v13, Landroid/graphics/RectF;->bottom:F

    .line 112
    .line 113
    mul-float/2addr v11, v14

    .line 114
    iput v11, v13, Landroid/graphics/RectF;->bottom:F

    .line 115
    .line 116
    :goto_3
    if-nez v13, :cond_7

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_7
    invoke-virtual {v10}, Lcom/google/mlkit/vision/text/Text$Line;->c()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    if-eqz v14, :cond_8

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_8
    const/16 v12, 0xa

    .line 131
    .line 132
    const/16 v14, 0x20

    .line 133
    .line 134
    invoke-virtual {v11, v12, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    const/16 v12, 0x7c

    .line 139
    .line 140
    invoke-virtual {v11, v12, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    :goto_4
    if-nez v12, :cond_9

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_9
    iget v10, v10, Lcom/google/mlkit/vision/text/Text$Line;->e:F

    .line 148
    .line 149
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    const/high16 v14, 0x43340000    # 180.0f

    .line 154
    .line 155
    rem-float/2addr v11, v14

    .line 156
    iget v15, v0, Lcom/mycompany/app/ocr/OcrDetector;->G:I

    .line 157
    .line 158
    if-ne v15, v7, :cond_b

    .line 159
    .line 160
    const/high16 v15, 0x42340000    # 45.0f

    .line 161
    .line 162
    cmpl-float v15, v11, v15

    .line 163
    .line 164
    if-lez v15, :cond_a

    .line 165
    .line 166
    const/high16 v15, 0x43070000    # 135.0f

    .line 167
    .line 168
    cmpg-float v11, v11, v15

    .line 169
    .line 170
    if-gez v11, :cond_a

    .line 171
    .line 172
    :goto_5
    move v11, v9

    .line 173
    goto :goto_6

    .line 174
    :cond_a
    const/4 v11, 0x0

    .line 175
    goto :goto_6

    .line 176
    :cond_b
    const/high16 v15, 0x428c0000    # 70.0f

    .line 177
    .line 178
    cmpl-float v15, v11, v15

    .line 179
    .line 180
    if-lez v15, :cond_a

    .line 181
    .line 182
    const/high16 v15, 0x42dc0000    # 110.0f

    .line 183
    .line 184
    cmpg-float v11, v11, v15

    .line 185
    .line 186
    if-gez v11, :cond_a

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :goto_6
    if-eqz v11, :cond_d

    .line 190
    .line 191
    rem-float/2addr v10, v14

    .line 192
    const/4 v14, 0x0

    .line 193
    cmpl-float v14, v10, v14

    .line 194
    .line 195
    const/high16 v15, 0x42b40000    # 90.0f

    .line 196
    .line 197
    if-lez v14, :cond_c

    .line 198
    .line 199
    sub-float/2addr v10, v15

    .line 200
    goto :goto_7

    .line 201
    :cond_c
    add-float/2addr v10, v15

    .line 202
    :goto_7
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    goto :goto_8

    .line 207
    :cond_d
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    .line 208
    .line 209
    .line 210
    move-result v14

    .line 211
    :goto_8
    invoke-static {v10}, Lcom/mycompany/app/ocr/OcrDetector;->C(F)Z

    .line 212
    .line 213
    .line 214
    move-result v15

    .line 215
    if-eqz v15, :cond_10

    .line 216
    .line 217
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    .line 222
    .line 223
    .line 224
    move-result v16

    .line 225
    add-float v16, v16, v15

    .line 226
    .line 227
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result v15

    .line 231
    int-to-float v15, v15

    .line 232
    div-float v16, v16, v15

    .line 233
    .line 234
    iget v15, v0, Lcom/mycompany/app/ocr/OcrDetector;->c:F

    .line 235
    .line 236
    cmpg-float v17, v16, v15

    .line 237
    .line 238
    if-gez v17, :cond_e

    .line 239
    .line 240
    move/from16 v16, v15

    .line 241
    .line 242
    :cond_e
    cmpg-float v15, v16, v14

    .line 243
    .line 244
    if-gez v15, :cond_10

    .line 245
    .line 246
    sub-float v14, v14, v16

    .line 247
    .line 248
    div-float/2addr v14, v8

    .line 249
    if-eqz v11, :cond_f

    .line 250
    .line 251
    iget v15, v13, Landroid/graphics/RectF;->left:F

    .line 252
    .line 253
    add-float/2addr v15, v14

    .line 254
    iput v15, v13, Landroid/graphics/RectF;->left:F

    .line 255
    .line 256
    iget v15, v13, Landroid/graphics/RectF;->right:F

    .line 257
    .line 258
    sub-float/2addr v15, v14

    .line 259
    iput v15, v13, Landroid/graphics/RectF;->right:F

    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_f
    iget v15, v13, Landroid/graphics/RectF;->top:F

    .line 263
    .line 264
    add-float/2addr v15, v14

    .line 265
    iput v15, v13, Landroid/graphics/RectF;->top:F

    .line 266
    .line 267
    iget v15, v13, Landroid/graphics/RectF;->bottom:F

    .line 268
    .line 269
    sub-float/2addr v15, v14

    .line 270
    iput v15, v13, Landroid/graphics/RectF;->bottom:F

    .line 271
    .line 272
    :goto_9
    move/from16 v14, v16

    .line 273
    .line 274
    :cond_10
    new-instance v15, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 275
    .line 276
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 277
    .line 278
    .line 279
    iput v5, v15, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->a:I

    .line 280
    .line 281
    iput v10, v15, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 282
    .line 283
    iput-boolean v11, v15, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 284
    .line 285
    iput v14, v15, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 286
    .line 287
    iput-object v13, v15, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 288
    .line 289
    iput-object v12, v15, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->k:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    new-instance v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 295
    .line 296
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 297
    .line 298
    .line 299
    iput v5, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->a:I

    .line 300
    .line 301
    iput v10, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->j:F

    .line 302
    .line 303
    iput-boolean v11, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->k:Z

    .line 304
    .line 305
    new-instance v10, Landroid/graphics/RectF;

    .line 306
    .line 307
    invoke-direct {v10, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 308
    .line 309
    .line 310
    iput-object v10, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->m:Landroid/graphics/RectF;

    .line 311
    .line 312
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    add-int/lit8 v5, v5, 0x1

    .line 316
    .line 317
    goto/16 :goto_2

    .line 318
    .line 319
    :catchall_0
    move-exception v0

    .line 320
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    throw v0

    .line 322
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-ge v1, v7, :cond_14

    .line 327
    .line 328
    const/4 v4, 0x0

    .line 329
    :goto_a
    if-ge v4, v1, :cond_13

    .line 330
    .line 331
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    check-cast v5, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 336
    .line 337
    if-nez v5, :cond_12

    .line 338
    .line 339
    goto :goto_b

    .line 340
    :cond_12
    iput v4, v5, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 341
    .line 342
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 343
    .line 344
    goto :goto_a

    .line 345
    :cond_13
    iput-object v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 346
    .line 347
    iput-object v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 348
    .line 349
    return-void

    .line 350
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    move v6, v9

    .line 355
    const/4 v7, 0x0

    .line 356
    :goto_c
    if-ge v7, v5, :cond_22

    .line 357
    .line 358
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v10

    .line 362
    add-int/lit8 v7, v7, 0x1

    .line 363
    .line 364
    check-cast v10, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 365
    .line 366
    if-nez v10, :cond_15

    .line 367
    .line 368
    goto :goto_c

    .line 369
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 370
    .line 371
    .line 372
    move-result v11

    .line 373
    const/4 v12, 0x0

    .line 374
    :goto_d
    if-ge v12, v11, :cond_21

    .line 375
    .line 376
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v13

    .line 380
    add-int/lit8 v12, v12, 0x1

    .line 381
    .line 382
    check-cast v13, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 383
    .line 384
    if-nez v13, :cond_16

    .line 385
    .line 386
    goto :goto_d

    .line 387
    :cond_16
    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v14

    .line 391
    if-eqz v14, :cond_17

    .line 392
    .line 393
    goto :goto_d

    .line 394
    :cond_17
    invoke-virtual {v0, v10, v13, v9}, Lcom/mycompany/app/ocr/OcrDetector;->v(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;Lcom/mycompany/app/ocr/OcrDetector$OcrItem;Z)I

    .line 395
    .line 396
    .line 397
    move-result v14

    .line 398
    if-nez v14, :cond_18

    .line 399
    .line 400
    goto :goto_d

    .line 401
    :cond_18
    iget v14, v10, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 402
    .line 403
    if-eqz v14, :cond_1d

    .line 404
    .line 405
    iget v15, v13, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 406
    .line 407
    if-eqz v15, :cond_1d

    .line 408
    .line 409
    if-ne v14, v15, :cond_19

    .line 410
    .line 411
    goto :goto_d

    .line 412
    :cond_19
    if-ge v14, v15, :cond_1b

    .line 413
    .line 414
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 415
    .line 416
    .line 417
    move-result v13

    .line 418
    move/from16 v16, v8

    .line 419
    .line 420
    const/4 v8, 0x0

    .line 421
    :goto_e
    if-ge v8, v13, :cond_20

    .line 422
    .line 423
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v17

    .line 427
    add-int/lit8 v8, v8, 0x1

    .line 428
    .line 429
    move-object/from16 v4, v17

    .line 430
    .line 431
    check-cast v4, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 432
    .line 433
    iget v9, v4, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 434
    .line 435
    if-ne v9, v15, :cond_1a

    .line 436
    .line 437
    iput v14, v4, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 438
    .line 439
    :cond_1a
    const/4 v9, 0x1

    .line 440
    goto :goto_e

    .line 441
    :cond_1b
    move/from16 v16, v8

    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    const/4 v8, 0x0

    .line 448
    :cond_1c
    :goto_f
    if-ge v8, v4, :cond_20

    .line 449
    .line 450
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v9

    .line 454
    add-int/lit8 v8, v8, 0x1

    .line 455
    .line 456
    check-cast v9, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 457
    .line 458
    iget v13, v9, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 459
    .line 460
    if-ne v13, v14, :cond_1c

    .line 461
    .line 462
    iput v15, v9, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 463
    .line 464
    goto :goto_f

    .line 465
    :cond_1d
    move/from16 v16, v8

    .line 466
    .line 467
    if-eqz v14, :cond_1e

    .line 468
    .line 469
    iput v14, v13, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 470
    .line 471
    goto :goto_10

    .line 472
    :cond_1e
    iget v4, v13, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 473
    .line 474
    if-eqz v4, :cond_1f

    .line 475
    .line 476
    iput v4, v10, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 477
    .line 478
    goto :goto_10

    .line 479
    :cond_1f
    iput v6, v10, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 480
    .line 481
    iput v6, v13, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 482
    .line 483
    :cond_20
    :goto_10
    move/from16 v8, v16

    .line 484
    .line 485
    const/4 v9, 0x1

    .line 486
    goto :goto_d

    .line 487
    :cond_21
    move/from16 v16, v8

    .line 488
    .line 489
    add-int/lit8 v6, v6, 0x1

    .line 490
    .line 491
    const/4 v9, 0x1

    .line 492
    goto/16 :goto_c

    .line 493
    .line 494
    :cond_22
    move/from16 v16, v8

    .line 495
    .line 496
    new-instance v4, Lcom/mycompany/app/ocr/OcrDetector$SortOcr;

    .line 497
    .line 498
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 499
    .line 500
    .line 501
    :try_start_2
    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 502
    .line 503
    .line 504
    :catch_0
    new-instance v4, Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .line 508
    .line 509
    const/4 v5, 0x0

    .line 510
    :goto_11
    if-ge v5, v1, :cond_2c

    .line 511
    .line 512
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    check-cast v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 517
    .line 518
    if-nez v6, :cond_23

    .line 519
    .line 520
    const/4 v11, 0x0

    .line 521
    :goto_12
    const/16 v17, 0x1

    .line 522
    .line 523
    goto/16 :goto_1a

    .line 524
    .line 525
    :cond_23
    add-int/lit8 v7, v5, 0x1

    .line 526
    .line 527
    :goto_13
    if-ge v7, v1, :cond_24

    .line 528
    .line 529
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    check-cast v8, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 534
    .line 535
    if-nez v8, :cond_25

    .line 536
    .line 537
    :cond_24
    :goto_14
    const/4 v11, 0x0

    .line 538
    goto/16 :goto_19

    .line 539
    .line 540
    :cond_25
    iget v9, v8, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 541
    .line 542
    if-nez v9, :cond_26

    .line 543
    .line 544
    goto :goto_14

    .line 545
    :cond_26
    iget v10, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 546
    .line 547
    if-eq v9, v10, :cond_27

    .line 548
    .line 549
    goto :goto_14

    .line 550
    :cond_27
    iget-object v9, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 551
    .line 552
    if-nez v9, :cond_28

    .line 553
    .line 554
    goto :goto_15

    .line 555
    :cond_28
    iget-object v10, v8, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 556
    .line 557
    if-nez v10, :cond_29

    .line 558
    .line 559
    :goto_15
    const/4 v11, 0x0

    .line 560
    goto/16 :goto_18

    .line 561
    .line 562
    :cond_29
    iget v11, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 563
    .line 564
    iget v12, v8, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 565
    .line 566
    add-float/2addr v11, v12

    .line 567
    div-float v11, v11, v16

    .line 568
    .line 569
    iput v11, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 570
    .line 571
    iget v11, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 572
    .line 573
    iget v12, v8, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 574
    .line 575
    add-float/2addr v11, v12

    .line 576
    div-float v11, v11, v16

    .line 577
    .line 578
    iput v11, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 579
    .line 580
    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 581
    .line 582
    .line 583
    new-instance v9, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .line 587
    .line 588
    iget-object v10, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->k:Ljava/lang/String;

    .line 589
    .line 590
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 591
    .line 592
    .line 593
    move-result v10

    .line 594
    const/4 v11, 0x1

    .line 595
    if-le v10, v11, :cond_2a

    .line 596
    .line 597
    iget-object v10, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->k:Ljava/lang/String;

    .line 598
    .line 599
    const-string v12, "-"

    .line 600
    .line 601
    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 602
    .line 603
    .line 604
    move-result v10

    .line 605
    if-eqz v10, :cond_2a

    .line 606
    .line 607
    iget-object v10, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->k:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 610
    .line 611
    .line 612
    move-result v12

    .line 613
    sub-int/2addr v12, v11

    .line 614
    const/4 v11, 0x0

    .line 615
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v10

    .line 619
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    iget-object v10, v8, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->k:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    goto :goto_16

    .line 628
    :cond_2a
    const/4 v11, 0x0

    .line 629
    iget-object v10, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->k:Ljava/lang/String;

    .line 630
    .line 631
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    const-string v10, " "

    .line 635
    .line 636
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    iget-object v10, v8, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->k:Ljava/lang/String;

    .line 640
    .line 641
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    :goto_16
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v9

    .line 648
    iput-object v9, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->k:Ljava/lang/String;

    .line 649
    .line 650
    iget-object v9, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->b:Ljava/util/ArrayList;

    .line 651
    .line 652
    if-nez v9, :cond_2b

    .line 653
    .line 654
    new-instance v9, Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .line 658
    .line 659
    iput-object v9, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->b:Ljava/util/ArrayList;

    .line 660
    .line 661
    iget v8, v8, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->a:I

    .line 662
    .line 663
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 664
    .line 665
    .line 666
    move-result-object v8

    .line 667
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    goto :goto_17

    .line 671
    :cond_2b
    iget v8, v8, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->a:I

    .line 672
    .line 673
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 674
    .line 675
    .line 676
    move-result-object v8

    .line 677
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    :goto_17
    add-int/lit8 v5, v5, 0x1

    .line 681
    .line 682
    :goto_18
    add-int/lit8 v7, v7, 0x1

    .line 683
    .line 684
    goto/16 :goto_13

    .line 685
    .line 686
    :goto_19
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    goto/16 :goto_12

    .line 690
    .line 691
    :goto_1a
    add-int/lit8 v5, v5, 0x1

    .line 692
    .line 693
    goto/16 :goto_11

    .line 694
    .line 695
    :cond_2c
    const/4 v11, 0x0

    .line 696
    new-instance v1, Ljava/util/ArrayList;

    .line 697
    .line 698
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 702
    .line 703
    .line 704
    move-result v2

    .line 705
    move v5, v11

    .line 706
    :goto_1b
    if-ge v5, v2, :cond_34

    .line 707
    .line 708
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    add-int/lit8 v5, v5, 0x1

    .line 713
    .line 714
    check-cast v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 715
    .line 716
    if-nez v6, :cond_2d

    .line 717
    .line 718
    goto :goto_1b

    .line 719
    :cond_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 720
    .line 721
    .line 722
    move-result v7

    .line 723
    move v8, v11

    .line 724
    :cond_2e
    :goto_1c
    if-ge v8, v7, :cond_33

    .line 725
    .line 726
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v9

    .line 730
    add-int/lit8 v8, v8, 0x1

    .line 731
    .line 732
    check-cast v9, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 733
    .line 734
    if-nez v9, :cond_2f

    .line 735
    .line 736
    goto :goto_1c

    .line 737
    :cond_2f
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v10

    .line 741
    if-eqz v10, :cond_30

    .line 742
    .line 743
    goto :goto_1c

    .line 744
    :cond_30
    iget-object v10, v6, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 745
    .line 746
    if-nez v10, :cond_31

    .line 747
    .line 748
    goto :goto_1c

    .line 749
    :cond_31
    iget-object v9, v9, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 750
    .line 751
    if-nez v9, :cond_32

    .line 752
    .line 753
    goto :goto_1c

    .line 754
    :cond_32
    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    .line 755
    .line 756
    .line 757
    move-result v9

    .line 758
    if-eqz v9, :cond_2e

    .line 759
    .line 760
    goto :goto_1b

    .line 761
    :cond_33
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    goto :goto_1b

    .line 765
    :cond_34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 766
    .line 767
    .line 768
    move-result v2

    .line 769
    move v4, v11

    .line 770
    :goto_1d
    if-ge v4, v2, :cond_36

    .line 771
    .line 772
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v5

    .line 776
    check-cast v5, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 777
    .line 778
    if-nez v5, :cond_35

    .line 779
    .line 780
    goto :goto_1e

    .line 781
    :cond_35
    iput v4, v5, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 782
    .line 783
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    .line 784
    .line 785
    goto :goto_1d

    .line 786
    :cond_36
    iput-object v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 787
    .line 788
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 789
    .line 790
    return-void
.end method

.method public static d(Lcom/mycompany/app/ocr/OcrDetector;Lcom/google/mlkit/vision/text/Text;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->x:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector;->x:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x5

    .line 20
    if-ge p1, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/mycompany/app/ocr/OcrDetector;->H(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    move v4, v0

    .line 30
    move v3, v2

    .line 31
    move-object v2, v1

    .line 32
    :goto_0
    if-ge v4, p1, :cond_4

    .line 33
    .line 34
    :try_start_0
    iget-object v5, p0, Lcom/mycompany/app/ocr/OcrDetector;->x:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Lcom/google/mlkit/vision/text/Text;

    .line 41
    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sget-object v6, Lcom/mycompany/app/ocr/OcrDetector;->Q:[Ljava/lang/String;

    .line 46
    .line 47
    aget-object v6, v6, v4

    .line 48
    .line 49
    invoke-static {v5, v6}, Lcom/mycompany/app/ocr/OcrDetector;->h(Lcom/google/mlkit/vision/text/Text;Ljava/lang/String;)F

    .line 50
    .line 51
    .line 52
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    cmpl-float v8, v7, v3

    .line 54
    .line 55
    if-lez v8, :cond_3

    .line 56
    .line 57
    move-object v2, v5

    .line 58
    move-object v1, v6

    .line 59
    move v3, v7

    .line 60
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    :cond_4
    const-string p1, "en"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_8

    .line 70
    .line 71
    const-string p1, "hi"

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    const-string p1, "zh"

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_7

    .line 87
    .line 88
    const-string p1, "ja"

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iput v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->G:I

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_7
    :goto_2
    const/4 p1, 0x2

    .line 101
    iput p1, p0, Lcom/mycompany/app/ocr/OcrDetector;->G:I

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_8
    :goto_3
    const/4 p1, 0x1

    .line 105
    iput p1, p0, Lcom/mycompany/app/ocr/OcrDetector;->G:I

    .line 106
    .line 107
    :goto_4
    invoke-virtual {p0, v2}, Lcom/mycompany/app/ocr/OcrDetector;->K(Lcom/google/mlkit/vision/text/Text;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public static e(Lcom/mycompany/app/ocr/OcrDetector;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->n:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->N:Lcom/mycompany/app/main/MainTransOcr;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/mycompany/app/main/MainTransOcr;->e(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    new-instance v0, Lcom/mycompany/app/main/MainTransOcr;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/mycompany/app/ocr/OcrDetector;->n:Landroid/view/ViewGroup;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v4, Lcom/mycompany/app/ocr/OcrDetector$7;

    .line 36
    .line 37
    invoke-direct {v4, p0}, Lcom/mycompany/app/ocr/OcrDetector$7;-><init>(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mycompany/app/main/MainTransOcr;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/mycompany/app/main/MainTransOcr$TransOcrListener;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->N:Lcom/mycompany/app/main/MainTransOcr;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static f(Lcom/mycompany/app/ocr/OcrDetector$RectItem;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->b:I

    .line 4
    .line 5
    iget v0, p1, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->a:I

    .line 6
    .line 7
    add-int/2addr p2, v0

    .line 8
    iput p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->b:I

    .line 9
    .line 10
    iget p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->c:I

    .line 11
    .line 12
    iget v0, p1, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->b:I

    .line 13
    .line 14
    add-int/2addr p2, v0

    .line 15
    iput p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->c:I

    .line 16
    .line 17
    iget p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->d:I

    .line 18
    .line 19
    iget v0, p1, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->c:I

    .line 20
    .line 21
    add-int/2addr p2, v0

    .line 22
    iput p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->d:I

    .line 23
    .line 24
    iget p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->e:I

    .line 25
    .line 26
    iget p1, p1, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->d:I

    .line 27
    .line 28
    add-int/2addr p2, p1

    .line 29
    iput p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->e:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->b:I

    .line 33
    .line 34
    iget v0, p1, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->e:I

    .line 35
    .line 36
    add-int/2addr p2, v0

    .line 37
    iput p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->b:I

    .line 38
    .line 39
    iget p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->c:I

    .line 40
    .line 41
    iget v0, p1, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->f:I

    .line 42
    .line 43
    add-int/2addr p2, v0

    .line 44
    iput p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->c:I

    .line 45
    .line 46
    iget p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->d:I

    .line 47
    .line 48
    iget v0, p1, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->g:I

    .line 49
    .line 50
    add-int/2addr p2, v0

    .line 51
    iput p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->d:I

    .line 52
    .line 53
    iget p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->e:I

    .line 54
    .line 55
    iget p1, p1, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->h:I

    .line 56
    .line 57
    add-int/2addr p2, p1

    .line 58
    iput p2, p0, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->e:I

    .line 59
    .line 60
    return-void
.end method

.method public static h(Lcom/google/mlkit/vision/text/Text;Ljava/lang/String;)F
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/text/Text;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_8

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/google/mlkit/vision/text/Text$TextBlock;

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v3, v2, Lcom/google/mlkit/vision/text/Text$TextBlock;->d:Ljava/util/AbstractList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    monitor-exit v2

    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/google/mlkit/vision/text/Text$Line;

    .line 58
    .line 59
    if-nez v3, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v3}, Lcom/google/mlkit/vision/text/Text$Line;->b()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    const-string v5, "und"

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_6

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_7

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Ljava/lang/Float;

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    goto :goto_2

    .line 99
    :cond_7
    move v5, v0

    .line 100
    :goto_2
    iget v3, v3, Lcom/google/mlkit/vision/text/Text$Line;->d:F

    .line 101
    .line 102
    add-float/2addr v5, v3

    .line 103
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    throw p0

    .line 114
    :cond_8
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-nez p0, :cond_9

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const/4 v2, 0x0

    .line 126
    move v3, v0

    .line 127
    :cond_a
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_b

    .line 132
    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Ljava/lang/Float;

    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    cmpl-float v6, v5, v3

    .line 150
    .line 151
    if-lez v6, :cond_a

    .line 152
    .line 153
    move-object v2, v4

    .line 154
    move v3, v5

    .line 155
    goto :goto_3

    .line 156
    :cond_b
    if-nez v2, :cond_c

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_c
    const-string p0, "en"

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eqz p0, :cond_e

    .line 166
    .line 167
    const/4 p0, 0x1

    .line 168
    :goto_4
    sget-object p1, Lcom/mycompany/app/ocr/OcrDetector;->Q:[Ljava/lang/String;

    .line 169
    .line 170
    const/4 v1, 0x5

    .line 171
    if-ge p0, v1, :cond_f

    .line 172
    .line 173
    aget-object p1, p1, p0

    .line 174
    .line 175
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_d

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_d
    add-int/lit8 p0, p0, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_e
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-nez p0, :cond_f

    .line 190
    .line 191
    :goto_5
    return v0

    .line 192
    :cond_f
    return v3
.end method

.method public static n(Landroid/graphics/Canvas;Lcom/mycompany/app/ocr/OcrDetector$RectItem;Landroid/graphics/Paint;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->m:Landroid/graphics/RectF;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    :goto_0
    return-void

    .line 9
    :cond_1
    iget v1, p1, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->j:F

    .line 10
    .line 11
    invoke-static {v1}, Lcom/mycompany/app/ocr/OcrDetector;->C(F)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 18
    .line 19
    .line 20
    iget v1, p1, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->j:F

    .line 21
    .line 22
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/high16 v4, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float/2addr v3, v4

    .line 31
    add-float/2addr v3, v2

    .line 32
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    div-float/2addr v5, v4

    .line 39
    add-float/2addr v5, v2

    .line 40
    invoke-virtual {p0, v1, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 41
    .line 42
    .line 43
    iget p1, p1, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->n:F

    .line 44
    .line 45
    invoke-virtual {p0, v0, p1, p1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget p1, p1, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->n:F

    .line 53
    .line 54
    invoke-virtual {p0, v0, p1, p1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static p(Landroid/graphics/Canvas;Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->n:Landroid/text/StaticLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->o:Landroid/text/StaticLayout;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 18
    .line 19
    .line 20
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 21
    .line 22
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 23
    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 25
    .line 26
    .line 27
    iget v1, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 28
    .line 29
    invoke-static {v1}, Lcom/mycompany/app/ocr/OcrDetector;->C(F)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget v1, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/high16 v3, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr v2, v3

    .line 44
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    div-float/2addr v0, v3

    .line 49
    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->n:Landroid/text/StaticLayout;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->o:Landroid/text/StaticLayout;

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_0
    return-void
.end method

.method public static u(FFFFFFIIIZ)I
    .locals 2

    .line 1
    cmpg-float v0, p2, p3

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    cmpl-float v0, p4, p5

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    cmpl-float v0, p2, p3

    .line 11
    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    cmpg-float v1, p4, p5

    .line 15
    .line 16
    if-gtz v1, :cond_1

    .line 17
    .line 18
    :goto_0
    return p6

    .line 19
    :cond_1
    cmpl-float v1, p4, p3

    .line 20
    .line 21
    if-lez v1, :cond_4

    .line 22
    .line 23
    cmpg-float v1, p4, p5

    .line 24
    .line 25
    if-gez v1, :cond_4

    .line 26
    .line 27
    if-eqz p9, :cond_3

    .line 28
    .line 29
    sub-float/2addr p4, p3

    .line 30
    sub-float/2addr p3, p2

    .line 31
    cmpg-float p2, p4, p3

    .line 32
    .line 33
    if-gez p2, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    sub-float/2addr p0, p1

    .line 37
    cmpg-float p0, p4, p0

    .line 38
    .line 39
    if-gez p0, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    or-int p0, p6, p7

    .line 43
    .line 44
    return p0

    .line 45
    :cond_4
    if-lez v0, :cond_7

    .line 46
    .line 47
    cmpg-float p3, p2, p5

    .line 48
    .line 49
    if-gez p3, :cond_7

    .line 50
    .line 51
    if-eqz p9, :cond_6

    .line 52
    .line 53
    sub-float p2, p5, p2

    .line 54
    .line 55
    sub-float/2addr p4, p5

    .line 56
    cmpg-float p3, p2, p4

    .line 57
    .line 58
    if-gez p3, :cond_5

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    sub-float/2addr p0, p1

    .line 62
    cmpg-float p0, p2, p0

    .line 63
    .line 64
    if-gez p0, :cond_6

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_6
    or-int p0, p6, p8

    .line 68
    .line 69
    return p0

    .line 70
    :cond_7
    :goto_1
    const/4 p0, 0x0

    .line 71
    return p0
.end method

.method public static x(I)F
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p0, v0, :cond_0

    .line 3
    .line 4
    :goto_0
    move p0, v0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/16 v0, 0x9

    .line 7
    .line 8
    if-le p0, v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    int-to-float p0, p0

    .line 12
    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-static {p0, v1, v0, v1}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method


# virtual methods
.method public final A(III)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->h:[D

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [D

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->h:[D

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->h:[D

    .line 11
    .line 12
    invoke-static {p1, p2, p3, v0}, Landroidx/core/graphics/ColorUtils;->c(III[D)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector;->h:[D

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    aget-wide v0, p1, p2

    .line 19
    .line 20
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 21
    .line 22
    div-double/2addr v0, v2

    .line 23
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 24
    .line 25
    cmpg-double p1, v0, v2

    .line 26
    .line 27
    if-gez p1, :cond_1

    .line 28
    .line 29
    return p2

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public final E()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/ocr/OcrDetector;->y()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/ocr/OcrDetector;->N()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->w:Lcom/google/mlkit/vision/common/InputImage;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->x:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/ocr/OcrDetector;->G()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->N:Lcom/mycompany/app/main/MainTransOcr;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTransOcr;->b()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->N:Lcom/mycompany/app/main/MainTransOcr;

    .line 26
    .line 27
    :cond_0
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->n:Landroid/view/ViewGroup;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->o:Lcom/mycompany/app/ocr/OcrDetector$OcrListener;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->s:Landroid/graphics/Paint;

    .line 34
    .line 35
    return-void
.end method

.method public final F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->p:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->p:Landroid/os/Handler;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->y:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->z:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->A:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 10
    .line 11
    iput v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->C:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/mycompany/app/ocr/OcrDetector;->D:F

    .line 15
    .line 16
    iput v2, p0, Lcom/mycompany/app/ocr/OcrDetector;->E:F

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->F:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    iput v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->G:I

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->H:Lcom/google/mlkit/vision/text/Text;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->K:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->L:Landroid/graphics/Canvas;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->h:[D

    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->i:[I

    .line 35
    .line 36
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->j:[I

    .line 37
    .line 38
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->k:[I

    .line 39
    .line 40
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->l:[I

    .line 41
    .line 42
    return-void
.end method

.method public final H(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    # Ensure Maven-downloaded OCR models/libs are present before thick ML Kit runs.
    invoke-static {v0}, Lcom/mycompany/app/ocr/OcrRuntimeInstaller;->isReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ready

    invoke-static {v0}, Lcom/mycompany/app/ocr/OcrRuntimeInstaller;->tryActivate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ready

    goto :cond_continue

    :cond_ready
    invoke-virtual {p0}, Lcom/mycompany/app/ocr/OcrDetector;->O()V

    return-void

    :cond_continue
    invoke-virtual {p0}, Lcom/mycompany/app/ocr/OcrDetector;->N()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->n:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v1, Lcom/mycompany/app/ocr/OcrDetector$3;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/ocr/OcrDetector$3;-><init>(Lcom/mycompany/app/ocr/OcrDetector;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final I(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->z:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->z:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v1, 0x200

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->e()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->z:Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v0, v1, p1}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final J()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefAlbum;->C:I

    .line 2
    .line 3
    iput v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->q:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->s:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->s:Landroid/graphics/Paint;

    .line 15
    .line 16
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final K(Lcom/google/mlkit/vision/text/Text;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcom/mycompany/app/ocr/OcrDetector;->w:Lcom/google/mlkit/vision/common/InputImage;

    .line 11
    .line 12
    iput-object v2, p0, Lcom/mycompany/app/ocr/OcrDetector;->x:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v2, p0, Lcom/mycompany/app/ocr/OcrDetector;->A:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector;->H:Lcom/google/mlkit/vision/text/Text;

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->M:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->O:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance p1, Lcom/mycompany/app/ocr/OcrDetector$6;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/mycompany/app/ocr/OcrDetector$6;-><init>(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final L(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->n:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/ocr/OcrDetector$2;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/ocr/OcrDetector$2;-><init>(Lcom/mycompany/app/ocr/OcrDetector;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final M(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->w:Lcom/google/mlkit/vision/common/InputImage;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->x:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/ocr/OcrDetector;->G()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector;->y:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/mycompany/app/ocr/OcrDetector;->z:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/mycompany/app/ocr/OcrDetector;->A:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    sget p1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 24
    .line 25
    const/4 p2, 0x5

    .line 26
    if-ne p1, p2, :cond_1

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector;->x:Ljava/util/ArrayList;

    .line 34
    .line 35
    :cond_1
    sget p1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/mycompany/app/ocr/OcrDetector;->H(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

# Show the OCR dependency download dialog (Maven AARs, not Play Services).
.method public final O()V
    .locals 2

    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->n:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/mycompany/app/ocr/OcrDetector$8;

    invoke-direct {v1, p0}, Lcom/mycompany/app/ocr/OcrDetector$8;-><init>(Lcom/mycompany/app/ocr/OcrDetector;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/ocr/OcrDetector;->F()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->t:Lcom/mycompany/app/ocr/OcrExecutor;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrExecutor;->c:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->t:Lcom/mycompany/app/ocr/OcrExecutor;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->u:Lcom/google/mlkit/vision/text/internal/zzn;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/TextRecognizer;->close()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->u:Lcom/google/mlkit/vision/text/internal/zzn;

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final g(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_f

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    :cond_1
    :goto_0
    if-ge v4, v1, :cond_4

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    .line 26
    check-cast v5, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 27
    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget v6, v5, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 32
    .line 33
    iget v7, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 34
    .line 35
    if-ne v6, v7, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p0, p1, v5, v2}, Lcom/mycompany/app/ocr/OcrDetector;->v(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;Lcom/mycompany/app/ocr/OcrDetector$OcrItem;Z)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    const/4 v5, 0x0

    .line 46
    :goto_1
    if-nez v5, :cond_5

    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_5
    iget-object v0, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 51
    .line 52
    iget-object v1, v5, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 53
    .line 54
    and-int/lit8 v2, v3, 0x8

    .line 55
    .line 56
    const/16 v4, 0x8

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    if-ne v2, v4, :cond_6

    .line 60
    .line 61
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 62
    .line 63
    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 64
    .line 65
    :goto_2
    sub-float/2addr v2, v4

    .line 66
    goto :goto_3

    .line 67
    :cond_6
    and-int/lit8 v2, v3, 0x10

    .line 68
    .line 69
    const/16 v4, 0x10

    .line 70
    .line 71
    if-ne v2, v4, :cond_7

    .line 72
    .line 73
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 74
    .line 75
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_7
    move v2, v5

    .line 79
    :goto_3
    and-int/lit8 v4, v3, 0x2

    .line 80
    .line 81
    const/4 v6, 0x2

    .line 82
    if-ne v4, v6, :cond_8

    .line 83
    .line 84
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 85
    .line 86
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 87
    .line 88
    :goto_4
    sub-float/2addr v3, v4

    .line 89
    goto :goto_5

    .line 90
    :cond_8
    const/4 v4, 0x4

    .line 91
    and-int/2addr v3, v4

    .line 92
    if-ne v3, v4, :cond_9

    .line 93
    .line 94
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 95
    .line 96
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_9
    move v3, v5

    .line 100
    :goto_5
    const/high16 v4, 0x40000000    # 2.0f

    .line 101
    .line 102
    div-float/2addr v2, v4

    .line 103
    div-float/2addr v3, v4

    .line 104
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_a

    .line 109
    .line 110
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 111
    .line 112
    add-float/2addr p1, v3

    .line 113
    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 114
    .line 115
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 116
    .line 117
    add-float/2addr p1, v3

    .line 118
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 119
    .line 120
    iget p1, v1, Landroid/graphics/RectF;->top:F

    .line 121
    .line 122
    sub-float/2addr p1, v3

    .line 123
    iput p1, v1, Landroid/graphics/RectF;->top:F

    .line 124
    .line 125
    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    .line 126
    .line 127
    sub-float/2addr p1, v3

    .line 128
    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    .line 129
    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_a
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_b

    .line 142
    .line 143
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 144
    .line 145
    add-float/2addr p1, v2

    .line 146
    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 147
    .line 148
    iget p1, v0, Landroid/graphics/RectF;->right:F

    .line 149
    .line 150
    add-float/2addr p1, v2

    .line 151
    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 152
    .line 153
    iget p1, v1, Landroid/graphics/RectF;->left:F

    .line 154
    .line 155
    sub-float/2addr p1, v2

    .line 156
    iput p1, v1, Landroid/graphics/RectF;->left:F

    .line 157
    .line 158
    iget p1, v1, Landroid/graphics/RectF;->right:F

    .line 159
    .line 160
    sub-float/2addr p1, v2

    .line 161
    iput p1, v1, Landroid/graphics/RectF;->right:F

    .line 162
    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_b
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    cmpg-float v6, v4, v5

    .line 179
    .line 180
    if-gez v6, :cond_c

    .line 181
    .line 182
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 183
    .line 184
    add-float/2addr p1, v2

    .line 185
    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 186
    .line 187
    iget p1, v0, Landroid/graphics/RectF;->right:F

    .line 188
    .line 189
    add-float/2addr p1, v2

    .line 190
    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 191
    .line 192
    iget p1, v1, Landroid/graphics/RectF;->left:F

    .line 193
    .line 194
    sub-float/2addr p1, v2

    .line 195
    iput p1, v1, Landroid/graphics/RectF;->left:F

    .line 196
    .line 197
    iget p1, v1, Landroid/graphics/RectF;->right:F

    .line 198
    .line 199
    sub-float/2addr p1, v2

    .line 200
    iput p1, v1, Landroid/graphics/RectF;->right:F

    .line 201
    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_c
    cmpg-float v4, v5, v4

    .line 210
    .line 211
    if-gez v4, :cond_d

    .line 212
    .line 213
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 214
    .line 215
    add-float/2addr p1, v3

    .line 216
    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 217
    .line 218
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 219
    .line 220
    add-float/2addr p1, v3

    .line 221
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 222
    .line 223
    iget p1, v1, Landroid/graphics/RectF;->top:F

    .line 224
    .line 225
    sub-float/2addr p1, v3

    .line 226
    iput p1, v1, Landroid/graphics/RectF;->top:F

    .line 227
    .line 228
    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    .line 229
    .line 230
    sub-float/2addr p1, v3

    .line 231
    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    .line 232
    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :cond_d
    iget-boolean p1, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 241
    .line 242
    if-eqz p1, :cond_e

    .line 243
    .line 244
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 245
    .line 246
    add-float/2addr p1, v2

    .line 247
    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 248
    .line 249
    iget p1, v0, Landroid/graphics/RectF;->right:F

    .line 250
    .line 251
    add-float/2addr p1, v2

    .line 252
    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 253
    .line 254
    iget p1, v1, Landroid/graphics/RectF;->left:F

    .line 255
    .line 256
    sub-float/2addr p1, v2

    .line 257
    iput p1, v1, Landroid/graphics/RectF;->left:F

    .line 258
    .line 259
    iget p1, v1, Landroid/graphics/RectF;->right:F

    .line 260
    .line 261
    sub-float/2addr p1, v2

    .line 262
    iput p1, v1, Landroid/graphics/RectF;->right:F

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_e
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 266
    .line 267
    add-float/2addr p1, v3

    .line 268
    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 269
    .line 270
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 271
    .line 272
    add-float/2addr p1, v3

    .line 273
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 274
    .line 275
    iget p1, v1, Landroid/graphics/RectF;->top:F

    .line 276
    .line 277
    sub-float/2addr p1, v3

    .line 278
    iput p1, v1, Landroid/graphics/RectF;->top:F

    .line 279
    .line 280
    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    .line 281
    .line 282
    sub-float/2addr p1, v3

    .line 283
    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    .line 284
    .line 285
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 289
    .line 290
    .line 291
    :cond_f
    :goto_7
    return-void
.end method

.method public final i(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_5

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/ocr/OcrDetector;->q(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    move v4, v3

    .line 26
    move v5, v4

    .line 27
    move v6, v5

    .line 28
    move v7, v6

    .line 29
    move v8, v7

    .line 30
    move v9, v8

    .line 31
    move v10, v9

    .line 32
    move v11, v10

    .line 33
    :goto_0
    if-ge v11, v1, :cond_4

    .line 34
    .line 35
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    add-int/lit8 v11, v11, 0x1

    .line 40
    .line 41
    check-cast v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 42
    .line 43
    if-nez v12, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-boolean v13, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->f:Z

    .line 47
    .line 48
    if-eqz v13, :cond_3

    .line 49
    .line 50
    iget v13, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->b:I

    .line 51
    .line 52
    add-int/2addr v8, v13

    .line 53
    iget v13, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->c:I

    .line 54
    .line 55
    add-int/2addr v9, v13

    .line 56
    iget v13, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->d:I

    .line 57
    .line 58
    add-int/2addr v10, v13

    .line 59
    iget v12, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->e:I

    .line 60
    .line 61
    add-int/2addr v3, v12

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget v13, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->b:I

    .line 64
    .line 65
    add-int/2addr v5, v13

    .line 66
    iget v13, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->c:I

    .line 67
    .line 68
    add-int/2addr v6, v13

    .line 69
    iget v13, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->d:I

    .line 70
    .line 71
    add-int/2addr v7, v13

    .line 72
    iget v12, v12, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->e:I

    .line 73
    .line 74
    add-int/2addr v4, v12

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    if-le v3, v4, :cond_5

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    move v1, v2

    .line 81
    :goto_1
    if-eqz v1, :cond_6

    .line 82
    .line 83
    move v5, v8

    .line 84
    move v6, v9

    .line 85
    move v7, v10

    .line 86
    goto :goto_2

    .line 87
    :cond_6
    move v3, v4

    .line 88
    :goto_2
    if-nez v3, :cond_7

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_7
    int-to-float v3, v3

    .line 92
    int-to-float v4, v5

    .line 93
    div-float/2addr v4, v3

    .line 94
    float-to-int v4, v4

    .line 95
    int-to-float v5, v6

    .line 96
    div-float/2addr v5, v3

    .line 97
    float-to-int v5, v5

    .line 98
    int-to-float v6, v7

    .line 99
    div-float/2addr v6, v3

    .line 100
    float-to-int v3, v6

    .line 101
    invoke-static {v4, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    invoke-static {v4, v5, v3}, Lcom/mycompany/app/ocr/OcrDetector;->B(III)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    :goto_3
    if-ge v2, v4, :cond_9

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    check-cast v5, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 122
    .line 123
    if-nez v5, :cond_8

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_8
    iput-boolean v1, v5, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->f:Z

    .line 127
    .line 128
    iput-boolean v3, v5, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->g:Z

    .line 129
    .line 130
    iput v6, v5, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->i:I

    .line 131
    .line 132
    iget v7, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 133
    .line 134
    iput v7, v5, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->l:F

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_9
    iget v0, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 138
    .line 139
    iget v2, p0, Lcom/mycompany/app/ocr/OcrDetector;->a:F

    .line 140
    .line 141
    cmpg-float v0, v0, v2

    .line 142
    .line 143
    const/high16 v2, -0x1000000

    .line 144
    .line 145
    const/4 v3, -0x1

    .line 146
    if-gez v0, :cond_a

    .line 147
    .line 148
    iput v3, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->c:I

    .line 149
    .line 150
    iput v2, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->d:I

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_a
    if-eqz v1, :cond_b

    .line 154
    .line 155
    iput v2, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->c:I

    .line 156
    .line 157
    iput v3, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->d:I

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_b
    iput v3, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->c:I

    .line 161
    .line 162
    iput v2, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->d:I

    .line 163
    .line 164
    :goto_4
    iput v6, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->e:I

    .line 165
    .line 166
    :cond_c
    :goto_5
    return-void
.end method

.method public final j(Landroid/graphics/Bitmap;Lcom/mycompany/app/ocr/OcrDetector$RectItem;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    if-nez v7, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v7, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->m:Landroid/graphics/RectF;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    if-nez p1, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v8, 0x0

    .line 23
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget v3, v1, Landroid/graphics/RectF;->right:F

    .line 28
    .line 29
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget v4, v0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 34
    .line 35
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 40
    .line 41
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 50
    .line 51
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget v5, v0, Lcom/mycompany/app/ocr/OcrDetector;->C:I

    .line 56
    .line 57
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/high16 v5, 0x40000000    # 2.0f

    .line 70
    .line 71
    mul-float v6, v1, v5

    .line 72
    .line 73
    cmpl-float v6, v4, v6

    .line 74
    .line 75
    const/16 v11, 0x8

    .line 76
    .line 77
    const/4 v12, 0x4

    .line 78
    if-lez v6, :cond_3

    .line 79
    .line 80
    move v4, v11

    .line 81
    move v11, v12

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    mul-float/2addr v4, v5

    .line 84
    cmpl-float v1, v1, v4

    .line 85
    .line 86
    move v4, v12

    .line 87
    if-lez v1, :cond_4

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move v11, v4

    .line 91
    :goto_1
    new-instance v6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;

    .line 92
    .line 93
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v13, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;

    .line 97
    .line 98
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v14, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;

    .line 102
    .line 103
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v15, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;

    .line 107
    .line 108
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    move v5, v1

    .line 113
    :goto_2
    if-ge v5, v12, :cond_5

    .line 114
    .line 115
    move/from16 v16, v1

    .line 116
    .line 117
    move v1, v2

    .line 118
    move v2, v3

    .line 119
    sub-int v3, v9, v5

    .line 120
    .line 121
    move/from16 v12, v16

    .line 122
    .line 123
    move/from16 v16, v5

    .line 124
    .line 125
    move-object/from16 v5, p1

    .line 126
    .line 127
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/ocr/OcrDetector;->s(IIIILandroid/graphics/Bitmap;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;)V

    .line 128
    .line 129
    .line 130
    add-int v3, v10, v16

    .line 131
    .line 132
    move-object v0, v13

    .line 133
    move-object v13, v6

    .line 134
    move-object v6, v0

    .line 135
    move-object/from16 v0, p0

    .line 136
    .line 137
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/ocr/OcrDetector;->s(IIIILandroid/graphics/Bitmap;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;)V

    .line 138
    .line 139
    .line 140
    move/from16 v17, v1

    .line 141
    .line 142
    move/from16 v18, v2

    .line 143
    .line 144
    move/from16 v19, v4

    .line 145
    .line 146
    sub-int v3, v17, v16

    .line 147
    .line 148
    move v1, v9

    .line 149
    move v2, v10

    .line 150
    move v4, v11

    .line 151
    move-object v9, v6

    .line 152
    move-object v6, v14

    .line 153
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/ocr/OcrDetector;->w(IIIILandroid/graphics/Bitmap;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;)V

    .line 154
    .line 155
    .line 156
    move-object v10, v6

    .line 157
    add-int v3, v18, v16

    .line 158
    .line 159
    move-object v6, v15

    .line 160
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/ocr/OcrDetector;->w(IIIILandroid/graphics/Bitmap;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;)V

    .line 161
    .line 162
    .line 163
    add-int/lit8 v5, v16, 0x1

    .line 164
    .line 165
    move-object v14, v10

    .line 166
    move-object v6, v13

    .line 167
    move/from16 v3, v18

    .line 168
    .line 169
    move/from16 v4, v19

    .line 170
    .line 171
    move v10, v2

    .line 172
    move-object v13, v9

    .line 173
    move/from16 v2, v17

    .line 174
    .line 175
    move v9, v1

    .line 176
    move v1, v12

    .line 177
    const/4 v12, 0x4

    .line 178
    goto :goto_2

    .line 179
    :cond_5
    move v12, v1

    .line 180
    move-object v9, v13

    .line 181
    move-object v10, v14

    .line 182
    move-object v13, v6

    .line 183
    move-object v6, v15

    .line 184
    iget v0, v13, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->d:I

    .line 185
    .line 186
    iget v1, v13, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->h:I

    .line 187
    .line 188
    if-le v0, v1, :cond_6

    .line 189
    .line 190
    move v1, v12

    .line 191
    goto :goto_3

    .line 192
    :cond_6
    move v1, v8

    .line 193
    :goto_3
    iget v0, v9, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->d:I

    .line 194
    .line 195
    iget v2, v9, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->h:I

    .line 196
    .line 197
    if-le v0, v2, :cond_7

    .line 198
    .line 199
    move v0, v12

    .line 200
    goto :goto_4

    .line 201
    :cond_7
    move v0, v8

    .line 202
    :goto_4
    iget v2, v10, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->d:I

    .line 203
    .line 204
    iget v3, v10, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->h:I

    .line 205
    .line 206
    if-le v2, v3, :cond_8

    .line 207
    .line 208
    move v2, v12

    .line 209
    goto :goto_5

    .line 210
    :cond_8
    move v2, v8

    .line 211
    :goto_5
    iget v3, v6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->d:I

    .line 212
    .line 213
    iget v4, v6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->h:I

    .line 214
    .line 215
    if-le v3, v4, :cond_9

    .line 216
    .line 217
    move v3, v12

    .line 218
    goto :goto_6

    .line 219
    :cond_9
    move v3, v8

    .line 220
    :goto_6
    xor-int/lit8 v4, v1, 0x1

    .line 221
    .line 222
    if-eqz v0, :cond_a

    .line 223
    .line 224
    add-int/lit8 v5, v1, 0x1

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 228
    .line 229
    move v5, v1

    .line 230
    :goto_7
    if-eqz v2, :cond_b

    .line 231
    .line 232
    add-int/lit8 v5, v5, 0x1

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 236
    .line 237
    :goto_8
    if-eqz v3, :cond_c

    .line 238
    .line 239
    add-int/lit8 v5, v5, 0x1

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 243
    .line 244
    :goto_9
    if-le v5, v4, :cond_d

    .line 245
    .line 246
    move v4, v12

    .line 247
    goto :goto_a

    .line 248
    :cond_d
    move v4, v8

    .line 249
    :goto_a
    iput-boolean v4, v7, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->f:Z

    .line 250
    .line 251
    if-eqz v4, :cond_11

    .line 252
    .line 253
    if-eqz v1, :cond_e

    .line 254
    .line 255
    invoke-static {v7, v13, v12}, Lcom/mycompany/app/ocr/OcrDetector;->f(Lcom/mycompany/app/ocr/OcrDetector$RectItem;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;Z)V

    .line 256
    .line 257
    .line 258
    :cond_e
    if-eqz v0, :cond_f

    .line 259
    .line 260
    invoke-static {v7, v9, v12}, Lcom/mycompany/app/ocr/OcrDetector;->f(Lcom/mycompany/app/ocr/OcrDetector$RectItem;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;Z)V

    .line 261
    .line 262
    .line 263
    :cond_f
    if-eqz v2, :cond_10

    .line 264
    .line 265
    invoke-static {v7, v10, v12}, Lcom/mycompany/app/ocr/OcrDetector;->f(Lcom/mycompany/app/ocr/OcrDetector$RectItem;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;Z)V

    .line 266
    .line 267
    .line 268
    :cond_10
    if-eqz v3, :cond_15

    .line 269
    .line 270
    invoke-static {v7, v6, v12}, Lcom/mycompany/app/ocr/OcrDetector;->f(Lcom/mycompany/app/ocr/OcrDetector$RectItem;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;Z)V

    .line 271
    .line 272
    .line 273
    goto :goto_b

    .line 274
    :cond_11
    if-nez v1, :cond_12

    .line 275
    .line 276
    invoke-static {v7, v13, v8}, Lcom/mycompany/app/ocr/OcrDetector;->f(Lcom/mycompany/app/ocr/OcrDetector$RectItem;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;Z)V

    .line 277
    .line 278
    .line 279
    :cond_12
    if-nez v0, :cond_13

    .line 280
    .line 281
    invoke-static {v7, v9, v8}, Lcom/mycompany/app/ocr/OcrDetector;->f(Lcom/mycompany/app/ocr/OcrDetector$RectItem;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;Z)V

    .line 282
    .line 283
    .line 284
    :cond_13
    if-nez v2, :cond_14

    .line 285
    .line 286
    invoke-static {v7, v10, v8}, Lcom/mycompany/app/ocr/OcrDetector;->f(Lcom/mycompany/app/ocr/OcrDetector$RectItem;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;Z)V

    .line 287
    .line 288
    .line 289
    :cond_14
    if-nez v3, :cond_15

    .line 290
    .line 291
    invoke-static {v7, v6, v8}, Lcom/mycompany/app/ocr/OcrDetector;->f(Lcom/mycompany/app/ocr/OcrDetector$RectItem;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;Z)V

    .line 292
    .line 293
    .line 294
    :cond_15
    :goto_b
    iget-boolean v0, v13, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->i:Z

    .line 295
    .line 296
    if-nez v0, :cond_16

    .line 297
    .line 298
    iget-boolean v0, v9, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->i:Z

    .line 299
    .line 300
    if-nez v0, :cond_16

    .line 301
    .line 302
    iget-boolean v0, v10, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->i:Z

    .line 303
    .line 304
    if-nez v0, :cond_16

    .line 305
    .line 306
    iget-boolean v0, v6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->i:Z

    .line 307
    .line 308
    if-eqz v0, :cond_17

    .line 309
    .line 310
    :cond_16
    move v8, v12

    .line 311
    :cond_17
    iput-boolean v8, v7, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->h:Z

    .line 312
    .line 313
    return-void
.end method

.method public final k(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Lcom/mycompany/app/ocr/OcrDetector$SortRect;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    :try_start_2
    iget v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->q:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    move v3, v2

    .line 24
    :goto_0
    if-ge v3, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    check-cast v4, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 33
    .line 34
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/ocr/OcrDetector;->j(Landroid/graphics/Bitmap;Lcom/mycompany/app/ocr/OcrDetector$RectItem;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_1
    if-ge v2, v0, :cond_6

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    check-cast v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->i(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    move v1, v2

    .line 65
    :cond_2
    :goto_2
    if-ge v1, v0, :cond_6

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    check-cast v3, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 74
    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {p0, v3}, Lcom/mycompany/app/ocr/OcrDetector;->q(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    move v6, v2

    .line 96
    :goto_3
    if-ge v6, v5, :cond_2

    .line 97
    .line 98
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    add-int/lit8 v6, v6, 0x1

    .line 103
    .line 104
    check-cast v7, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 105
    .line 106
    if-nez v7, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    iget v8, v3, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 110
    .line 111
    iput v8, v7, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->l:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catch_1
    :cond_6
    return-void
.end method

.method public final l(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_25

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 8
    .line 9
    if-eqz v2, :cond_25

    .line 10
    .line 11
    iget-object v2, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->l:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_c

    .line 20
    .line 21
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto/16 :goto_c

    .line 26
    .line 27
    :cond_1
    iget v2, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 28
    .line 29
    iget-object v3, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget v6, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 40
    .line 41
    iget v7, v0, Lcom/mycompany/app/ocr/OcrDetector;->a:F

    .line 42
    .line 43
    cmpl-float v6, v6, v7

    .line 44
    .line 45
    const/high16 v8, 0x40000000    # 2.0f

    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    if-lez v6, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget v6, v0, Lcom/mycompany/app/ocr/OcrDetector;->G:I

    .line 52
    .line 53
    if-ne v6, v9, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-boolean v6, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 57
    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    const-string v6, "\ud55c\uad6d\uc5b4"

    .line 62
    .line 63
    sget-object v10, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    :goto_0
    iget v6, v0, Lcom/mycompany/app/ocr/OcrDetector;->d:F

    .line 72
    .line 73
    move v7, v6

    .line 74
    move/from16 v17, v8

    .line 75
    .line 76
    const/high16 v18, 0x3f800000    # 1.0f

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_5
    :goto_1
    iget v6, v0, Lcom/mycompany/app/ocr/OcrDetector;->e:F

    .line 81
    .line 82
    div-float v10, v6, v8

    .line 83
    .line 84
    new-instance v11, Landroid/graphics/RectF;

    .line 85
    .line 86
    iget-object v12, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 87
    .line 88
    invoke-direct {v11, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 89
    .line 90
    .line 91
    iget v12, v11, Landroid/graphics/RectF;->left:F

    .line 92
    .line 93
    sub-float/2addr v12, v10

    .line 94
    iput v12, v11, Landroid/graphics/RectF;->left:F

    .line 95
    .line 96
    iget v12, v11, Landroid/graphics/RectF;->right:F

    .line 97
    .line 98
    add-float/2addr v12, v10

    .line 99
    iput v12, v11, Landroid/graphics/RectF;->right:F

    .line 100
    .line 101
    new-instance v10, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 102
    .line 103
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iget v12, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 107
    .line 108
    iput v12, v10, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 109
    .line 110
    iget-boolean v12, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 111
    .line 112
    iput-boolean v12, v10, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 113
    .line 114
    iget v12, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 115
    .line 116
    iput v12, v10, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 117
    .line 118
    iput-object v11, v10, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 119
    .line 120
    iget-object v12, v0, Lcom/mycompany/app/ocr/OcrDetector;->J:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    const/4 v14, 0x0

    .line 127
    move v15, v14

    .line 128
    :goto_2
    const/16 v16, 0x0

    .line 129
    .line 130
    if-ge v15, v13, :cond_a

    .line 131
    .line 132
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v17

    .line 136
    add-int/lit8 v15, v15, 0x1

    .line 137
    .line 138
    const/high16 v18, 0x3f800000    # 1.0f

    .line 139
    .line 140
    move-object/from16 v7, v17

    .line 141
    .line 142
    check-cast v7, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 143
    .line 144
    if-nez v7, :cond_6

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    move/from16 v17, v8

    .line 148
    .line 149
    iget v8, v7, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 150
    .line 151
    iget v9, v10, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 152
    .line 153
    if-ne v8, v9, :cond_7

    .line 154
    .line 155
    move/from16 v8, v17

    .line 156
    .line 157
    const/4 v9, 0x1

    .line 158
    goto :goto_2

    .line 159
    :cond_7
    invoke-virtual {v0, v10, v7, v14}, Lcom/mycompany/app/ocr/OcrDetector;->v(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;Lcom/mycompany/app/ocr/OcrDetector$OcrItem;Z)I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    and-int/lit8 v9, v8, 0x8

    .line 164
    .line 165
    const/16 v14, 0x8

    .line 166
    .line 167
    if-ne v9, v14, :cond_8

    .line 168
    .line 169
    iget-object v7, v7, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 170
    .line 171
    iget v7, v7, Landroid/graphics/RectF;->right:F

    .line 172
    .line 173
    iget v8, v11, Landroid/graphics/RectF;->left:F

    .line 174
    .line 175
    :goto_3
    sub-float/2addr v7, v8

    .line 176
    goto :goto_4

    .line 177
    :cond_8
    and-int/lit8 v8, v8, 0x10

    .line 178
    .line 179
    const/16 v9, 0x10

    .line 180
    .line 181
    if-ne v8, v9, :cond_9

    .line 182
    .line 183
    iget-object v7, v7, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 184
    .line 185
    iget v7, v7, Landroid/graphics/RectF;->left:F

    .line 186
    .line 187
    iget v8, v11, Landroid/graphics/RectF;->right:F

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_9
    move/from16 v8, v17

    .line 191
    .line 192
    const/4 v9, 0x1

    .line 193
    const/4 v14, 0x0

    .line 194
    goto :goto_2

    .line 195
    :cond_a
    move/from16 v17, v8

    .line 196
    .line 197
    const/high16 v18, 0x3f800000    # 1.0f

    .line 198
    .line 199
    move/from16 v7, v16

    .line 200
    .line 201
    :goto_4
    cmpl-float v8, v7, v16

    .line 202
    .line 203
    if-lez v8, :cond_c

    .line 204
    .line 205
    mul-float v7, v7, v17

    .line 206
    .line 207
    sub-float v7, v6, v7

    .line 208
    .line 209
    iget v8, v0, Lcom/mycompany/app/ocr/OcrDetector;->d:F

    .line 210
    .line 211
    cmpg-float v9, v7, v8

    .line 212
    .line 213
    if-gez v9, :cond_b

    .line 214
    .line 215
    move v7, v8

    .line 216
    :cond_b
    iget v8, v0, Lcom/mycompany/app/ocr/OcrDetector;->c:F

    .line 217
    .line 218
    cmpl-float v8, v2, v8

    .line 219
    .line 220
    if-lez v8, :cond_d

    .line 221
    .line 222
    sub-float v2, v2, v18

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_c
    move v7, v6

    .line 226
    :cond_d
    :goto_5
    move/from16 v19, v7

    .line 227
    .line 228
    move v7, v6

    .line 229
    move/from16 v6, v19

    .line 230
    .line 231
    :goto_6
    add-float/2addr v6, v4

    .line 232
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    add-float/2addr v7, v5

    .line 237
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    iget v8, v0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 242
    .line 243
    if-le v6, v8, :cond_e

    .line 244
    .line 245
    move v6, v8

    .line 246
    :cond_e
    iget v8, v0, Lcom/mycompany/app/ocr/OcrDetector;->C:I

    .line 247
    .line 248
    if-le v7, v8, :cond_f

    .line 249
    .line 250
    move v7, v8

    .line 251
    :cond_f
    iget v8, v0, Lcom/mycompany/app/ocr/OcrDetector;->q:I

    .line 252
    .line 253
    const/high16 v9, -0x1000000

    .line 254
    .line 255
    const/4 v10, -0x1

    .line 256
    if-nez v8, :cond_11

    .line 257
    .line 258
    :goto_7
    move v8, v9

    .line 259
    :cond_10
    move v9, v10

    .line 260
    goto :goto_9

    .line 261
    :cond_11
    const/4 v11, 0x1

    .line 262
    if-ne v8, v11, :cond_12

    .line 263
    .line 264
    move v8, v10

    .line 265
    goto :goto_9

    .line 266
    :cond_12
    iget v8, v0, Lcom/mycompany/app/ocr/OcrDetector;->a:F

    .line 267
    .line 268
    cmpg-float v8, v2, v8

    .line 269
    .line 270
    if-gez v8, :cond_13

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_13
    iget v8, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->c:I

    .line 274
    .line 275
    if-nez v8, :cond_14

    .line 276
    .line 277
    goto :goto_8

    .line 278
    :cond_14
    move v10, v8

    .line 279
    :goto_8
    iget v8, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->d:I

    .line 280
    .line 281
    if-nez v8, :cond_10

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :goto_9
    new-instance v10, Landroid/text/TextPaint;

    .line 285
    .line 286
    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 287
    .line 288
    .line 289
    const/4 v11, 0x1

    .line 290
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 291
    .line 292
    .line 293
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 294
    .line 295
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 296
    .line 297
    .line 298
    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 299
    .line 300
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 301
    .line 302
    .line 303
    iget v12, v0, Lcom/mycompany/app/ocr/OcrDetector;->g:F

    .line 304
    .line 305
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 312
    .line 313
    .line 314
    new-instance v9, Landroid/text/TextPaint;

    .line 315
    .line 316
    invoke-direct {v9}, Landroid/text/TextPaint;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 326
    .line 327
    .line 328
    iget-object v8, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->l:Ljava/lang/String;

    .line 329
    .line 330
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 331
    .line 332
    invoke-static {v8, v10, v6}, Lcom/mycompany/app/main/MainUtil;->y3(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    if-nez v8, :cond_15

    .line 337
    .line 338
    goto/16 :goto_c

    .line 339
    .line 340
    :cond_15
    iget-object v8, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->l:Ljava/lang/String;

    .line 341
    .line 342
    invoke-static {v8, v9, v6}, Lcom/mycompany/app/main/MainUtil;->y3(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    if-nez v8, :cond_16

    .line 347
    .line 348
    goto/16 :goto_c

    .line 349
    .line 350
    :cond_16
    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    if-ge v8, v7, :cond_1b

    .line 355
    .line 356
    iget-boolean v11, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 357
    .line 358
    if-nez v11, :cond_1b

    .line 359
    .line 360
    iget v8, v0, Lcom/mycompany/app/ocr/OcrDetector;->b:F

    .line 361
    .line 362
    cmpg-float v11, v2, v8

    .line 363
    .line 364
    if-gez v11, :cond_20

    .line 365
    .line 366
    move v11, v2

    .line 367
    :cond_17
    add-float v11, v11, v18

    .line 368
    .line 369
    cmpl-float v12, v11, v8

    .line 370
    .line 371
    if-lez v12, :cond_18

    .line 372
    .line 373
    goto :goto_a

    .line 374
    :cond_18
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 378
    .line 379
    .line 380
    iget-object v12, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->l:Ljava/lang/String;

    .line 381
    .line 382
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 383
    .line 384
    invoke-static {v12, v10, v6}, Lcom/mycompany/app/main/MainUtil;->y3(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    .line 385
    .line 386
    .line 387
    move-result-object v12

    .line 388
    if-nez v12, :cond_19

    .line 389
    .line 390
    goto/16 :goto_c

    .line 391
    .line 392
    :cond_19
    iget-object v12, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->l:Ljava/lang/String;

    .line 393
    .line 394
    invoke-static {v12, v9, v6}, Lcom/mycompany/app/main/MainUtil;->y3(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    .line 395
    .line 396
    .line 397
    move-result-object v12

    .line 398
    if-nez v12, :cond_1a

    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_1a
    invoke-virtual {v12}, Landroid/text/Layout;->getHeight()I

    .line 402
    .line 403
    .line 404
    move-result v12

    .line 405
    if-le v12, v7, :cond_17

    .line 406
    .line 407
    goto :goto_b

    .line 408
    :cond_1b
    if-le v8, v7, :cond_20

    .line 409
    .line 410
    iget v8, v0, Lcom/mycompany/app/ocr/OcrDetector;->c:F

    .line 411
    .line 412
    cmpl-float v11, v2, v8

    .line 413
    .line 414
    if-lez v11, :cond_20

    .line 415
    .line 416
    move v11, v2

    .line 417
    :cond_1c
    sub-float v11, v11, v18

    .line 418
    .line 419
    cmpg-float v12, v11, v8

    .line 420
    .line 421
    if-gez v12, :cond_1d

    .line 422
    .line 423
    goto :goto_a

    .line 424
    :cond_1d
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 428
    .line 429
    .line 430
    iget-object v12, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->l:Ljava/lang/String;

    .line 431
    .line 432
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 433
    .line 434
    invoke-static {v12, v10, v6}, Lcom/mycompany/app/main/MainUtil;->y3(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    .line 435
    .line 436
    .line 437
    move-result-object v12

    .line 438
    if-nez v12, :cond_1e

    .line 439
    .line 440
    goto/16 :goto_c

    .line 441
    .line 442
    :cond_1e
    iget-object v12, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->l:Ljava/lang/String;

    .line 443
    .line 444
    invoke-static {v12, v9, v6}, Lcom/mycompany/app/main/MainUtil;->y3(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    .line 445
    .line 446
    .line 447
    move-result-object v12

    .line 448
    if-nez v12, :cond_1f

    .line 449
    .line 450
    goto :goto_a

    .line 451
    :cond_1f
    invoke-virtual {v12}, Landroid/text/Layout;->getHeight()I

    .line 452
    .line 453
    .line 454
    move-result v12

    .line 455
    if-ge v12, v7, :cond_1c

    .line 456
    .line 457
    goto :goto_b

    .line 458
    :cond_20
    :goto_a
    move v11, v2

    .line 459
    :goto_b
    invoke-static {v11, v2}, Ljava/lang/Float;->compare(FF)I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    if-eqz v2, :cond_21

    .line 464
    .line 465
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 469
    .line 470
    .line 471
    :cond_21
    iget-object v2, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->l:Ljava/lang/String;

    .line 472
    .line 473
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 474
    .line 475
    invoke-static {v2, v10, v6}, Lcom/mycompany/app/main/MainUtil;->y3(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    if-nez v2, :cond_22

    .line 480
    .line 481
    goto :goto_c

    .line 482
    :cond_22
    iget-object v7, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->l:Ljava/lang/String;

    .line 483
    .line 484
    invoke-static {v7, v9, v6}, Lcom/mycompany/app/main/MainUtil;->y3(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    .line 485
    .line 486
    .line 487
    move-result-object v6

    .line 488
    if-nez v6, :cond_23

    .line 489
    .line 490
    goto :goto_c

    .line 491
    :cond_23
    iput-object v2, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->n:Landroid/text/StaticLayout;

    .line 492
    .line 493
    iput-object v6, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->o:Landroid/text/StaticLayout;

    .line 494
    .line 495
    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    int-to-float v1, v1

    .line 504
    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    if-nez v6, :cond_24

    .line 509
    .line 510
    int-to-float v6, v2

    .line 511
    invoke-static {v6, v5}, Ljava/lang/Float;->compare(FF)I

    .line 512
    .line 513
    .line 514
    move-result v6

    .line 515
    if-nez v6, :cond_24

    .line 516
    .line 517
    goto :goto_c

    .line 518
    :cond_24
    sub-float/2addr v1, v4

    .line 519
    div-float v1, v1, v17

    .line 520
    .line 521
    int-to-float v2, v2

    .line 522
    sub-float/2addr v2, v5

    .line 523
    div-float v2, v2, v17

    .line 524
    .line 525
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 526
    .line 527
    sub-float/2addr v4, v1

    .line 528
    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 529
    .line 530
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 531
    .line 532
    add-float/2addr v4, v1

    .line 533
    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 534
    .line 535
    iget v1, v3, Landroid/graphics/RectF;->top:F

    .line 536
    .line 537
    sub-float/2addr v1, v2

    .line 538
    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 539
    .line 540
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 541
    .line 542
    add-float/2addr v1, v2

    .line 543
    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 544
    .line 545
    const/4 v1, 0x0

    .line 546
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/ocr/OcrDetector;->z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 547
    .line 548
    .line 549
    :cond_25
    :goto_c
    return-void
.end method

.method public final m(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/mycompany/app/ocr/OcrDetector$RectItem;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_10

    .line 12
    .line 13
    :cond_0
    iget-object v4, v3, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->m:Landroid/graphics/RectF;

    .line 14
    .line 15
    if-nez v4, :cond_1

    .line 16
    .line 17
    goto/16 :goto_10

    .line 18
    .line 19
    :cond_1
    iget v5, v0, Lcom/mycompany/app/ocr/OcrDetector;->q:I

    .line 20
    .line 21
    const/4 v6, -0x1

    .line 22
    const/4 v7, 0x1

    .line 23
    if-nez v5, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    if-ne v5, v7, :cond_3

    .line 27
    .line 28
    const/high16 v6, -0x1000000

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget v5, v3, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->i:I

    .line 32
    .line 33
    if-nez v5, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    move v6, v5

    .line 37
    :goto_0
    iget v5, v3, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->j:F

    .line 38
    .line 39
    invoke-static {v5}, Lcom/mycompany/app/ocr/OcrDetector;->C(F)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/high16 v8, 0x40000000    # 2.0f

    .line 44
    .line 45
    if-nez v5, :cond_1b

    .line 46
    .line 47
    iget-boolean v9, v3, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->k:Z

    .line 48
    .line 49
    if-nez v9, :cond_1b

    .line 50
    .line 51
    iget-boolean v9, v3, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->h:Z

    .line 52
    .line 53
    if-eqz v9, :cond_1b

    .line 54
    .line 55
    iget v9, v0, Lcom/mycompany/app/ocr/OcrDetector;->q:I

    .line 56
    .line 57
    const/4 v10, 0x2

    .line 58
    if-eq v9, v10, :cond_5

    .line 59
    .line 60
    goto/16 :goto_11

    .line 61
    .line 62
    :cond_5
    if-nez v1, :cond_6

    .line 63
    .line 64
    goto/16 :goto_10

    .line 65
    .line 66
    :cond_6
    iget v2, v4, Landroid/graphics/RectF;->left:F

    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iget v9, v4, Landroid/graphics/RectF;->right:F

    .line 78
    .line 79
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    iget v10, v0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 84
    .line 85
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    iget v10, v4, Landroid/graphics/RectF;->top:F

    .line 90
    .line 91
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    .line 100
    .line 101
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    iget v12, v0, Lcom/mycompany/app/ocr/OcrDetector;->C:I

    .line 106
    .line 107
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    sub-int v12, v9, v2

    .line 112
    .line 113
    if-nez v12, :cond_7

    .line 114
    .line 115
    move v12, v7

    .line 116
    :cond_7
    iget-object v13, v0, Lcom/mycompany/app/ocr/OcrDetector;->l:[I

    .line 117
    .line 118
    if-eqz v13, :cond_1a

    .line 119
    .line 120
    array-length v13, v13

    .line 121
    if-ge v13, v12, :cond_8

    .line 122
    .line 123
    goto/16 :goto_10

    .line 124
    .line 125
    :cond_8
    add-int/lit8 v13, v12, -0x1

    .line 126
    .line 127
    iget v14, v0, Lcom/mycompany/app/ocr/OcrDetector;->f:F

    .line 128
    .line 129
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    mul-float/2addr v4, v8

    .line 138
    cmpl-float v4, v15, v4

    .line 139
    .line 140
    if-lez v4, :cond_9

    .line 141
    .line 142
    const/16 v4, 0x8

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_9
    const/4 v4, 0x4

    .line 146
    :goto_1
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    .line 151
    .line 152
    .line 153
    move-result v15

    .line 154
    move/from16 p2, v5

    .line 155
    .line 156
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    move/from16 v16, v7

    .line 161
    .line 162
    int-to-float v7, v10

    .line 163
    add-float/2addr v7, v14

    .line 164
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    move/from16 v17, v2

    .line 173
    .line 174
    move/from16 v18, v4

    .line 175
    .line 176
    move v2, v10

    .line 177
    move v14, v2

    .line 178
    move/from16 v4, p2

    .line 179
    .line 180
    :goto_2
    if-ge v14, v7, :cond_e

    .line 181
    .line 182
    move/from16 v19, v7

    .line 183
    .line 184
    move/from16 v20, v10

    .line 185
    .line 186
    move/from16 v21, v11

    .line 187
    .line 188
    move/from16 v23, v12

    .line 189
    .line 190
    move/from16 v22, v13

    .line 191
    .line 192
    move/from16 v7, v17

    .line 193
    .line 194
    move/from16 v10, p2

    .line 195
    .line 196
    move v11, v10

    .line 197
    move v12, v11

    .line 198
    move v13, v12

    .line 199
    :goto_3
    if-ge v7, v9, :cond_a

    .line 200
    .line 201
    invoke-virtual {v1, v7, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 202
    .line 203
    .line 204
    move-result v24

    .line 205
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->red(I)I

    .line 206
    .line 207
    .line 208
    move-result v25

    .line 209
    add-int v11, v25, v11

    .line 210
    .line 211
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->green(I)I

    .line 212
    .line 213
    .line 214
    move-result v25

    .line 215
    add-int v13, v25, v13

    .line 216
    .line 217
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->blue(I)I

    .line 218
    .line 219
    .line 220
    move-result v24

    .line 221
    add-int v12, v24, v12

    .line 222
    .line 223
    add-int/lit8 v10, v10, 0x1

    .line 224
    .line 225
    add-int v7, v7, v18

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_a
    int-to-float v7, v10

    .line 229
    int-to-float v10, v11

    .line 230
    div-float/2addr v10, v7

    .line 231
    float-to-int v10, v10

    .line 232
    int-to-float v11, v13

    .line 233
    div-float/2addr v11, v7

    .line 234
    float-to-int v11, v11

    .line 235
    int-to-float v12, v12

    .line 236
    div-float/2addr v12, v7

    .line 237
    float-to-int v7, v12

    .line 238
    if-ne v8, v10, :cond_b

    .line 239
    .line 240
    if-ne v15, v11, :cond_b

    .line 241
    .line 242
    if-ne v5, v7, :cond_b

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_b
    sub-int v10, v8, v10

    .line 246
    .line 247
    sub-int v11, v15, v11

    .line 248
    .line 249
    sub-int v7, v5, v7

    .line 250
    .line 251
    mul-int/2addr v10, v10

    .line 252
    mul-int/2addr v11, v11

    .line 253
    add-int/2addr v11, v10

    .line 254
    mul-int/2addr v7, v7

    .line 255
    add-int/2addr v7, v11

    .line 256
    if-ne v14, v2, :cond_c

    .line 257
    .line 258
    move v4, v7

    .line 259
    goto :goto_4

    .line 260
    :cond_c
    if-ge v7, v4, :cond_d

    .line 261
    .line 262
    move v4, v7

    .line 263
    move v2, v14

    .line 264
    :cond_d
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 265
    .line 266
    move/from16 v7, v19

    .line 267
    .line 268
    move/from16 v10, v20

    .line 269
    .line 270
    move/from16 v11, v21

    .line 271
    .line 272
    move/from16 v13, v22

    .line 273
    .line 274
    move/from16 v12, v23

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_e
    move/from16 v20, v10

    .line 278
    .line 279
    move/from16 v21, v11

    .line 280
    .line 281
    move/from16 v23, v12

    .line 282
    .line 283
    move/from16 v22, v13

    .line 284
    .line 285
    move v14, v2

    .line 286
    :goto_5
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    move/from16 v10, p2

    .line 299
    .line 300
    move v11, v10

    .line 301
    move v12, v11

    .line 302
    move v13, v12

    .line 303
    move v8, v6

    .line 304
    move/from16 v7, v17

    .line 305
    .line 306
    :goto_6
    if-ge v7, v9, :cond_13

    .line 307
    .line 308
    invoke-virtual {v1, v7, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 309
    .line 310
    .line 311
    move-result v15

    .line 312
    move/from16 v18, v2

    .line 313
    .line 314
    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    move/from16 v19, v4

    .line 319
    .line 320
    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    move/from16 v24, v5

    .line 325
    .line 326
    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    sub-int v25, v7, v17

    .line 331
    .line 332
    move/from16 v26, v7

    .line 333
    .line 334
    iget-object v7, v0, Lcom/mycompany/app/ocr/OcrDetector;->l:[I

    .line 335
    .line 336
    aput p2, v7, v25

    .line 337
    .line 338
    iget-boolean v7, v3, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->f:Z

    .line 339
    .line 340
    move/from16 v27, v10

    .line 341
    .line 342
    invoke-virtual {v0, v2, v4, v5}, Lcom/mycompany/app/ocr/OcrDetector;->A(III)Z

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    if-ne v7, v10, :cond_11

    .line 347
    .line 348
    iget-boolean v7, v3, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->g:Z

    .line 349
    .line 350
    invoke-static {v2, v4, v5}, Lcom/mycompany/app/ocr/OcrDetector;->B(III)Z

    .line 351
    .line 352
    .line 353
    move-result v10

    .line 354
    if-eq v7, v10, :cond_f

    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_f
    if-nez v27, :cond_10

    .line 358
    .line 359
    move v11, v2

    .line 360
    move v12, v4

    .line 361
    move v13, v5

    .line 362
    move v8, v15

    .line 363
    move/from16 v10, v16

    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_10
    :goto_7
    move/from16 v10, v27

    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_11
    :goto_8
    if-nez v27, :cond_12

    .line 370
    .line 371
    iget-object v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->l:[I

    .line 372
    .line 373
    aput v16, v2, v25

    .line 374
    .line 375
    :cond_12
    move/from16 v2, v18

    .line 376
    .line 377
    move/from16 v4, v19

    .line 378
    .line 379
    move/from16 v5, v24

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :goto_9
    iget-object v7, v0, Lcom/mycompany/app/ocr/OcrDetector;->i:[I

    .line 383
    .line 384
    aput v2, v7, v25

    .line 385
    .line 386
    iget-object v7, v0, Lcom/mycompany/app/ocr/OcrDetector;->j:[I

    .line 387
    .line 388
    aput v4, v7, v25

    .line 389
    .line 390
    iget-object v7, v0, Lcom/mycompany/app/ocr/OcrDetector;->k:[I

    .line 391
    .line 392
    aput v5, v7, v25

    .line 393
    .line 394
    add-int/lit8 v7, v26, 0x1

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_13
    if-eq v8, v6, :cond_14

    .line 398
    .line 399
    move/from16 v2, p2

    .line 400
    .line 401
    move/from16 v7, v23

    .line 402
    .line 403
    :goto_a
    if-ge v2, v7, :cond_14

    .line 404
    .line 405
    iget-object v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->l:[I

    .line 406
    .line 407
    aget v3, v3, v2

    .line 408
    .line 409
    move/from16 v4, v16

    .line 410
    .line 411
    if-ne v3, v4, :cond_14

    .line 412
    .line 413
    iget-object v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->i:[I

    .line 414
    .line 415
    aput v11, v3, v2

    .line 416
    .line 417
    iget-object v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->j:[I

    .line 418
    .line 419
    aput v12, v3, v2

    .line 420
    .line 421
    iget-object v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->k:[I

    .line 422
    .line 423
    aput v13, v3, v2

    .line 424
    .line 425
    add-int/lit8 v2, v2, 0x1

    .line 426
    .line 427
    move/from16 v16, v4

    .line 428
    .line 429
    goto :goto_a

    .line 430
    :cond_14
    move/from16 v2, v17

    .line 431
    .line 432
    :goto_b
    if-ge v2, v9, :cond_18

    .line 433
    .line 434
    sub-int v3, v2, v17

    .line 435
    .line 436
    add-int/lit8 v4, v3, -0x1e

    .line 437
    .line 438
    add-int/lit8 v5, v3, 0x1f

    .line 439
    .line 440
    move/from16 v6, p2

    .line 441
    .line 442
    move v7, v6

    .line 443
    move v8, v7

    .line 444
    move v10, v8

    .line 445
    :goto_c
    if-ge v4, v5, :cond_17

    .line 446
    .line 447
    if-gez v4, :cond_15

    .line 448
    .line 449
    move/from16 v11, p2

    .line 450
    .line 451
    move/from16 v12, v22

    .line 452
    .line 453
    goto :goto_d

    .line 454
    :cond_15
    move/from16 v12, v22

    .line 455
    .line 456
    if-le v4, v12, :cond_16

    .line 457
    .line 458
    move v11, v12

    .line 459
    goto :goto_d

    .line 460
    :cond_16
    move v11, v4

    .line 461
    :goto_d
    iget-object v13, v0, Lcom/mycompany/app/ocr/OcrDetector;->i:[I

    .line 462
    .line 463
    aget v13, v13, v11

    .line 464
    .line 465
    add-int/2addr v7, v13

    .line 466
    iget-object v13, v0, Lcom/mycompany/app/ocr/OcrDetector;->j:[I

    .line 467
    .line 468
    aget v13, v13, v11

    .line 469
    .line 470
    add-int/2addr v8, v13

    .line 471
    iget-object v13, v0, Lcom/mycompany/app/ocr/OcrDetector;->k:[I

    .line 472
    .line 473
    aget v11, v13, v11

    .line 474
    .line 475
    add-int/2addr v10, v11

    .line 476
    add-int/lit8 v6, v6, 0x1

    .line 477
    .line 478
    add-int/lit8 v4, v4, 0x3

    .line 479
    .line 480
    move/from16 v22, v12

    .line 481
    .line 482
    goto :goto_c

    .line 483
    :cond_17
    move/from16 v12, v22

    .line 484
    .line 485
    int-to-float v4, v6

    .line 486
    int-to-float v5, v7

    .line 487
    div-float/2addr v5, v4

    .line 488
    float-to-int v5, v5

    .line 489
    int-to-float v6, v8

    .line 490
    div-float/2addr v6, v4

    .line 491
    float-to-int v6, v6

    .line 492
    int-to-float v7, v10

    .line 493
    div-float/2addr v7, v4

    .line 494
    float-to-int v4, v7

    .line 495
    iget-object v7, v0, Lcom/mycompany/app/ocr/OcrDetector;->l:[I

    .line 496
    .line 497
    invoke-static {v5, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 498
    .line 499
    .line 500
    move-result v4

    .line 501
    aput v4, v7, v3

    .line 502
    .line 503
    add-int/lit8 v2, v2, 0x1

    .line 504
    .line 505
    goto :goto_b

    .line 506
    :cond_18
    move/from16 v10, v20

    .line 507
    .line 508
    move/from16 v2, v21

    .line 509
    .line 510
    :goto_e
    if-ge v10, v2, :cond_1a

    .line 511
    .line 512
    move/from16 v3, v17

    .line 513
    .line 514
    :goto_f
    if-ge v3, v9, :cond_19

    .line 515
    .line 516
    sub-int v4, v3, v17

    .line 517
    .line 518
    iget-object v5, v0, Lcom/mycompany/app/ocr/OcrDetector;->l:[I

    .line 519
    .line 520
    aget v4, v5, v4

    .line 521
    .line 522
    invoke-virtual {v1, v3, v10, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 523
    .line 524
    .line 525
    add-int/lit8 v3, v3, 0x1

    .line 526
    .line 527
    goto :goto_f

    .line 528
    :cond_19
    add-int/lit8 v10, v10, 0x1

    .line 529
    .line 530
    goto :goto_e

    .line 531
    :cond_1a
    :goto_10
    return-void

    .line 532
    :cond_1b
    :goto_11
    iget v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->r:I

    .line 533
    .line 534
    if-eq v1, v6, :cond_1c

    .line 535
    .line 536
    iput v6, v0, Lcom/mycompany/app/ocr/OcrDetector;->r:I

    .line 537
    .line 538
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->s:Landroid/graphics/Paint;

    .line 539
    .line 540
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 541
    .line 542
    .line 543
    :cond_1c
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->s:Landroid/graphics/Paint;

    .line 544
    .line 545
    if-eqz v5, :cond_1d

    .line 546
    .line 547
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 548
    .line 549
    .line 550
    iget v3, v3, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->j:F

    .line 551
    .line 552
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 553
    .line 554
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 555
    .line 556
    .line 557
    move-result v6

    .line 558
    div-float/2addr v6, v8

    .line 559
    add-float/2addr v6, v5

    .line 560
    iget v5, v4, Landroid/graphics/RectF;->top:F

    .line 561
    .line 562
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 563
    .line 564
    .line 565
    move-result v7

    .line 566
    div-float/2addr v7, v8

    .line 567
    add-float/2addr v7, v5

    .line 568
    invoke-virtual {v2, v3, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :cond_1d
    invoke-virtual {v2, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 579
    .line 580
    .line 581
    return-void
.end method

.method public final o(Landroid/graphics/Canvas;Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)V
    .locals 10

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->o:Landroid/text/StaticLayout;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x2

    .line 19
    if-ge v2, v3, :cond_3

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 23
    .line 24
    iget v3, p0, Lcom/mycompany/app/ocr/OcrDetector;->r:I

    .line 25
    .line 26
    iget v4, p2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->e:I

    .line 27
    .line 28
    if-eq v3, v4, :cond_4

    .line 29
    .line 30
    iput v4, p0, Lcom/mycompany/app/ocr/OcrDetector;->r:I

    .line 31
    .line 32
    iget-object v3, p0, Lcom/mycompany/app/ocr/OcrDetector;->s:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    .line 39
    .line 40
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 41
    .line 42
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 43
    .line 44
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    .line 46
    .line 47
    iget v3, p2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 48
    .line 49
    invoke-static {v3}, Lcom/mycompany/app/ocr/OcrDetector;->C(F)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/high16 v4, 0x40000000    # 2.0f

    .line 54
    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    iget v3, p2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    div-float/2addr v5, v4

    .line 64
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    div-float/2addr v1, v4

    .line 69
    invoke-virtual {p1, v3, v5, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget p2, p2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 73
    .line 74
    div-float/2addr p2, v4

    .line 75
    new-instance v1, Landroid/graphics/RectF;

    .line 76
    .line 77
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v3, Landroid/graphics/RectF;

    .line 81
    .line 82
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v4, Landroid/graphics/RectF;

    .line 86
    .line 87
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 88
    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    :cond_6
    :goto_1
    if-ge v5, v2, :cond_8

    .line 92
    .line 93
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineLeft(I)F

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    int-to-float v6, v6

    .line 104
    iput v6, v1, Landroid/graphics/RectF;->top:F

    .line 105
    .line 106
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineRight(I)F

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    iput v6, v1, Landroid/graphics/RectF;->right:F

    .line 111
    .line 112
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineBottom(I)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    int-to-float v6, v6

    .line 117
    iput v6, v1, Landroid/graphics/RectF;->bottom:F

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/graphics/RectF;->sort()V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v5, v5, 0x1

    .line 123
    .line 124
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineLeft(I)F

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iput v6, v3, Landroid/graphics/RectF;->left:F

    .line 129
    .line 130
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    int-to-float v6, v6

    .line 135
    iput v6, v3, Landroid/graphics/RectF;->top:F

    .line 136
    .line 137
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineRight(I)F

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    iput v6, v3, Landroid/graphics/RectF;->right:F

    .line 142
    .line 143
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineBottom(I)I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    int-to-float v6, v6

    .line 148
    iput v6, v3, Landroid/graphics/RectF;->bottom:F

    .line 149
    .line 150
    invoke-virtual {v3}, Landroid/graphics/RectF;->sort()V

    .line 151
    .line 152
    .line 153
    iget v6, v1, Landroid/graphics/RectF;->left:F

    .line 154
    .line 155
    iget v7, v3, Landroid/graphics/RectF;->left:F

    .line 156
    .line 157
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 162
    .line 163
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    .line 164
    .line 165
    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 166
    .line 167
    iget v6, v1, Landroid/graphics/RectF;->right:F

    .line 168
    .line 169
    iget v7, v3, Landroid/graphics/RectF;->right:F

    .line 170
    .line 171
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    iget v7, v3, Landroid/graphics/RectF;->top:F

    .line 176
    .line 177
    iget v8, v4, Landroid/graphics/RectF;->left:F

    .line 178
    .line 179
    add-float/2addr v8, p2

    .line 180
    iput v8, v4, Landroid/graphics/RectF;->left:F

    .line 181
    .line 182
    iget v9, v4, Landroid/graphics/RectF;->top:F

    .line 183
    .line 184
    sub-float/2addr v9, p2

    .line 185
    iput v9, v4, Landroid/graphics/RectF;->top:F

    .line 186
    .line 187
    sub-float/2addr v6, p2

    .line 188
    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 189
    .line 190
    add-float/2addr v7, p2

    .line 191
    iput v7, v4, Landroid/graphics/RectF;->bottom:F

    .line 192
    .line 193
    cmpl-float v6, v8, v6

    .line 194
    .line 195
    if-gez v6, :cond_6

    .line 196
    .line 197
    cmpl-float v6, v9, v7

    .line 198
    .line 199
    if-ltz v6, :cond_7

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_7
    iget-object v6, p0, Lcom/mycompany/app/ocr/OcrDetector;->s:Landroid/graphics/Paint;

    .line 203
    .line 204
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public final q(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :cond_1
    :goto_0
    if-ge v4, v2, :cond_6

    .line 19
    .line 20
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    .line 26
    check-cast v5, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 27
    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget v6, v5, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->a:I

    .line 32
    .line 33
    iget v7, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->a:I

    .line 34
    .line 35
    if-ne v6, v7, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget-object v6, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-nez v6, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    move v8, v3

    .line 51
    :cond_5
    if-ge v8, v7, :cond_1

    .line 52
    .line 53
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    add-int/lit8 v8, v8, 0x1

    .line 58
    .line 59
    check-cast v9, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    iget v10, v5, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->a:I

    .line 66
    .line 67
    if-ne v10, v9, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_6
    return-object v0
.end method

.method public final r()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->I:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    :goto_0
    if-ge v5, v2, :cond_8

    .line 12
    .line 13
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    add-int/lit8 v5, v5, 0x1

    .line 18
    .line 19
    check-cast v6, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    :goto_1
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_0
    iget-object v7, v6, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->m:Landroid/graphics/RectF;

    .line 28
    .line 29
    if-nez v7, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget v8, v0, Lcom/mycompany/app/ocr/OcrDetector;->f:F

    .line 33
    .line 34
    iget v9, v7, Landroid/graphics/RectF;->left:F

    .line 35
    .line 36
    sub-float/2addr v9, v8

    .line 37
    iput v9, v7, Landroid/graphics/RectF;->left:F

    .line 38
    .line 39
    iget v10, v7, Landroid/graphics/RectF;->right:F

    .line 40
    .line 41
    add-float/2addr v10, v8

    .line 42
    iput v10, v7, Landroid/graphics/RectF;->right:F

    .line 43
    .line 44
    iget v11, v7, Landroid/graphics/RectF;->top:F

    .line 45
    .line 46
    sub-float/2addr v11, v8

    .line 47
    iput v11, v7, Landroid/graphics/RectF;->top:F

    .line 48
    .line 49
    iget v12, v7, Landroid/graphics/RectF;->bottom:F

    .line 50
    .line 51
    add-float/2addr v12, v8

    .line 52
    iput v12, v7, Landroid/graphics/RectF;->bottom:F

    .line 53
    .line 54
    const/high16 v13, 0x40000000    # 2.0f

    .line 55
    .line 56
    mul-float/2addr v13, v8

    .line 57
    iget v14, v6, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->l:F

    .line 58
    .line 59
    iget v15, v0, Lcom/mycompany/app/ocr/OcrDetector;->b:F

    .line 60
    .line 61
    div-float v15, v14, v15

    .line 62
    .line 63
    const/high16 v16, 0x3f800000    # 1.0f

    .line 64
    .line 65
    cmpl-float v16, v15, v16

    .line 66
    .line 67
    if-lez v16, :cond_2

    .line 68
    .line 69
    mul-float/2addr v13, v15

    .line 70
    :cond_2
    iput v13, v6, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->n:F

    .line 71
    .line 72
    iget-boolean v15, v6, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->h:Z

    .line 73
    .line 74
    if-eqz v15, :cond_4

    .line 75
    .line 76
    iget v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->a:F

    .line 77
    .line 78
    cmpl-float v3, v14, v3

    .line 79
    .line 80
    if-lez v3, :cond_4

    .line 81
    .line 82
    sub-float/2addr v13, v8

    .line 83
    iget-boolean v3, v6, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->k:Z

    .line 84
    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    sub-float/2addr v11, v13

    .line 88
    iput v11, v7, Landroid/graphics/RectF;->top:F

    .line 89
    .line 90
    add-float/2addr v12, v13

    .line 91
    iput v12, v7, Landroid/graphics/RectF;->bottom:F

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    sub-float/2addr v9, v13

    .line 95
    iput v9, v7, Landroid/graphics/RectF;->left:F

    .line 96
    .line 97
    add-float/2addr v10, v13

    .line 98
    iput v10, v7, Landroid/graphics/RectF;->right:F

    .line 99
    .line 100
    :cond_4
    :goto_2
    iget-boolean v3, v6, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->k:Z

    .line 101
    .line 102
    if-nez v3, :cond_5

    .line 103
    .line 104
    if-eqz v15, :cond_5

    .line 105
    .line 106
    iget v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->q:I

    .line 107
    .line 108
    const/4 v8, 0x2

    .line 109
    if-ne v3, v8, :cond_5

    .line 110
    .line 111
    iget v3, v6, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->j:F

    .line 112
    .line 113
    invoke-static {v3}, Lcom/mycompany/app/ocr/OcrDetector;->C(F)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    :cond_5
    const/4 v6, 0x0

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    iget v3, v7, Landroid/graphics/RectF;->left:F

    .line 122
    .line 123
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    const/4 v6, 0x0

    .line 128
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    iget v7, v7, Landroid/graphics/RectF;->right:F

    .line 133
    .line 134
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    iget v8, v0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 139
    .line 140
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    sub-int/2addr v7, v3

    .line 145
    if-nez v7, :cond_7

    .line 146
    .line 147
    const/4 v7, 0x1

    .line 148
    goto :goto_4

    .line 149
    :goto_3
    move v7, v6

    .line 150
    :cond_7
    :goto_4
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_8
    if-nez v4, :cond_9

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->i:[I

    .line 160
    .line 161
    if-eqz v1, :cond_a

    .line 162
    .line 163
    array-length v1, v1

    .line 164
    if-ge v1, v4, :cond_b

    .line 165
    .line 166
    :cond_a
    new-array v1, v4, [I

    .line 167
    .line 168
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->i:[I

    .line 169
    .line 170
    :cond_b
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->j:[I

    .line 171
    .line 172
    if-eqz v1, :cond_c

    .line 173
    .line 174
    array-length v1, v1

    .line 175
    if-ge v1, v4, :cond_d

    .line 176
    .line 177
    :cond_c
    new-array v1, v4, [I

    .line 178
    .line 179
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->j:[I

    .line 180
    .line 181
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->k:[I

    .line 182
    .line 183
    if-eqz v1, :cond_e

    .line 184
    .line 185
    array-length v1, v1

    .line 186
    if-ge v1, v4, :cond_f

    .line 187
    .line 188
    :cond_e
    new-array v1, v4, [I

    .line 189
    .line 190
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->k:[I

    .line 191
    .line 192
    :cond_f
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->l:[I

    .line 193
    .line 194
    if-eqz v1, :cond_11

    .line 195
    .line 196
    array-length v1, v1

    .line 197
    if-ge v1, v4, :cond_10

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_10
    :goto_5
    return-void

    .line 201
    :cond_11
    :goto_6
    new-array v1, v4, [I

    .line 202
    .line 203
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->l:[I

    .line 204
    .line 205
    return-void
.end method

.method public final s(IIIILandroid/graphics/Bitmap;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;)V
    .locals 4

    .line 1
    if-ltz p3, :cond_3

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->C:I

    .line 4
    .line 5
    if-lt p3, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_3

    .line 9
    .line 10
    invoke-virtual {p5, p1, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v1, v2, v0}, Lcom/mycompany/app/ocr/OcrDetector;->A(III)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->a:I

    .line 33
    .line 34
    add-int/2addr v3, v1

    .line 35
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->a:I

    .line 36
    .line 37
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->b:I

    .line 38
    .line 39
    add-int/2addr v3, v2

    .line 40
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->b:I

    .line 41
    .line 42
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->c:I

    .line 43
    .line 44
    add-int/2addr v3, v0

    .line 45
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->c:I

    .line 46
    .line 47
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->d:I

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->d:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->e:I

    .line 55
    .line 56
    add-int/2addr v3, v1

    .line 57
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->e:I

    .line 58
    .line 59
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->f:I

    .line 60
    .line 61
    add-int/2addr v3, v2

    .line 62
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->f:I

    .line 63
    .line 64
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->g:I

    .line 65
    .line 66
    add-int/2addr v3, v0

    .line 67
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->g:I

    .line 68
    .line 69
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->h:I

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->h:I

    .line 74
    .line 75
    :goto_1
    iget-boolean v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->i:Z

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/ocr/OcrDetector;->B(III)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    xor-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    iput-boolean v0, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->i:Z

    .line 86
    .line 87
    :cond_2
    add-int/2addr p1, p4

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    :goto_2
    return-void
.end method

.method public final t(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-le v0, v2, :cond_1

    .line 18
    .line 19
    int-to-float v3, v2

    .line 20
    int-to-float v4, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    int-to-float v3, v0

    .line 23
    int-to-float v4, v2

    .line 24
    :goto_0
    int-to-float v5, v0

    .line 25
    int-to-float v6, v2

    .line 26
    const/high16 v7, 0x45800000    # 4096.0f

    .line 27
    .line 28
    cmpl-float v8, v4, v7

    .line 29
    .line 30
    const/high16 v9, 0x44800000    # 1024.0f

    .line 31
    .line 32
    if-lez v8, :cond_2

    .line 33
    .line 34
    div-float/2addr v7, v4

    .line 35
    mul-float v3, v5, v7

    .line 36
    .line 37
    :goto_1
    mul-float/2addr v6, v7

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    cmpg-float v8, v3, v9

    .line 40
    .line 41
    if-gez v8, :cond_4

    .line 42
    .line 43
    div-float v3, v9, v3

    .line 44
    .line 45
    mul-float v8, v5, v3

    .line 46
    .line 47
    mul-float/2addr v6, v3

    .line 48
    mul-float/2addr v4, v3

    .line 49
    cmpl-float v3, v4, v7

    .line 50
    .line 51
    if-lez v3, :cond_3

    .line 52
    .line 53
    div-float/2addr v7, v4

    .line 54
    mul-float v3, v8, v7

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move v3, v8

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move v3, v5

    .line 60
    :goto_2
    sget v4, Lcom/mycompany/app/pref/PrefAlbum;->B:I

    .line 61
    .line 62
    invoke-static {v4}, Lcom/mycompany/app/ocr/OcrDetector;->x(I)F

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    mul-float/2addr v3, v4

    .line 67
    mul-float/2addr v6, v4

    .line 68
    if-le v0, v2, :cond_5

    .line 69
    .line 70
    div-int/lit8 v4, v0, 0x2

    .line 71
    .line 72
    int-to-float v4, v4

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    move v4, v5

    .line 75
    :goto_3
    iput v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 76
    .line 77
    iput v2, p0, Lcom/mycompany/app/ocr/OcrDetector;->C:I

    .line 78
    .line 79
    div-float v0, v5, v3

    .line 80
    .line 81
    iput v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->D:F

    .line 82
    .line 83
    div-float/2addr v4, v9

    .line 84
    iput v4, p0, Lcom/mycompany/app/ocr/OcrDetector;->E:F

    .line 85
    .line 86
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-static {v0, v2, p1}, Lcom/mycompany/app/main/MainUtil;->k3(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 105
    .line 106
    .line 107
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    if-eqz v1, :cond_6

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_6
    return-object p1

    .line 112
    :catch_0
    return-object v1
.end method

.method public final v(Lcom/mycompany/app/ocr/OcrDetector$OcrItem;Lcom/mycompany/app/ocr/OcrDetector$OcrItem;Z)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 8
    .line 9
    iget-object v4, v2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 10
    .line 11
    if-eqz v3, :cond_a

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    if-eqz p3, :cond_5

    .line 18
    .line 19
    iget-boolean v5, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 20
    .line 21
    iget-boolean v6, v2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 22
    .line 23
    if-eq v5, v6, :cond_1

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    iget v5, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 28
    .line 29
    iget v6, v2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 30
    .line 31
    sub-float/2addr v5, v6

    .line 32
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/high16 v6, 0x41200000    # 10.0f

    .line 37
    .line 38
    cmpl-float v5, v5, v6

    .line 39
    .line 40
    if-lez v5, :cond_2

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_2
    iget v5, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 45
    .line 46
    iget v6, v2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 47
    .line 48
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iget v6, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 53
    .line 54
    iget v2, v2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 55
    .line 56
    sub-float/2addr v6, v2

    .line 57
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    cmpl-float v6, v2, v5

    .line 62
    .line 63
    if-gtz v6, :cond_a

    .line 64
    .line 65
    iget v6, v0, Lcom/mycompany/app/ocr/OcrDetector;->d:F

    .line 66
    .line 67
    cmpl-float v2, v2, v6

    .line 68
    .line 69
    if-lez v2, :cond_3

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_3
    iget-boolean v2, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-static {v3, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    new-instance v2, Landroid/graphics/RectF;

    .line 85
    .line 86
    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 87
    .line 88
    .line 89
    iget v6, v2, Landroid/graphics/RectF;->top:F

    .line 90
    .line 91
    iget v7, v0, Lcom/mycompany/app/ocr/OcrDetector;->d:F

    .line 92
    .line 93
    sub-float/2addr v6, v7

    .line 94
    iput v6, v2, Landroid/graphics/RectF;->top:F

    .line 95
    .line 96
    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    .line 97
    .line 98
    add-float/2addr v6, v7

    .line 99
    iput v6, v2, Landroid/graphics/RectF;->bottom:F

    .line 100
    .line 101
    invoke-static {v2, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    :goto_0
    const/16 v1, 0x20

    .line 108
    .line 109
    return v1

    .line 110
    :cond_5
    const/4 v5, 0x0

    .line 111
    :cond_6
    iget-boolean v1, v1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 112
    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    iget v1, v3, Landroid/graphics/RectF;->left:F

    .line 116
    .line 117
    iget v2, v3, Landroid/graphics/RectF;->right:F

    .line 118
    .line 119
    add-float v6, v2, v5

    .line 120
    .line 121
    iget v7, v4, Landroid/graphics/RectF;->left:F

    .line 122
    .line 123
    iget v8, v3, Landroid/graphics/RectF;->top:F

    .line 124
    .line 125
    iget v9, v4, Landroid/graphics/RectF;->top:F

    .line 126
    .line 127
    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    .line 128
    .line 129
    iget v13, v4, Landroid/graphics/RectF;->bottom:F

    .line 130
    .line 131
    cmpg-float v3, v1, v7

    .line 132
    .line 133
    if-gez v3, :cond_7

    .line 134
    .line 135
    cmpl-float v3, v6, v7

    .line 136
    .line 137
    if-lez v3, :cond_7

    .line 138
    .line 139
    move v10, v12

    .line 140
    const/16 v12, 0x10

    .line 141
    .line 142
    move v11, v13

    .line 143
    const/4 v13, 0x4

    .line 144
    const/4 v14, 0x2

    .line 145
    move/from16 v15, p3

    .line 146
    .line 147
    invoke-static/range {v6 .. v15}, Lcom/mycompany/app/ocr/OcrDetector;->u(FFFFFFIIIZ)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    return v1

    .line 152
    :cond_7
    move v11, v13

    .line 153
    move v10, v8

    .line 154
    iget v8, v4, Landroid/graphics/RectF;->right:F

    .line 155
    .line 156
    sub-float/2addr v1, v5

    .line 157
    cmpl-float v2, v2, v8

    .line 158
    .line 159
    if-lez v2, :cond_a

    .line 160
    .line 161
    cmpg-float v2, v1, v8

    .line 162
    .line 163
    if-gez v2, :cond_a

    .line 164
    .line 165
    const/16 v14, 0x8

    .line 166
    .line 167
    const/4 v15, 0x4

    .line 168
    const/16 v16, 0x2

    .line 169
    .line 170
    move/from16 v17, p3

    .line 171
    .line 172
    move v13, v11

    .line 173
    move v11, v9

    .line 174
    move v9, v1

    .line 175
    invoke-static/range {v8 .. v17}, Lcom/mycompany/app/ocr/OcrDetector;->u(FFFFFFIIIZ)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    return v1

    .line 180
    :cond_8
    iget v1, v3, Landroid/graphics/RectF;->top:F

    .line 181
    .line 182
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 183
    .line 184
    move v6, v2

    .line 185
    add-float v2, v6, v5

    .line 186
    .line 187
    iget v7, v4, Landroid/graphics/RectF;->top:F

    .line 188
    .line 189
    iget v8, v3, Landroid/graphics/RectF;->left:F

    .line 190
    .line 191
    move v9, v5

    .line 192
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 193
    .line 194
    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 195
    .line 196
    move v10, v6

    .line 197
    move v6, v3

    .line 198
    move v3, v7

    .line 199
    iget v7, v4, Landroid/graphics/RectF;->right:F

    .line 200
    .line 201
    cmpg-float v11, v1, v3

    .line 202
    .line 203
    if-gez v11, :cond_9

    .line 204
    .line 205
    cmpl-float v11, v2, v3

    .line 206
    .line 207
    if-lez v11, :cond_9

    .line 208
    .line 209
    move v4, v8

    .line 210
    const/4 v8, 0x4

    .line 211
    const/16 v9, 0x10

    .line 212
    .line 213
    const/16 v10, 0x8

    .line 214
    .line 215
    move/from16 v11, p3

    .line 216
    .line 217
    invoke-static/range {v2 .. v11}, Lcom/mycompany/app/ocr/OcrDetector;->u(FFFFFFIIIZ)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    return v1

    .line 222
    :cond_9
    move/from16 v18, v8

    .line 223
    .line 224
    move-object v8, v4

    .line 225
    move/from16 v4, v18

    .line 226
    .line 227
    iget v2, v8, Landroid/graphics/RectF;->bottom:F

    .line 228
    .line 229
    sub-float v3, v1, v9

    .line 230
    .line 231
    cmpl-float v1, v10, v2

    .line 232
    .line 233
    if-lez v1, :cond_a

    .line 234
    .line 235
    cmpg-float v1, v3, v2

    .line 236
    .line 237
    if-gez v1, :cond_a

    .line 238
    .line 239
    const/4 v8, 0x2

    .line 240
    const/16 v9, 0x10

    .line 241
    .line 242
    const/16 v10, 0x8

    .line 243
    .line 244
    move/from16 v11, p3

    .line 245
    .line 246
    invoke-static/range {v2 .. v11}, Lcom/mycompany/app/ocr/OcrDetector;->u(FFFFFFIIIZ)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    return v1

    .line 251
    :cond_a
    :goto_1
    const/4 v1, 0x0

    .line 252
    return v1
.end method

.method public final w(IIIILandroid/graphics/Bitmap;Lcom/mycompany/app/ocr/OcrDetector$ColorItem;)V
    .locals 4

    .line 1
    if-ltz p3, :cond_3

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 4
    .line 5
    if-lt p3, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_3

    .line 9
    .line 10
    invoke-virtual {p5, p3, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v1, v2, v0}, Lcom/mycompany/app/ocr/OcrDetector;->A(III)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->a:I

    .line 33
    .line 34
    add-int/2addr v3, v1

    .line 35
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->a:I

    .line 36
    .line 37
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->b:I

    .line 38
    .line 39
    add-int/2addr v3, v2

    .line 40
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->b:I

    .line 41
    .line 42
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->c:I

    .line 43
    .line 44
    add-int/2addr v3, v0

    .line 45
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->c:I

    .line 46
    .line 47
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->d:I

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->d:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->e:I

    .line 55
    .line 56
    add-int/2addr v3, v1

    .line 57
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->e:I

    .line 58
    .line 59
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->f:I

    .line 60
    .line 61
    add-int/2addr v3, v2

    .line 62
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->f:I

    .line 63
    .line 64
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->g:I

    .line 65
    .line 66
    add-int/2addr v3, v0

    .line 67
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->g:I

    .line 68
    .line 69
    iget v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->h:I

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    iput v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->h:I

    .line 74
    .line 75
    :goto_1
    iget-boolean v3, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->i:Z

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/ocr/OcrDetector;->B(III)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    xor-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    iput-boolean v0, p6, Lcom/mycompany/app/ocr/OcrDetector$ColorItem;->i:Z

    .line 86
    .line 87
    :cond_2
    add-int/2addr p1, p4

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    :goto_2
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->P:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogOcrLoad;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->P:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final z(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    iget v0, p0, Lcom/mycompany/app/ocr/OcrDetector;->B:I

    .line 5
    .line 6
    iget v1, p0, Lcom/mycompany/app/ocr/OcrDetector;->C:I

    .line 7
    .line 8
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    cmpg-float v4, v2, v3

    .line 12
    .line 13
    if-gez v4, :cond_1

    .line 14
    .line 15
    iput v3, p1, Landroid/graphics/RectF;->left:F

    .line 16
    .line 17
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 18
    .line 19
    sub-float/2addr v0, v2

    .line 20
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v4, p1, Landroid/graphics/RectF;->right:F

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    cmpl-float v5, v4, v0

    .line 27
    .line 28
    if-lez v5, :cond_2

    .line 29
    .line 30
    sub-float/2addr v4, v0

    .line 31
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 32
    .line 33
    sub-float/2addr v2, v4

    .line 34
    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 35
    .line 36
    move v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v2, v3

    .line 39
    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 40
    .line 41
    cmpg-float v4, v0, v3

    .line 42
    .line 43
    if-gez v4, :cond_3

    .line 44
    .line 45
    iput v3, p1, Landroid/graphics/RectF;->top:F

    .line 46
    .line 47
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 48
    .line 49
    sub-float/2addr v1, v0

    .line 50
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 54
    .line 55
    int-to-float v1, v1

    .line 56
    cmpl-float v5, v4, v1

    .line 57
    .line 58
    if-lez v5, :cond_4

    .line 59
    .line 60
    sub-float/2addr v4, v1

    .line 61
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 62
    .line 63
    sub-float/2addr v0, v4

    .line 64
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 65
    .line 66
    move v0, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move v0, v3

    .line 69
    :goto_1
    if-nez p2, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_6

    .line 77
    .line 78
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_6

    .line 83
    .line 84
    :goto_2
    return-void

    .line 85
    :cond_6
    iget p1, p2, Landroid/graphics/RectF;->left:F

    .line 86
    .line 87
    sub-float/2addr p1, v2

    .line 88
    iput p1, p2, Landroid/graphics/RectF;->left:F

    .line 89
    .line 90
    iget p1, p2, Landroid/graphics/RectF;->right:F

    .line 91
    .line 92
    sub-float/2addr p1, v2

    .line 93
    iput p1, p2, Landroid/graphics/RectF;->right:F

    .line 94
    .line 95
    iget p1, p2, Landroid/graphics/RectF;->top:F

    .line 96
    .line 97
    sub-float/2addr p1, v0

    .line 98
    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 99
    .line 100
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 101
    .line 102
    sub-float/2addr p1, v0

    .line 103
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 104
    .line 105
    return-void
.end method
