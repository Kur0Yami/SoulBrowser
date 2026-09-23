.class Lcom/mycompany/app/dialog/DialogWebView$LocalChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalChromeClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v3, "Uncaught"

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string v3, "borderRadius"

    .line 32
    .line 33
    const/16 v4, 0x8

    .line 34
    .line 35
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eq v1, v2, :cond_5

    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->i2:Z

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    const/4 v1, 0x1

    .line 52
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->i2:Z

    .line 53
    .line 54
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView$56;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogWebView$56;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    :goto_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->A1:Z

    .line 64
    .line 65
    if-eqz v1, :cond_a

    .line 66
    .line 67
    if-nez p1, :cond_6

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_7

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_7
    const-string v3, "Refused to load the s"

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ne v3, v2, :cond_8

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_8
    add-int/lit8 v4, v3, 0x15

    .line 91
    .line 92
    const-string v5, "cript"

    .line 93
    .line 94
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_9

    .line 99
    .line 100
    const-string v5, "tylesheet"

    .line 101
    .line 102
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_9

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_9
    add-int/lit8 v3, v3, 0x1b

    .line 110
    .line 111
    const-string v4, "https://translate.google"

    .line 112
    .line 113
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eq v1, v2, :cond_a

    .line 118
    .line 119
    const/4 v1, 0x2

    .line 120
    iput v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->C1:Z

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->D1:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->E1:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->Q()V

    .line 131
    .line 132
    .line 133
    :cond_a
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    return p1
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    return p1

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebView$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 6
    .line 7
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const-string v0, "sb:"

    .line 27
    .line 28
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const-string v0, "sb:ads_preview"

    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    iget-object p3, p2, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 44
    .line 45
    if-nez p3, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogWebView;->i0:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogWebView;->l0:Ljava/lang/String;

    .line 51
    .line 52
    iput-boolean v1, p2, Lcom/mycompany/app/dialog/DialogWebView;->m0:Z

    .line 53
    .line 54
    invoke-virtual {p3}, Lcom/mycompany/app/web/WebNestView;->F()Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    const-string v0, "sb:ads_open"

    .line 59
    .line 60
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    iget-object p3, p2, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 67
    .line 68
    if-nez p3, :cond_6

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogWebView;->i0:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogWebView;->l0:Ljava/lang/String;

    .line 74
    .line 75
    iput-boolean v1, p2, Lcom/mycompany/app/dialog/DialogWebView;->m0:Z

    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/mycompany/app/web/WebNestView;->F()Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    const-string v0, "sb:link_setting"

    .line 82
    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-eqz p3, :cond_9

    .line 88
    .line 89
    iget-object p3, p2, Lcom/mycompany/app/dialog/DialogWebView;->d0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;

    .line 90
    .line 91
    if-nez p3, :cond_8

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_8
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogWebView;->i0:Ljava/lang/String;

    .line 95
    .line 96
    const/4 p2, 0x0

    .line 97
    const/16 v0, 0xb

    .line 98
    .line 99
    invoke-interface {p3, v0, p1, p2}, Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 103
    .line 104
    .line 105
    return v1

    .line 106
    :cond_9
    :goto_1
    return p1
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p5}, Landroid/webkit/JsResult;->cancel()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_1
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move-object v3, p3

    .line 20
    move-object v4, p4

    .line 21
    move-object v5, p5

    .line 22
    invoke-super/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogWebView;->f0(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
