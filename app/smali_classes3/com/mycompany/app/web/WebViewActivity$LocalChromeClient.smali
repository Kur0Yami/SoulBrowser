.class Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalChromeClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->x6()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebNestView;->k:Z

    .line 23
    .line 24
    if-nez v2, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->z2()V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    return-void
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, -0x1

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v4, "Uncaught"

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string v4, "borderRadius"

    .line 33
    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eq v1, v3, :cond_5

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 43
    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Yl:Z

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_4
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Yl:Z

    .line 55
    .line 56
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$449;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$449;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Y5()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v4, 0x0

    .line 71
    if-nez v1, :cond_6

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_6
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H6:I

    .line 75
    .line 76
    if-ne v1, v2, :cond_7

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_7
    const/4 v5, 0x3

    .line 80
    if-ne v1, v5, :cond_8

    .line 81
    .line 82
    :goto_1
    move v1, v4

    .line 83
    goto :goto_2

    .line 84
    :cond_8
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Q6:Z

    .line 85
    .line 86
    xor-int/2addr v1, v2

    .line 87
    :goto_2
    if-eqz v1, :cond_10

    .line 88
    .line 89
    if-nez p1, :cond_9

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_9
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_a

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_a
    const-string v5, "Refused to load the s"

    .line 104
    .line 105
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-ne v5, v3, :cond_b

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_b
    add-int/lit8 v6, v5, 0x15

    .line 113
    .line 114
    const-string v7, "cript"

    .line 115
    .line 116
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_c

    .line 121
    .line 122
    const-string v7, "tylesheet"

    .line 123
    .line 124
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-nez v6, :cond_c

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_c
    add-int/lit8 v5, v5, 0x1b

    .line 132
    .line 133
    const-string v6, "translate"

    .line 134
    .line 135
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eq v1, v3, :cond_d

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_d
    :goto_3
    move v2, v4

    .line 143
    :goto_4
    if-eqz v2, :cond_10

    .line 144
    .line 145
    const/4 v1, 0x2

    .line 146
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H6:I

    .line 147
    .line 148
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->L6:Z

    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->M6:Ljava/lang/String;

    .line 152
    .line 153
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->N6:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 156
    .line 157
    if-nez v1, :cond_e

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_e
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 161
    .line 162
    if-nez v1, :cond_f

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_f
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$407;

    .line 166
    .line 167
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$407;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    :cond_10
    :goto_5
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    return p1
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->F1:Z

    .line 10
    .line 11
    if-nez p2, :cond_6

    .line 12
    .line 13
    iget p2, p1, Lcom/mycompany/app/web/WebViewActivity;->y9:I

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 19
    .line 20
    if-nez p2, :cond_6

    .line 21
    .line 22
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->s3:Lcom/mycompany/app/view/MySnackbar;

    .line 23
    .line 24
    if-nez p2, :cond_6

    .line 25
    .line 26
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->b7:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->Gb:Lcom/mycompany/app/web/WebNestView;

    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->Cc:Z

    .line 37
    .line 38
    if-eqz p2, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->Cc:Z

    .line 43
    .line 44
    iput p3, p1, Lcom/mycompany/app/web/WebViewActivity;->Hb:I

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->Ib:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->Jb:Ljava/lang/String;

    .line 50
    .line 51
    iput-boolean p3, p1, Lcom/mycompany/app/web/WebViewActivity;->Kb:Z

    .line 52
    .line 53
    iput-object p4, p1, Lcom/mycompany/app/web/WebViewActivity;->cj:Landroid/os/Message;

    .line 54
    .line 55
    iget-object p4, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 56
    .line 57
    if-nez p4, :cond_5

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    new-instance p3, Lcom/mycompany/app/web/WebViewActivity$283;

    .line 61
    .line 62
    invoke-direct {p3, p1}, Lcom/mycompany/app/web/WebViewActivity$283;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p4, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    return p2

    .line 69
    :cond_6
    :goto_0
    return p3
.end method

