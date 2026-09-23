.class Lcom/mycompany/app/dialog/DialogSetItem$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetItem$8;->c:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetItem$8;->c:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->m0:Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->m0:Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;

    .line 12
    .line 13
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogSetItem;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetItem;->m0:Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetItem;->a0:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
