.class Lcom/mycompany/app/dialog/DialogDownFont$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFont;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont$4;->a:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont$4;->a:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownFont;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownFont;->t0:Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogDownFont;->t0:Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;

    .line 20
    .line 21
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogDownFont;->t0:Lcom/mycompany/app/dialog/DialogDownFont$DialogTask;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownFont;->b0:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
