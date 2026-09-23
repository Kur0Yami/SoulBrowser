.class Lcom/mycompany/app/web/WebViewActivity$138;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$138;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$138;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    if-nez v6, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget-wide v1, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 26
    .line 27
    iget-object v3, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean v4, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/web/WebViewActivity;->O2(JLjava/lang/String;ZZ)Lcom/mycompany/app/web/WebNestFrame;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 37
    .line 38
    :cond_2
    iget-object v1, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->getPageCreate()Lcom/mycompany/app/web/WebNestView;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-object v2, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 48
    .line 49
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 52
    .line 53
    :cond_4
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 54
    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    return-void

    .line 58
    :cond_5
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$138$1;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$138$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$138;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method
