.class Lcom/mycompany/app/web/WebViewActivity$77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$77;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$77;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->W5:Lcom/mycompany/app/view/MyEngineMenu;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->L4()V

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    new-instance v1, Lcom/mycompany/app/view/MyEngineMenu;

    .line 24
    .line 25
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 26
    .line 27
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 28
    .line 29
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$310;

    .line 34
    .line 35
    invoke-direct {v6, v2}, Lcom/mycompany/app/web/WebViewActivity$310;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 36
    .line 37
    .line 38
    move-object v4, p1

    .line 39
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/view/MyEngineMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;ZLcom/mycompany/app/view/MyEngineMenu$MyEngineListener;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->W5:Lcom/mycompany/app/view/MyEngineMenu;

    .line 43
    .line 44
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 45
    .line 46
    iget-object p1, v2, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_3
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$311;

    .line 52
    .line 53
    invoke-direct {v0, v2}, Lcom/mycompany/app/web/WebViewActivity$311;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
