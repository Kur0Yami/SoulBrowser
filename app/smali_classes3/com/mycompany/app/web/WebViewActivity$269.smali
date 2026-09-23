.class Lcom/mycompany/app/web/WebViewActivity$269;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$269;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$269;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k9:Z

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->E7(Z)V

    .line 7
    .line 8
    .line 9
    sget-boolean v2, Lcom/mycompany/app/pref/PrefTts;->H:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sput-boolean v1, Lcom/mycompany/app/pref/PrefTts;->H:Z

    .line 15
    .line 16
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 17
    .line 18
    const/16 v3, 0xc

    .line 19
    .line 20
    const-string v4, "mHandMode"

    .line 21
    .line 22
    invoke-static {v3, v2, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J7()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->K7(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J6()V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->H3()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->T4()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->ca()V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->t6(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->I3(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$269$1;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$269$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$269;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method
