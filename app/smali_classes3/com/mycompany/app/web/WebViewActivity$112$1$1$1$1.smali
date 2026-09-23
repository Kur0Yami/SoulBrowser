.class Lcom/mycompany/app/web/WebViewActivity$112$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$112$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$112$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$112$1$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$112$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$112$1$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$112$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$112$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$112$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$112$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$112$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$112$1;->c:Lcom/mycompany/app/web/WebViewActivity$112;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$112;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 10
    .line 11
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->mf:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->nf:Lcom/mycompany/app/web/WebNestFrame;

    .line 14
    .line 15
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->of:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->mf:Lcom/mycompany/app/web/WebNestView;

    .line 19
    .line 20
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->nf:Lcom/mycompany/app/web/WebNestFrame;

    .line 21
    .line 22
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->of:Ljava/lang/String;

    .line 23
    .line 24
    iget v2, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->A5(I)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    sget-boolean v6, Lcom/mycompany/app/pref/PrefTts;->v:Z

    .line 31
    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 40
    :goto_1
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->J2(Z)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/web/WebViewActivity;->V1(ILjava/lang/String;Lcom/mycompany/app/web/WebNestFrame;ZZ)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->o7(I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->pf:Lcom/mycompany/app/web/WebNestView;

    .line 52
    .line 53
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->qf:Lcom/mycompany/app/web/WebNestFrame;

    .line 54
    .line 55
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->rf:Ljava/lang/String;

    .line 56
    .line 57
    iput v2, v1, Lcom/mycompany/app/web/WebViewActivity;->sf:I

    .line 58
    .line 59
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$113;

    .line 65
    .line 66
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$113;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method
