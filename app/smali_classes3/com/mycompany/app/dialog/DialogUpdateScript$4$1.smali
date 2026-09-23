.class Lcom/mycompany/app/dialog/DialogUpdateScript$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUpdateScript$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUpdateScript$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$4$1;->c:Lcom/mycompany/app/dialog/DialogUpdateScript$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateScript$4$1;->c:Lcom/mycompany/app/dialog/DialogUpdateScript$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUpdateScript$4;->c:Lcom/mycompany/app/dialog/DialogUpdateScript;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->w0:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->w0:Z

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    iput-boolean v3, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 23
    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 26
    .line 27
    new-instance v1, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogUpdateScript;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->u0:Lcom/mycompany/app/dialog/DialogUpdateScript$DialogTask;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->a0:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateScript;->E()V

    .line 41
    .line 42
    .line 43
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogUpdateScript;->x0:Z

    .line 44
    .line 45
    return-void
.end method
