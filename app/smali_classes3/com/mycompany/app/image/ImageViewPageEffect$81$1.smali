.class Lcom/mycompany/app/image/ImageViewPageEffect$81$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageEffect$81;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect$81;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$81$1;->c:Lcom/mycompany/app/image/ImageViewPageEffect$81;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$81$1;->c:Lcom/mycompany/app/image/ImageViewPageEffect$81;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect$81;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->q1:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->r1:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->s1:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->q1:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->r1:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->s1:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->d1:Lcom/mycompany/app/ocr/OcrDetector;

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {v4, v1, v3, v2}, Lcom/mycompany/app/ocr/OcrDetector;->M(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance v4, Lcom/mycompany/app/ocr/OcrDetector;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->d1:Lcom/mycompany/app/ocr/OcrDetector;

    .line 52
    .line 53
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 54
    .line 55
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 56
    .line 57
    new-instance v7, Lcom/mycompany/app/image/ImageViewPageEffect$84;

    .line 58
    .line 59
    invoke-direct {v7, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$84;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 60
    .line 61
    .line 62
    iput-object v5, v4, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 63
    .line 64
    iput-object v6, v4, Lcom/mycompany/app/ocr/OcrDetector;->n:Landroid/view/ViewGroup;

    .line 65
    .line 66
    iput-object v7, v4, Lcom/mycompany/app/ocr/OcrDetector;->o:Lcom/mycompany/app/ocr/OcrDetector$OcrListener;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/mycompany/app/ocr/OcrDetector;->J()V

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->d1:Lcom/mycompany/app/ocr/OcrDetector;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v3, v2}, Lcom/mycompany/app/ocr/OcrDetector;->M(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
