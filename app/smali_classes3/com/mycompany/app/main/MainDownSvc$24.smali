.class Lcom/mycompany/app/main/MainDownSvc$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic f:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$24;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$24;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$24;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$24;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->d0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 11
    .line 12
    .line 13
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    if-ne v2, v3, :cond_1

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 19
    .line 20
    sget v3, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 21
    .line 22
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainDownSvc;->L(Z)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->b(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {v1}, Lcom/mycompany/app/main/MainDownSvc;->m(Lcom/mycompany/app/main/MainDownSvc$DownItem;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainDownSvc;->c(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
