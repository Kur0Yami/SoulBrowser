.class Lcom/mycompany/app/web/WebViewActivity$156;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$156;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$156;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->wg:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->xg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->wg:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->xg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    sget-boolean v4, Lcom/mycompany/app/pref/PrefWeb;->A:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Lcom/mycompany/app/web/WebNestFrame;->setBackItem(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebNestFrame;->t(Lcom/mycompany/app/web/WebNestView;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->yg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 38
    .line 39
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->zg:Lcom/mycompany/app/web/WebNestFrame;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$157;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$157;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-interface {v2}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 58
    .line 59
    .line 60
    :cond_4
    const/4 v1, 0x0

    .line 61
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 62
    .line 63
    return-void
.end method
