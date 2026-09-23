.class Lcom/mycompany/app/web/WebViewActivity$412;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$412;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$412;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->L6()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$412;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/mycompany/app/web/WebNestView;->h1:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget v1, Lnet/kaki87/soul2/testing/R$string;->http_warning:I

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H6:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v2, :cond_1

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
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Y4()V

    .line 29
    .line 30
    .line 31
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H6:I

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-ne v1, v2, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 37
    .line 38
    const-string v1, "restore"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L7(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$412;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->X6:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->Z4()V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    sget v3, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 23
    .line 24
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    sget v3, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 34
    .line 35
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    sget v3, Lnet/kaki87/soul2/testing/R$string;->info:I

    .line 45
    .line 46
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 53
    .line 54
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 55
    .line 56
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 57
    .line 58
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$415;

    .line 59
    .line 60
    invoke-direct {v6, v1}, Lcom/mycompany/app/web/WebViewActivity$415;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 61
    .line 62
    .line 63
    move-object v3, p1

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->X6:Lcom/mycompany/app/view/MyPopupMenu;

    .line 68
    .line 69
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 70
    .line 71
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$416;

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$416;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$412;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/mycompany/app/web/WebNestView;->h1:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget v1, Lnet/kaki87/soul2/testing/R$string;->http_warning:I

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->M6:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->R0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H6:I

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->M6:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    sget v1, Lnet/kaki87/soul2/testing/R$string;->select_lang:I

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
