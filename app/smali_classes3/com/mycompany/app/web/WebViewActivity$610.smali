.class Lcom/mycompany/app/web/WebViewActivity$610;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$610;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$610;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->En:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->En:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Dn:Z

    .line 10
    .line 11
    sget-boolean v4, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Xa:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Xa:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Xa:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->Z5(Z)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_3

    .line 34
    .line 35
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->J6:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->J6:Z

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->n6()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :cond_3
    sget v4, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 46
    .line 47
    const/4 v5, 0x2

    .line 48
    if-ne v4, v5, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I8:Z

    .line 55
    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_6

    .line 66
    .line 67
    :goto_1
    move v3, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_6
    const-string v2, "tiktok.com"

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_7

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_8

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_8
    sget-object v2, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_9

    .line 92
    .line 93
    sget-object v2, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    goto :goto_2

    .line 100
    :cond_9
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-nez v2, :cond_a

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_a
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_b

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_b
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    :goto_2
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Fn:Z

    .line 123
    .line 124
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 125
    .line 126
    const-string v1, "onTransExist"

    .line 127
    .line 128
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->O7(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
