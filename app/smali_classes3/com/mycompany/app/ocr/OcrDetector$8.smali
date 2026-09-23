.class Lcom/mycompany/app/ocr/OcrDetector$8;
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
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector$8;->c:Lcom/mycompany/app/ocr/OcrDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$8;->c:Lcom/mycompany/app/ocr/OcrDetector;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->P:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogOcrLoad;->D()V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    if-eqz v1, :cond_2

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/ocr/OcrDetector;->y()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->o:Lcom/mycompany/app/ocr/OcrDetector$OcrListener;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-interface {v1, v2}, Lcom/mycompany/app/ocr/OcrDetector$OcrListener;->b(Z)V

    .line 28
    .line 29
    .line 30
    :cond_3
    # Progress max for Maven OCR dependency download (not Play module pages).
    const/16 v3, 0x64

    const/4 v2, 0x0

    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    iget v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 40
    .line 41
    iget-object v4, v0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 42
    .line 43
    new-instance v5, Lcom/mycompany/app/ocr/OcrDetector$10;

    .line 44
    .line 45
    invoke-direct {v5, v0}, Lcom/mycompany/app/ocr/OcrDetector$10;-><init>(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v4, v2, v3, v5}, Lcom/mycompany/app/dialog/DialogOcrLoad;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->P:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 52
    .line 53
    new-instance v2, Lcom/mycompany/app/ocr/OcrDetector$11;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Lcom/mycompany/app/ocr/OcrDetector$11;-><init>(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/ocr/OcrDetector;->N()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
