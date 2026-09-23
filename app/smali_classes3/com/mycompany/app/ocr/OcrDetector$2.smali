.class Lcom/mycompany/app/ocr/OcrDetector$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/ocr/OcrDetector;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/ocr/OcrDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector$2;->f:Lcom/mycompany/app/ocr/OcrDetector;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/ocr/OcrDetector$2;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$2;->f:Lcom/mycompany/app/ocr/OcrDetector;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->o:Lcom/mycompany/app/ocr/OcrDetector$OcrListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->y:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/ocr/OcrDetector;->z:Ljava/lang/String;

    .line 10
    .line 11
    iget v4, p0, Lcom/mycompany/app/ocr/OcrDetector$2;->c:I

    .line 12
    .line 13
    invoke-interface {v1, v4, v2, v3}, Lcom/mycompany/app/ocr/OcrDetector$OcrListener;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/ocr/OcrDetector;->y()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/ocr/OcrDetector;->N()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->w:Lcom/google/mlkit/vision/common/InputImage;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->x:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/ocr/OcrDetector;->G()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
