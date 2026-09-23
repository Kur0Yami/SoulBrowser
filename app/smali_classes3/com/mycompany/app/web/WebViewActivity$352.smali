.class Lcom/mycompany/app/web/WebViewActivity$352;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$352;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$352;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 5
    .line 6
    new-instance v2, Lcom/google/mlkit/vision/codescanner/GmsBarcodeScannerOptions;

    .line 7
    .line 8
    invoke-direct {v2, v1}, Lcom/google/mlkit/vision/codescanner/GmsBarcodeScannerOptions;-><init>(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/mlkit/vision/codescanner/internal/zze;

    .line 12
    .line 13
    invoke-direct {v1, v0, v2}, Lcom/google/mlkit/vision/codescanner/internal/zze;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/codescanner/GmsBarcodeScannerOptions;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/mlkit/vision/codescanner/internal/zze;->a()Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$355;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$355;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$354;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$354;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$353;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$353;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Uj:Z

    .line 47
    .line 48
    return-void
.end method
