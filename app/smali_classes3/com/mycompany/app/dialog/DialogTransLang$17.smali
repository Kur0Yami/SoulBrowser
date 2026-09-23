.class Lcom/mycompany/app/dialog/DialogTransLang$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTransLang;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$17;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$17;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->I0:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->I0:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->P7(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogTransLang$17$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTransLang$17$1;-><init>(Lcom/mycompany/app/dialog/DialogTransLang$17;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
