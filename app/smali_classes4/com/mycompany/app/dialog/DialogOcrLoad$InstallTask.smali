.class Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;
.super Ljava/lang/Object;
.source "DialogOcrLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mycompany/app/dialog/DialogOcrLoad;


# direct methods
.method constructor <init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V
    .locals 0

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;->a:Lcom/mycompany/app/dialog/DialogOcrLoad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;->a:Lcom/mycompany/app/dialog/DialogOcrLoad;

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->a0:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;

    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;-><init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V

    invoke-static {v1, v2}, Lcom/mycompany/app/ocr/OcrRuntimeInstaller;->ensureInstalled(Landroid/content/Context;Lcom/mycompany/app/ocr/OcrRuntimeInstaller$ProgressListener;)Z

    move-result v1

    iget-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask$1;

    invoke-direct {v3, p0, v1}, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask$1;-><init>(Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
