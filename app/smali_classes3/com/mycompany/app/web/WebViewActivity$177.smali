.class Lcom/mycompany/app/web/WebViewActivity$177;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$177;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$177;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iput p1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->C(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p2, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 28
    .line 29
    iput p1, p2, Lcom/mycompany/app/web/WebTabBarAdapter;->h:I

    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$177$1;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$177$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$177;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->L1(Ljava/lang/String;Lcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final b(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$177;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->c3:Z

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    if-eqz p2, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    .line 23
    .line 24
    .line 25
    :cond_3
    iget p2, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 26
    .line 27
    if-ne p1, p2, :cond_4

    .line 28
    .line 29
    const/16 p1, 0x26

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-virtual {v0, p2, p1}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_4
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->A2(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
