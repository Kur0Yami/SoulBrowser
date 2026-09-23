.class Lcom/mycompany/app/dialog/DialogWebVie2$LocalChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebVie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalChromeClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebVie2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->X0:Z

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v2, "Refused to load the s"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, -0x1

    .line 28
    if-ne v2, v3, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    add-int/lit8 v4, v2, 0x15

    .line 32
    .line 33
    const-string v5, "cript"

    .line 34
    .line 35
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_3

    .line 40
    .line 41
    const-string v5, "tylesheet"

    .line 42
    .line 43
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    add-int/lit8 v2, v2, 0x1b

    .line 51
    .line 52
    const-string v4, "https://translate.google"

    .line 53
    .line 54
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eq v1, v3, :cond_4

    .line 59
    .line 60
    const/4 v1, 0x2

    .line 61
    iput v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Z0:Z

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->a1:Ljava/lang/String;

    .line 68
    .line 69
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->b1:Ljava/lang/String;

    .line 70
    .line 71
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
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
    sget p2, Lcom/mycompany/app/dialog/DialogWebVie2;->q1:I

    .line 6
    .line 7
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const-string v0, "sb:"

    .line 20
    .line 21
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const-string v0, "sb:ads_preview"

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    iget-object p3, p2, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 38
    .line 39
    if-nez p3, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogWebVie2;->n0:Ljava/lang/String;

    .line 45
    .line 46
    iput-boolean v1, p2, Lcom/mycompany/app/dialog/DialogWebVie2;->o0:Z

    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/mycompany/app/web/WebNestView;->F()Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const-string v0, "sb:ads_open"

    .line 53
    .line 54
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    iget-object p3, p2, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 61
    .line 62
    if-nez p3, :cond_5

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 66
    .line 67
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogWebVie2;->n0:Ljava/lang/String;

    .line 68
    .line 69
    iput-boolean v1, p2, Lcom/mycompany/app/dialog/DialogWebVie2;->o0:Z

    .line 70
    .line 71
    invoke-virtual {p3}, Lcom/mycompany/app/web/WebNestView;->F()Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_6
    const-string v0, "sb:link_setting"

    .line 76
    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_8

    .line 82
    .line 83
    iget-object p3, p2, Lcom/mycompany/app/dialog/DialogWebVie2;->d0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;

    .line 84
    .line 85
    if-nez p3, :cond_7

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_7
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    const/16 v0, 0xb

    .line 92
    .line 93
    invoke-interface {p3, v0, p1, p2}, Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 97
    .line 98
    .line 99
    return v1

    .line 100
    :cond_8
    :goto_1
    return p1
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalChromeClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogWebVie2;->J(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
