.class public Lcom/mycompany/app/dialog/DialogOcrLoad;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;,
        Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;,
        Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Landroidx/appcompat/widget/AppCompatTextView;

.field public e0:Lcom/mycompany/app/view/MyProgressBar;

.field public f0:Lcom/mycompany/app/view/MyLineText;

.field public g0:I

.field public final h0:I

.field public i0:Z

.field public j0:Z

.field public k0:I

# Whether a Maven OCR download is currently running.
.field public l0:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->b0:Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->g0:I

    .line 13
    .line 14
    iput p3, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->h0:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogOcrLoad$1;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogOcrLoad$1;-><init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final B(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v3, v1, p1, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 11
    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->e0:Lcom/mycompany/app/view/MyProgressBar;

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->h0:I

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->e0:Lcom/mycompany/app/view/MyProgressBar;

    .line 29
    .line 30
    iget v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->g0:I

    .line 31
    .line 32
    int-to-float v0, v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->e0:Lcom/mycompany/app/view/MyProgressBar;

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final C()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->i0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->i0:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogOcrLoad$6;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogOcrLoad$6;-><init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->i0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->l0:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->a0:Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    :cond_2
    # If models are already on disk, just activate and retry OCR.
    invoke-static {v0}, Lcom/mycompany/app/ocr/OcrRuntimeInstaller;->isReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->a0:Landroid/content/Context;

    invoke-static {v0}, Lcom/mycompany/app/ocr/OcrRuntimeInstaller;->tryActivate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogOcrLoad;->C()V

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->b0:Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;->c()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->l0:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogOcrLoad;->B(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;

    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;-><init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V

    const-string v2, "ocr-maven-install"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->a0:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->b0:Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->b0:Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;->a()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->e0:Lcom/mycompany/app/view/MyProgressBar;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->e0:Lcom/mycompany/app/view/MyProgressBar;

    .line 38
    .line 39
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    :cond_4
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void
.end method
