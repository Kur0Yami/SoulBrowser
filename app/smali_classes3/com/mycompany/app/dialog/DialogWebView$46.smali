.class Lcom/mycompany/app/dialog/DialogWebView$46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$46;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogWebView;->k2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$46;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->W()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$46;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->g1:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 8
    .line 9
    sget v1, Lnet/kaki87/soul2/testing/R$string;->http_warning:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 21
    .line 22
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->Q()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->R()V

    .line 32
    .line 33
    .line 34
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    if-ne v1, v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogWebView;->Y(Z)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$46;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->I1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebView;->O()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/data/DataTrans;->b()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 34
    .line 35
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogTransLang;

    .line 42
    .line 43
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 44
    .line 45
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$49;

    .line 46
    .line 47
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogWebView$49;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v0, v1, v3, v2}, Lcom/mycompany/app/dialog/DialogTransLang;-><init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogTransLang$TransLangListener;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->I1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 55
    .line 56
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogWebView;->J1:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView$50;

    .line 61
    .line 62
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogWebView$50;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->d0:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

    .line 66
    .line 67
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView$51;

    .line 68
    .line 69
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogWebView$51;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$46;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->g1:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 8
    .line 9
    sget v1, Lnet/kaki87/soul2/testing/R$string;->http_warning:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 21
    .line 22
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->R()V

    .line 29
    .line 30
    .line 31
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-ne v1, v2, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogWebView;->Y(Z)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->D1:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogWebView;->Z(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 46
    .line 47
    if-ne v1, v2, :cond_3

    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->D1:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 58
    .line 59
    sget v1, Lnet/kaki87/soul2/testing/R$string;->select_lang:I

    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method
