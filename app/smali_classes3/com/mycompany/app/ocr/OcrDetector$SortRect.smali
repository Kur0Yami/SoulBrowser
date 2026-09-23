.class Lcom/mycompany/app/ocr/OcrDetector$SortRect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/ocr/OcrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortRect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/ocr/OcrDetector$RectItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/ocr/OcrDetector$RectItem;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->m:Landroid/graphics/RectF;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/mycompany/app/ocr/OcrDetector$RectItem;->m:Landroid/graphics/RectF;

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    if-nez p2, :cond_3

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_3
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 22
    .line 23
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 24
    .line 25
    cmpg-float v0, p1, p2

    .line 26
    .line 27
    if-gez v0, :cond_4

    .line 28
    .line 29
    :goto_0
    const/4 p1, -0x1

    .line 30
    return p1

    .line 31
    :cond_4
    cmpg-float p1, p2, p1

    .line 32
    .line 33
    if-gez p1, :cond_5

    .line 34
    .line 35
    :goto_1
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_5
    const/4 p1, 0x0

    .line 38
    return p1
.end method
