.class Lcom/mycompany/app/ocr/OcrDetector$3;
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
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector$3;->f:Lcom/mycompany/app/ocr/OcrDetector;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/ocr/OcrDetector$3;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$3;->f:Lcom/mycompany/app/ocr/OcrDetector;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iget v2, p0, Lcom/mycompany/app/ocr/OcrDetector$3;->c:I

    .line 10
    .line 11
    if-ne v2, v1, :cond_1

    .line 12
    .line 13
    new-instance v1, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;-><init>()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x2

    .line 20
    if-ne v2, v1, :cond_2

    .line 21
    .line 22
    new-instance v1, Lcom/google/mlkit/vision/text/devanagari/DevanagariTextRecognizerOptions;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/google/mlkit/vision/text/devanagari/DevanagariTextRecognizerOptions;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v1, 0x3

    .line 29
    if-ne v2, v1, :cond_3

    .line 30
    .line 31
    new-instance v1, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const/4 v1, 0x4

    .line 38
    if-ne v2, v1, :cond_4

    .line 39
    .line 40
    new-instance v1, Lcom/google/mlkit/vision/text/korean/KoreanTextRecognizerOptions;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/google/mlkit/vision/text/korean/KoreanTextRecognizerOptions;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    new-instance v1, Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->c()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-class v3, Lcom/google/mlkit/vision/text/internal/zzo;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/google/mlkit/vision/text/internal/zzo;

    .line 62
    .line 63
    iget-object v3, v2, Lcom/google/mlkit/vision/text/internal/zzo;->a:Lcom/google/mlkit/vision/text/internal/zzp;

    .line 64
    .line 65
    new-instance v4, Lcom/google/mlkit/vision/text/internal/zzn;

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;

    .line 72
    .line 73
    iget-object v2, v2, Lcom/google/mlkit/vision/text/internal/zzo;->b:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 74
    .line 75
    invoke-interface {v1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->c()Ljava/util/concurrent/Executor;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    iget-object v2, v2, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;->a:Lcom/google/firebase/inject/Provider;

    .line 86
    .line 87
    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    move-object v5, v2

    .line 92
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 93
    .line 94
    :goto_1
    invoke-interface {v1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->b()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzun;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-direct {v4, v3, v5, v2, v1}, Lcom/google/mlkit/vision/text/internal/zzn;-><init>(Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V

    .line 103
    .line 104
    .line 105
    iput-object v4, v0, Lcom/mycompany/app/ocr/OcrDetector;->u:Lcom/google/mlkit/vision/text/internal/zzn;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 108
    .line 109
    new-instance v1, Lcom/mycompany/app/ocr/OcrDetector$3$1;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/mycompany/app/ocr/OcrDetector$3$1;-><init>(Lcom/mycompany/app/ocr/OcrDetector$3;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
