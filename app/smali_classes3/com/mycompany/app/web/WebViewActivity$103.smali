.class Lcom/mycompany/app/web/WebViewActivity$103;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$103;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$103;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ve:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->we:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->xe:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->ve:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->we:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->w6()V

    .line 20
    .line 21
    .line 22
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->sc:Z

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v5}, Lcom/mycompany/app/web/WebNestFrame;->getPageIndex()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v7, 0x1

    .line 30
    add-int/2addr v5, v7

    .line 31
    iget-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 32
    .line 33
    invoke-virtual {v8, v5}, Lcom/mycompany/app/web/WebNestFrame;->z(I)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    iget-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 38
    .line 39
    if-eqz v9, :cond_2

    .line 40
    .line 41
    iget-boolean v6, v9, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    iget-boolean v11, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 52
    .line 53
    if-eqz v11, :cond_1

    .line 54
    .line 55
    iget-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 56
    .line 57
    iget-object v11, v11, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 58
    .line 59
    if-eqz v11, :cond_1

    .line 60
    .line 61
    iput-boolean v7, v11, Lcom/mycompany/app/quick/QuickView;->M:Z

    .line 62
    .line 63
    :cond_1
    iget-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 64
    .line 65
    invoke-virtual {v11, v4}, Lcom/mycompany/app/web/WebNestView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 66
    .line 67
    .line 68
    iget-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 69
    .line 70
    invoke-virtual {v11, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 71
    .line 72
    .line 73
    iget-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 74
    .line 75
    invoke-virtual {v11, v4}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 76
    .line 77
    .line 78
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->J2:Z

    .line 79
    .line 80
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 81
    .line 82
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->L2:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move v9, v6

    .line 86
    move v10, v9

    .line 87
    :goto_0
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ye:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ze:Ljava/lang/String;

    .line 90
    .line 91
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ae:Z

    .line 92
    .line 93
    iput v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Be:I

    .line 94
    .line 95
    iput v8, v0, Lcom/mycompany/app/web/WebViewActivity;->Ce:I

    .line 96
    .line 97
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->De:Z

    .line 98
    .line 99
    iput v9, v0, Lcom/mycompany/app/web/WebViewActivity;->Ee:I

    .line 100
    .line 101
    iput v10, v0, Lcom/mycompany/app/web/WebViewActivity;->Fe:I

    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 104
    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$104;

    .line 109
    .line 110
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$104;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    return-void
.end method
