.class Lcom/mycompany/app/web/WebViewActivity$200$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$200;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$200;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$200$2;->c:Lcom/mycompany/app/web/WebViewActivity$200;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$200$2;->c:Lcom/mycompany/app/web/WebViewActivity$200;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$200;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebNestFrame;->r:Z

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebNestFrame;->s:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-wide v3, v1, Lcom/mycompany/app/web/WebNestFrame;->i:J

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    cmp-long v2, v3, v6

    .line 30
    .line 31
    if-gtz v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->getListToStr()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/db/book/DbTabState;->f(Landroid/content/Context;JLjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 47
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 48
    .line 49
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->isUiForeground(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_fg_restart

    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->quietKillProcess()V

    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Jc:Z

    return-void

    :cond_fg_restart
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->c7(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Jc:Z

    .line 54
    .line 55
    return-void
.end method
