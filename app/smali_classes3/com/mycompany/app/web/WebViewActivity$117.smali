.class Lcom/mycompany/app/web/WebViewActivity$117;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$117;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    :goto_0
    return-void

    .line 9
    :cond_1
    move-object v0, p1

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getBackIndex()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$117;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v1, p1, p2, v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->M0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Landroid/graphics/Bitmap;IZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    instance-of p2, p1, Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    move-object p2, p1

    .line 11
    check-cast p2, Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/mycompany/app/web/WebNestView;->getBackIndex()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$117;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 20
    .line 21
    if-eqz v2, :cond_8

    .line 22
    .line 23
    if-ltz v0, :cond_8

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-lt v0, v2, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v1, p1, v2}, Lcom/mycompany/app/web/WebViewActivity;->v3(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    iput-object v2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v3, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 56
    .line 57
    iget-boolean p2, p2, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 58
    .line 59
    iput-boolean p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebViewActivity;->ga(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    iput v0, v1, Lcom/mycompany/app/web/WebViewActivity;->yf:I

    .line 69
    .line 70
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 71
    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$117$1;

    .line 76
    .line 77
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$117$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$117;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    :cond_5
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 84
    .line 85
    if-eqz p1, :cond_8

    .line 86
    .line 87
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    sget-wide p1, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 92
    .line 93
    const-wide/16 v4, 0x0

    .line 94
    .line 95
    cmp-long p1, p1, v4

    .line 96
    .line 97
    if-eqz p1, :cond_8

    .line 98
    .line 99
    :cond_6
    const-string p1, "file:///android_asset/shortcut.html"

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    const/4 v5, 0x1

    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/web/WebViewActivity;->fa(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 112
    .line 113
    .line 114
    :cond_8
    :goto_0
    return-void
.end method
