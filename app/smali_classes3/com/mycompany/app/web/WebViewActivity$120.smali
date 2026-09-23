.class Lcom/mycompany/app/web/WebViewActivity$120;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$120;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$120;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Bf:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Bf:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->A:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebNestFrame;->setBackItem(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestFrame;->t(Lcom/mycompany/app/web/WebNestView;)Z

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Cf:Lcom/mycompany/app/web/WebNestFrame;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$121;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$121;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 50
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ac:Z

    .line 51
    .line 52
    return-void
.end method