.method public final onGeolocationPermissionsHidePrompt()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->j4()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p2, v1, v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->y0(Landroid/webkit/GeolocationPermissions$Callback;Landroid/webkit/PermissionRequest;Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onHideCustomView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebVideoFrame;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->b5()V

    .line 17
    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G8:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->S5:Lcom/mycompany/app/web/WebVideoPip;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->o4(Landroid/content/Context;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/high16 v2, 0x20000

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_1
    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    return p1

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v0, p2, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

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
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const-string v0, "sb:"

    .line 34
    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    const-string v0, "sb:ads_preview"

    .line 43
    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    iget-object p3, p2, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p2, p3, p1, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->G9(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    const-string v0, "sb:ads_open"

    .line 58
    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    iget-object p1, p2, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 66
    .line 67
    iput-object p1, p2, Lcom/mycompany/app/web/WebViewActivity;->X8:Ljava/lang/String;

    .line 68
    .line 69
    iput-boolean v1, p2, Lcom/mycompany/app/web/WebViewActivity;->Y8:Z

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/mycompany/app/web/WebViewActivity;->F6()V

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
    move-result v0

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    const/16 p1, 0xb

    .line 84
    .line 85
    iget-object p3, p2, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p2, p1, p3, v2}, Lcom/mycompany/app/web/WebViewActivity;->g6(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_7
    const-string v0, "sb:lang="

    .line 92
    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_a

    .line 98
    .line 99
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/16 v3, 0x8

    .line 104
    .line 105
    if-le v0, v3, :cond_8

    .line 106
    .line 107
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :cond_8
    const-string p3, "0"

    .line 112
    .line 113
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-eqz p3, :cond_9

    .line 118
    .line 119
    iput-boolean p1, p2, Lcom/mycompany/app/web/WebViewActivity;->Dn:Z

    .line 120
    .line 121
    invoke-virtual {p2, p1}, Lcom/mycompany/app/web/WebViewActivity;->u7(Z)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_9
    iput-object v2, p2, Lcom/mycompany/app/web/WebViewActivity;->En:Ljava/lang/String;

    .line 126
    .line 127
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$610;

    .line 128
    .line 129
    invoke-direct {p1, p2}, Lcom/mycompany/app/web/WebViewActivity$610;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 133
    .line 134
    .line 135
    :goto_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 136
    .line 137
    .line 138
    return v1

    .line 139
    :cond_a
    :goto_1
    invoke-static {p2, p3, p4}, Lcom/mycompany/app/web/WebViewActivity;->w1(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Landroid/webkit/JsResult;)V

    .line 140
    .line 141
    .line 142
    return v1
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
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    invoke-static {p1, p3, p4}, Lcom/mycompany/app/web/WebViewActivity;->w1(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Landroid/webkit/JsResult;)V

    .line 27
    .line 28
    .line 29
    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p5}, Landroid/webkit/JsResult;->cancel()V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p5}, Landroid/webkit/JsResult;->confirm()V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 27
    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    return v0

    .line 31
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->o4()V

    .line 32
    .line 33
    .line 34
    new-instance p2, Lcom/mycompany/app/dialog/DialogPrompt;

    .line 35
    .line 36
    invoke-direct {p2, p1, p3, p4, p5}, Lcom/mycompany/app/dialog/DialogPrompt;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->v7:Lcom/mycompany/app/dialog/DialogPrompt;

    .line 40
    .line 41
    new-instance p3, Lcom/mycompany/app/web/WebViewActivity$487;

    .line 42
    .line 43
    invoke-direct {p3, p1}, Lcom/mycompany/app/web/WebViewActivity$487;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->v7:Lcom/mycompany/app/dialog/DialogPrompt;

    .line 50
    .line 51
    new-instance p3, Lcom/mycompany/app/web/WebViewActivity$488;

    .line 52
    .line 53
    invoke-direct {p3, p1}, Lcom/mycompany/app/web/WebViewActivity$488;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    .line 58
    .line 59
    return v0
.end method

.method public final onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, p1, v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->y0(Landroid/webkit/GeolocationPermissions$Callback;Landroid/webkit/PermissionRequest;Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->j4()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebNestView;->p1:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->v5(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/16 p2, 0x64

    .line 23
    .line 24
    :cond_2
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->a8(I)V

    .line 25
    .line 26
    .line 27
    iget p1, p1, Lcom/mycompany/app/web/WebViewActivity;->y9:I

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-eq p1, v0, :cond_4

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    :goto_1
    return-void

    .line 37
    :cond_4
    :goto_2
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebLoadTask;->h(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, p1, p2, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->M0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Landroid/graphics/Bitmap;IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->v3(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-boolean p2, v0, Lcom/mycompany/app/web/WebViewActivity;->G8:Z

    .line 31
    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lcom/mycompany/app/web/WebVideoFrame;->setTitle(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_3
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 38
    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    sget p1, Lcom/mycompany/app/pref/PrefPdf;->H:I

    .line 42
    .line 43
    const/4 p2, 0x2

    .line 44
    if-ne p1, p2, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->g7(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_4
    iget p1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    iput-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 60
    .line 61
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 62
    .line 63
    iget-boolean p2, p2, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 64
    .line 65
    iput-boolean p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->ga(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 71
    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 75
    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$1;

    .line 80
    .line 81
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    :cond_6
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 88
    .line 89
    if-eqz p1, :cond_9

    .line 90
    .line 91
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 92
    .line 93
    if-eqz p1, :cond_7

    .line 94
    .line 95
    sget-wide p1, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 96
    .line 97
    const-wide/16 v3, 0x0

    .line 98
    .line 99
    cmp-long p1, p1, v3

    .line 100
    .line 101
    if-eqz p1, :cond_9

    .line 102
    .line 103
    :cond_7
    const-string p1, "file:///android_asset/shortcut.html"

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_8

    .line 110
    .line 111
    :goto_0
    return-void

    .line 112
    :cond_8
    const/4 v4, 0x1

    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/web/WebViewActivity;->fa(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 116
    .line 117
    .line 118
    :cond_9
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ni:Ljava/lang/String;

    .line 119
    .line 120
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 7
    .line 8
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eqz p2, :cond_b

    .line 13
    .line 14
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_2
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Mc:Z

    .line 26
    .line 27
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 28
    .line 29
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->T5:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    .line 33
    .line 34
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x5

    .line 41
    const/4 v5, 0x4

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    iput v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "youtube"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    iput v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    const-string v2, "instagram.com"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_5

    .line 72
    .line 73
    iput v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->Q2(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->v3(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_7

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    const-string v2, "atmegame.com"

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_8

    .line 101
    .line 102
    :goto_0
    iput v4, v1, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    .line 103
    .line 104
    :cond_8
    :goto_1
    iget v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    .line 105
    .line 106
    if-eq v0, v4, :cond_a

    .line 107
    .line 108
    if-ne v0, v5, :cond_9

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_9
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull;

    .line 112
    .line 113
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebVideoFull;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_a
    :goto_2
    new-instance v0, Lcom/mycompany/app/web/WebVideoImage;

    .line 120
    .line 121
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebVideoImage;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 125
    .line 126
    :goto_3
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 127
    .line 128
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 129
    .line 130
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 131
    .line 132
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 133
    .line 134
    iget v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    .line 135
    .line 136
    move-object v6, p1

    .line 137
    move-object v7, p2

    .line 138
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/web/WebVideoFrame;->b(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;ILandroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 142
    .line 143
    if-nez p1, :cond_c

    .line 144
    .line 145
    :cond_b
    :goto_4
    return-void

    .line 146
    :cond_c
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$269;

    .line 147
    .line 148
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebViewActivity$269;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iput-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->tj:Landroid/webkit/ValueCallback;

    .line 4
    .line 5
    iput-object p3, p1, Lcom/mycompany/app/web/WebViewActivity;->uj:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 6
    .line 7
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p3, Lcom/mycompany/app/web/WebViewActivity$302;

    .line 13
    .line 14
    invoke-direct {p3, p1}, Lcom/mycompany/app/web/WebViewActivity$302;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p1, 0x1

    .line 21
    return p1
.end method
