.class Lcom/mycompany/app/ocr/OcrDetector$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


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
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector$4;->c:Lcom/mycompany/app/ocr/OcrDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$4;->c:Lcom/mycompany/app/ocr/OcrDetector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/ocr/OcrDetector;->F()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "wait"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "download"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/ocr/OcrDetector;->n:Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance v1, Lcom/mycompany/app/ocr/OcrDetector$8;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lcom/mycompany/app/ocr/OcrDetector$8;-><init>(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    sget p1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 53
    .line 54
    const/4 v1, 0x5

    .line 55
    if-ne p1, v1, :cond_3

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    invoke-static {v0, p1}, Lcom/mycompany/app/ocr/OcrDetector;->d(Lcom/mycompany/app/ocr/OcrDetector;Lcom/google/mlkit/vision/text/Text;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    const/4 p1, 0x3

    .line 63
    invoke-virtual {v0, p1}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
