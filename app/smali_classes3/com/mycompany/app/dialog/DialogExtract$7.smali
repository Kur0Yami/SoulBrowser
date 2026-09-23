.class Lcom/mycompany/app/dialog/DialogExtract$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/mycompany/app/dialog/DialogExtract;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$7;->g:Lcom/mycompany/app/dialog/DialogExtract;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract$7;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogExtract$7;->f:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract$7;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract$7;->f:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogExtract$7;->g:Lcom/mycompany/app/dialog/DialogExtract;

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogExtract;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, v3, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 13
    .line 14
    iget-object v1, v3, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
