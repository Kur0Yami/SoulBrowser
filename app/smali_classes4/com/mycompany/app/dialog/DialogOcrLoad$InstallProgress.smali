.class public Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;
.super Ljava/lang/Object;
.source "DialogOcrLoad.java"

# interfaces
.implements Lcom/mycompany/app/ocr/OcrRuntimeInstaller$ProgressListener;


# instance fields
.field final synthetic a:Lcom/mycompany/app/dialog/DialogOcrLoad;


# direct methods
.method constructor <init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V
    .locals 0

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;->a:Lcom/mycompany/app/dialog/DialogOcrLoad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;->a:Lcom/mycompany/app/dialog/DialogOcrLoad;

    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;-><init>(Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
