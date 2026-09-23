.class Lcom/mycompany/app/dialog/DialogFileDelete$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogFileDelete;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogFileDelete;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete$5;->c:Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete$5;->c:Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogFileDelete;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogFileDelete;->A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
