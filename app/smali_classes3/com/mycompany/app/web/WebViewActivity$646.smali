.class Lcom/mycompany/app/web/WebViewActivity$646;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$646;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$646;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->uo:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->vo:Z

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->m6:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l9:Landroid/view/ActionMode;

    .line 24
    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 29
    .line 30
    if-nez v1, :cond_5

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_5
    const/4 v2, 0x1

    .line 34
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebNestView;->S0:Z

    .line 35
    .line 36
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 37
    .line 38
    if-eqz v1, :cond_6

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_6
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ul:Z

    .line 42
    .line 43
    if-eqz v1, :cond_7

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_7
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ul:Z

    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 49
    .line 50
    if-nez v1, :cond_8

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_8
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$442;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$442;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method
