.class Lcom/mycompany/app/web/WebViewActivity$284;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$284;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$284;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->dj:Landroid/os/Message;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->dj:Landroid/os/Message;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Cc:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-boolean v2, v3, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v3, v2

    .line 30
    move v4, v3

    .line 31
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->i6()V

    .line 32
    .line 33
    .line 34
    new-instance v5, Lcom/mycompany/app/web/WebNestView;

    .line 35
    .line 36
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Lcom/mycompany/app/web/WebViewActivity;->K8(Lcom/mycompany/app/web/WebNestView;)V

    .line 42
    .line 43
    .line 44
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 45
    .line 46
    invoke-virtual {v5, v2}, Lcom/mycompany/app/web/WebNestView;->setDeskMode(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 50
    .line 51
    invoke-virtual {v2, v3, v4}, Lcom/mycompany/app/web/WebNestView;->T(II)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ej:Landroid/os/Message;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$285;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$285;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method
