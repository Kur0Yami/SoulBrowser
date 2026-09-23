.class Lcom/mycompany/app/ocr/OcrDetector$9;
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
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector$9;->c:Lcom/mycompany/app/ocr/OcrDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$9;->c:Lcom/mycompany/app/ocr/OcrDetector;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->P:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    if-ne v2, v3, :cond_1

    .line 11
    .line 12
    iget v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    .line 13
    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogOcrLoad;->e0:Lcom/mycompany/app/view/MyProgressBar;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v2, v1, Lcom/mycompany/app/dialog/DialogOcrLoad;->g0:I

    .line 22
    .line 23
    int-to-float v1, v2

    .line 24
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->H(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogOcrLoad;->C()V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/ocr/OcrDetector;->N()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
