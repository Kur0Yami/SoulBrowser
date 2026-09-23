.class Lcom/mycompany/app/ocr/OcrDetector$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/ocr/OcrDetector$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/ocr/OcrDetector$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/ocr/OcrDetector$3$1;->c:Lcom/mycompany/app/ocr/OcrDetector$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/ocr/OcrDetector$3$1;->c:Lcom/mycompany/app/ocr/OcrDetector$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/ocr/OcrDetector$3;->f:Lcom/mycompany/app/ocr/OcrDetector;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->u:Lcom/google/mlkit/vision/text/internal/zzn;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->w:Lcom/google/mlkit/vision/common/InputImage;

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->A:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->t(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->F:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->F:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/google/mlkit/vision/common/InputImage;->a(Landroid/graphics/Bitmap;)Lcom/google/mlkit/vision/common/InputImage;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/mycompany/app/ocr/OcrDetector;->w:Lcom/google/mlkit/vision/common/InputImage;

    .line 40
    .line 41
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/ocr/OcrDetector;->F()V

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroid/os/Handler;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->p:Landroid/os/Handler;

    .line 54
    .line 55
    new-instance v3, Lcom/mycompany/app/ocr/OcrDetector$1;

    .line 56
    .line 57
    invoke-direct {v3, v0}, Lcom/mycompany/app/ocr/OcrDetector$1;-><init>(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v4, 0xbb8

    .line 61
    .line 62
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->u:Lcom/google/mlkit/vision/text/internal/zzn;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Lcom/google/mlkit/vision/text/internal/zzn;->e(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    new-instance v2, Lcom/mycompany/app/ocr/OcrExecutor;

    .line 75
    .line 76
    sget-object v3, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v3, v2, Lcom/mycompany/app/ocr/OcrExecutor;->c:Ljava/util/concurrent/Executor;

    .line 82
    .line 83
    iput-object v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->t:Lcom/mycompany/app/ocr/OcrExecutor;

    .line 84
    .line 85
    new-instance v3, Lcom/mycompany/app/ocr/OcrDetector$5;

    .line 86
    .line 87
    invoke-direct {v3, v0}, Lcom/mycompany/app/ocr/OcrDetector$5;-><init>(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->h(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 91
    .line 92
    .line 93
    iget-object v2, v0, Lcom/mycompany/app/ocr/OcrDetector;->t:Lcom/mycompany/app/ocr/OcrExecutor;

    .line 94
    .line 95
    new-instance v3, Lcom/mycompany/app/ocr/OcrDetector$4;

    .line 96
    .line 97
    invoke-direct {v3, v0}, Lcom/mycompany/app/ocr/OcrDetector$4;-><init>(Lcom/mycompany/app/ocr/OcrDetector;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->f(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catch_0
    :cond_4
    :goto_0
    const/4 v1, 0x3

    .line 105
    invoke-virtual {v0, v1}, Lcom/mycompany/app/ocr/OcrDetector;->L(I)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
