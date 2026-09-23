.class Lcom/mycompany/app/main/MainDownSvc$23$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/main/MainDownSvc$23;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc$23;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$23$1;->f:Lcom/mycompany/app/main/MainDownSvc$23;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$23$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$23$1;->f:Lcom/mycompany/app/main/MainDownSvc$23;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc$23;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$23;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$23$1;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainDownSvc;->c(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->O:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->O:Z

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainDownSvc;->L(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    if-eq v2, v3, :cond_2

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    if-eq v2, v3, :cond_2

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->b(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method
