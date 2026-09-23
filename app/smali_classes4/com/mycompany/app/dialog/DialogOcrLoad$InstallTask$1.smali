.class Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask$1;
.super Ljava/lang/Object;
.source "DialogOcrLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;Z)V
    .locals 0

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask$1;->a:Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;

    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask$1;->a:Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;

    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask;->a:Lcom/mycompany/app/dialog/DialogOcrLoad;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->l0:Z

    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallTask$1;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogOcrLoad;->C()V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->b0:Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogOcrLoad$OcrLoadListener;->c()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_2

    const-string v2, "Failed to download OCR modules. Check your network and try again."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
