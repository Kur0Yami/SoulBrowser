.class Lcom/mycompany/app/web/WebViewActivity$635$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/wview/WebFltView$FltViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$635;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$635;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$635$1;->a:Lcom/mycompany/app/web/WebViewActivity$635;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$635$1;->a:Lcom/mycompany/app/web/WebViewActivity$635;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/mycompany/app/web/WebViewActivity$635;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object p2, v1, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean p2, p2, Lcom/mycompany/app/wview/WebFltView;->A:Z

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    sget p1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 15
    .line 16
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-boolean p2, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget-boolean p2, v1, Lcom/mycompany/app/web/WebViewActivity;->d6:Z

    .line 33
    .line 34
    if-eqz p2, :cond_4

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_4
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->g4()V

    .line 38
    .line 39
    .line 40
    iget-object p2, v1, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 41
    .line 42
    if-eqz p2, :cond_5

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p2, v0}, Lcom/mycompany/app/wview/WebFltView;->setHideBlocked(Z)V

    .line 46
    .line 47
    .line 48
    :cond_5
    const/4 p2, 0x0

    .line 49
    iput-boolean p2, v1, Lcom/mycompany/app/web/WebViewActivity;->d6:Z

    .line 50
    .line 51
    new-instance v0, Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 52
    .line 53
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 54
    .line 55
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 56
    .line 57
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$322;

    .line 58
    .line 59
    invoke-direct {v5, v1}, Lcom/mycompany/app/web/WebViewActivity$322;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 60
    .line 61
    .line 62
    move-object v3, p1

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogNewsMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/view/MyWebBody;Landroid/view/View;ZLcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->c6:Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 67
    .line 68
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$635$1;->a:Lcom/mycompany/app/web/WebViewActivity$635;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$635;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->N4()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$635$1;->a:Lcom/mycompany/app/web/WebViewActivity$635;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$635;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->A1(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
