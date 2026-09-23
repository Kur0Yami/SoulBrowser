.class Lcom/mycompany/app/web/WebViewActivity$417;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$417;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$417;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t4()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebNestView;->setDeskMode(Z)V

    .line 14
    .line 15
    .line 16
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 33
    .line 34
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/web/WebViewActivity;->v3(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean p1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->ga(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->F0(Landroid/content/Context;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->Q7(Landroid/webkit/WebSettings;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 66
    .line 67
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p1, v1, v2, v3}, Lcom/mycompany/app/web/WebNestView;->K(Landroid/content/Context;ILandroid/webkit/WebSettings;)Z

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Il:Z

    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->B()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eq p1, v1, :cond_3

    .line 82
    .line 83
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p1, v1, v2}, Lcom/mycompany/app/main/MainUtil;->U7(Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->F6()V

    .line 93
    .line 94
    .line 95
    return-void
.end method
