.class Lcom/mycompany/app/dialog/DialogWebVie2$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebVie2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$27;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$27;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->R0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 8
    .line 9
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Q0:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 20
    .line 21
    sget v1, Lnet/kaki87/soul2/testing/R$string;->http_warning:I

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 33
    .line 34
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const/4 v2, 0x3

    .line 41
    if-ne v1, v2, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->X0:Z

    .line 45
    .line 46
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 47
    .line 48
    const-string v1, "restore"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L7(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$27;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->b0:Lcom/mycompany/app/setting/SettingInfo;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->f1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebVie2;->F()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

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
    iget v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

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
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->b0:Lcom/mycompany/app/setting/SettingInfo;

    .line 44
    .line 45
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebVie2$28;

    .line 46
    .line 47
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogWebVie2$28;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-direct {v0, v1, v3, v2}, Lcom/mycompany/app/dialog/DialogTransLang;-><init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogTransLang$TransLangListener;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->f1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 55
    .line 56
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebVie2$30;

    .line 57
    .line 58
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogWebVie2$30;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$27;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->R0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 8
    .line 9
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Q0:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 20
    .line 21
    sget v1, Lnet/kaki87/soul2/testing/R$string;->http_warning:I

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 33
    .line 34
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const/4 v3, 0x3

    .line 41
    if-ne v1, v3, :cond_3

    .line 42
    .line 43
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->X0:Z

    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 46
    .line 47
    const-string v4, "confirm"

    .line 48
    .line 49
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->L7(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->a1:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogWebVie2;->D(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 58
    .line 59
    if-ne v1, v3, :cond_4

    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->a1:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_6

    .line 68
    .line 69
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 70
    .line 71
    sget v1, Lnet/kaki87/soul2/testing/R$string;->select_lang:I

    .line 72
    .line 73
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    if-eqz v1, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->V0:Lcom/mycompany/app/web/WebTransControl;

    .line 81
    .line 82
    if-nez v0, :cond_7

    .line 83
    .line 84
    :cond_6
    :goto_0
    return-void

    .line 85
    :cond_7
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebTransControl;->setTransLoad(Z)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
