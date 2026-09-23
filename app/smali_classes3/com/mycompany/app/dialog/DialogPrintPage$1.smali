.class Lcom/mycompany/app/dialog/DialogPrintPage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPrintPage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPrintPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPrintPage$1;->c:Lcom/mycompany/app/dialog/DialogPrintPage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPrintPage$1;->c:Lcom/mycompany/app/dialog/DialogPrintPage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->c0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->c0:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v2, 0xba

    .line 19
    .line 20
    const-string v3, "Printpage"

    .line 21
    .line 22
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->l3(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->e0:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogPrintPage$1$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogPrintPage$1$1;-><init>(Lcom/mycompany/app/dialog/DialogPrintPage$1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method
