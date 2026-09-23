.class Lcom/mycompany/app/ocr/OcrDetector$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainTransOcr$TransOcrListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/ocr/OcrDetector;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/ocr/OcrDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector$7;->a:Lcom/mycompany/app/ocr/OcrDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$7;->a:Lcom/mycompany/app/ocr/OcrDetector;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-virtual {v0, p1}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, v0, Lcom/mycompany/app/ocr/OcrDetector;->O:Z

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mycompany/app/ocr/OcrDetector;->b(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$7;->a:Lcom/mycompany/app/ocr/OcrDetector;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->N:Lcom/mycompany/app/main/MainTransOcr;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTransOcr;->b()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->N:Lcom/mycompany/app/main/MainTransOcr;

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x3

    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
