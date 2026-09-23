.class Lcom/mycompany/app/ocr/OcrDetector$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;


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
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector$10;->a:Lcom/mycompany/app/ocr/OcrDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$10;->a:Lcom/mycompany/app/ocr/OcrDetector;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$10;->a:Lcom/mycompany/app/ocr/OcrDetector;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->o:Lcom/mycompany/app/ocr/OcrDetector$OcrListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v1, v2}, Lcom/mycompany/app/ocr/OcrDetector$OcrListener;->b(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    iput v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->x:Ljava/util/ArrayList;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->x:Ljava/util/ArrayList;

    .line 29
    .line 30
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->H(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    iget-object v2, p0, Lcom/mycompany/app/ocr/OcrDetector$10;->a:Lcom/mycompany/app/ocr/OcrDetector;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, v2, Lcom/mycompany/app/ocr/OcrDetector;->v:I

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Lcom/mycompany/app/ocr/OcrDetector;->H(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v2, v0}, Lcom/mycompany/app/ocr/OcrDetector;->H(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
