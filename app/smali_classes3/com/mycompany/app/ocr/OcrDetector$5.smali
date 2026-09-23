.class Lcom/mycompany/app/ocr/OcrDetector$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/mlkit/vision/text/Text;",
        ">;"
    }
.end annotation


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
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector$5;->c:Lcom/mycompany/app/ocr/OcrDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/text/Text;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$5;->c:Lcom/mycompany/app/ocr/OcrDetector;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/ocr/OcrDetector;->F()V

    .line 6
    .line 7
    .line 8
    iget v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->P:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p1, v0, Lcom/mycompany/app/ocr/OcrDetector;->n:Landroid/view/ViewGroup;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v1, Lcom/mycompany/app/ocr/OcrDetector$9;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/mycompany/app/ocr/OcrDetector$9;-><init>(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    if-ne v1, v2, :cond_2

    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/mycompany/app/ocr/OcrDetector;->d(Lcom/mycompany/app/ocr/OcrDetector;Lcom/google/mlkit/vision/text/Text;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-virtual {v0, p1}, Lcom/mycompany/app/ocr/OcrDetector;->K(Lcom/google/mlkit/vision/text/Text;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
