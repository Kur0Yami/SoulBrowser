.class Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;
.super Ljava/lang/Object;
.source "DialogOcrLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;->a:Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;

    iput p2, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;->b:I

    iput p3, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;->c:I

    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;->a:Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;

    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress;->a:Lcom/mycompany/app/dialog/DialogOcrLoad;

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->e0:Lcom/mycompany/app/view/MyProgressBar;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;->c:I

    if-lez v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    iget v2, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$InstallProgress$1;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
