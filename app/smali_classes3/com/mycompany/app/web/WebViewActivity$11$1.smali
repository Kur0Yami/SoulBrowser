.class Lcom/mycompany/app/web/WebViewActivity$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$11$1;->c:Lcom/mycompany/app/web/WebViewActivity$11;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$11$1;->c:Lcom/mycompany/app/web/WebViewActivity$11;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$11;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->L3:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->H:Z

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->L3:Z

    .line 22
    .line 23
    xor-int/2addr v1, v2

    .line 24
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->K7(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->N7()V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->L3:Z

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j9:Z

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ea:Z

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ea:Z

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->v7()V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->H3()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->C2()V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 55
    .line 56
    if-nez v1, :cond_4

    .line 57
    .line 58
    :goto_1
    return-void

    .line 59
    :cond_4
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$12;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$12;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method
