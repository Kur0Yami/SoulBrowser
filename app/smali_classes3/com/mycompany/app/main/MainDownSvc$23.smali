.class Lcom/mycompany/app/main/MainDownSvc$23;
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
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$23;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$23;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$23;->f:Lcom/mycompany/app/main/MainDownSvc;

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
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$23;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 9
    .line 10
    iget v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq v3, v4, :cond_4

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    if-ne v3, v4, :cond_1

    .line 17
    .line 18
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 19
    .line 20
    if-nez v3, :cond_3

    .line 21
    .line 22
    sget v3, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 23
    .line 24
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v5, 0x4

    .line 29
    if-ne v3, v5, :cond_2

    .line 30
    .line 31
    invoke-static {v2}, Lcom/mycompany/app/main/MainDownSvc;->m(Lcom/mycompany/app/main/MainDownSvc$DownItem;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v5, 0x5

    .line 42
    if-ne v3, v5, :cond_3

    .line 43
    .line 44
    sget v3, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 45
    .line 46
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    iget v1, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 50
    .line 51
    if-ne v1, v4, :cond_4

    .line 52
    .line 53
    iget-object v1, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    iget-object v1, v1, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    const/4 v1, 0x0

    .line 65
    :goto_1
    new-instance v2, Lcom/mycompany/app/main/MainDownSvc$23$1;

    .line 66
    .line 67
    invoke-direct {v2, p0, v1}, Lcom/mycompany/app/main/MainDownSvc$23$1;-><init>(Lcom/mycompany/app/main/MainDownSvc$23;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
