.class Lcom/mycompany/app/dialog/DialogDownUrl$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$16;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$16;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$16$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$16;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$16$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$16;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl$16;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->B1:Lcom/mycompany/app/web/WebSnsLoad;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->F1:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl$16;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/mycompany/app/dialog/DialogDownUrl;->H(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl$16;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {v1, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->D(Lcom/mycompany/app/dialog/DialogDownUrl;Z)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$16;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 35
    .line 36
    return-void
.end method
