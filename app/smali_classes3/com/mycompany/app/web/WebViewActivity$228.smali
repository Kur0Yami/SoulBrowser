.class Lcom/mycompany/app/web/WebViewActivity$228;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$228;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$228;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bi:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ci:Z

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->di:Z

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Sh:Ljava/lang/String;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->O9:Z

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->O9:Z

    .line 23
    .line 24
    sget v5, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 25
    .line 26
    const/16 v6, 0x64

    .line 27
    .line 28
    if-eq v5, v6, :cond_2

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->P9:Z

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    sget v6, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 38
    .line 39
    sub-int/2addr v6, v5

    .line 40
    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->P9:Z

    .line 45
    .line 46
    if-eqz v5, :cond_4

    .line 47
    .line 48
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->P9:Z

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    sget v5, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ei:Z

    .line 60
    .line 61
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->fi:Z

    .line 62
    .line 63
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->gi:Z

    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$229;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$229;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ei:Z

    .line 80
    .line 81
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->fi:Z

    .line 82
    .line 83
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->gi:Z

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->S8()V

    .line 86
    .line 87
    .line 88
    return-void
.end method
