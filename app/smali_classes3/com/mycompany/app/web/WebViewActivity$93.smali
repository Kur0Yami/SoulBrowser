.class Lcom/mycompany/app/web/WebViewActivity$93;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$93;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$93;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Rc:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->Sc:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->Tc:Z

    .line 10
    .line 11
    iget-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Uc:Z

    .line 12
    .line 13
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->Vc:Z

    .line 14
    .line 15
    iget-boolean v7, v1, Lcom/mycompany/app/web/WebViewActivity;->Wc:Z

    .line 16
    .line 17
    iget-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->Xc:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 18
    .line 19
    iget-boolean v9, v1, Lcom/mycompany/app/web/WebViewActivity;->Yc:Z

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Rc:Lcom/mycompany/app/web/WebNestFrame;

    .line 23
    .line 24
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Sc:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Xc:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 27
    .line 28
    iget-object v11, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 29
    .line 30
    if-eqz v11, :cond_2

    .line 31
    .line 32
    iget-boolean v11, v11, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 35
    .line 36
    .line 37
    move-result v13

    .line 38
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 39
    .line 40
    .line 41
    move-result v14

    .line 42
    iget-boolean v15, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 43
    .line 44
    const/4 v12, 0x1

    .line 45
    if-eqz v15, :cond_0

    .line 46
    .line 47
    iget-object v15, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 48
    .line 49
    iget-object v15, v15, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 50
    .line 51
    if-eqz v15, :cond_0

    .line 52
    .line 53
    iput-boolean v12, v15, Lcom/mycompany/app/quick/QuickView;->M:Z

    .line 54
    .line 55
    :cond_0
    iget-object v15, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 56
    .line 57
    invoke-virtual {v15, v10}, Lcom/mycompany/app/web/WebNestView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 58
    .line 59
    .line 60
    iget-object v15, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 61
    .line 62
    invoke-virtual {v15, v10}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 63
    .line 64
    .line 65
    iget-object v15, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 66
    .line 67
    invoke-virtual {v15, v10}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 68
    .line 69
    .line 70
    if-eqz v7, :cond_1

    .line 71
    .line 72
    sget-boolean v10, Lcom/mycompany/app/pref/PrefAlbum;->O:Z

    .line 73
    .line 74
    if-eqz v10, :cond_1

    .line 75
    .line 76
    iput-boolean v12, v1, Lcom/mycompany/app/web/WebViewActivity;->K2:Z

    .line 77
    .line 78
    move v10, v12

    .line 79
    move v12, v11

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iput-boolean v12, v1, Lcom/mycompany/app/web/WebViewActivity;->K2:Z

    .line 82
    .line 83
    iget-boolean v10, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 84
    .line 85
    iput-boolean v10, v1, Lcom/mycompany/app/web/WebViewActivity;->L2:Z

    .line 86
    .line 87
    move v12, v11

    .line 88
    const/4 v10, 0x0

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const/4 v10, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    const/4 v14, 0x0

    .line 94
    :goto_0
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Zc:Lcom/mycompany/app/web/WebNestFrame;

    .line 95
    .line 96
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->ad:Ljava/lang/String;

    .line 97
    .line 98
    iput-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->bd:Z

    .line 99
    .line 100
    iput-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->cd:Z

    .line 101
    .line 102
    iput-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->dd:Z

    .line 103
    .line 104
    iput-boolean v7, v1, Lcom/mycompany/app/web/WebViewActivity;->ed:Z

    .line 105
    .line 106
    iput-boolean v12, v1, Lcom/mycompany/app/web/WebViewActivity;->fd:Z

    .line 107
    .line 108
    iput v13, v1, Lcom/mycompany/app/web/WebViewActivity;->gd:I

    .line 109
    .line 110
    iput v14, v1, Lcom/mycompany/app/web/WebViewActivity;->hd:I

    .line 111
    .line 112
    iput-boolean v10, v1, Lcom/mycompany/app/web/WebViewActivity;->id:Z

    .line 113
    .line 114
    iput-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->jd:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 115
    .line 116
    iput-boolean v9, v1, Lcom/mycompany/app/web/WebViewActivity;->kd:Z

    .line 117
    .line 118
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 119
    .line 120
    if-nez v2, :cond_3

    .line 121
    .line 122
    return-void

    .line 123
    :cond_3
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$94;

    .line 124
    .line 125
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$94;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 129
    .line 130
    .line 131
    return-void
.end method
