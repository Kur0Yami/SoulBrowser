.class Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ni:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ni:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Li:Z

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    const-string v5, "pornoanne.com"

    .line 24
    .line 25
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "xhamster"

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Li:Z

    .line 53
    .line 54
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Mi:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 57
    .line 58
    sput-object v2, Lcom/mycompany/app/main/MainUtil;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    sput-object v2, Lcom/mycompany/app/main/MainUtil;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->Z0(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v1, v4

    .line 71
    :goto_0
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Oi:Z

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    iget-object v2, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 78
    .line 79
    if-nez v2, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;

    .line 83
    .line 84
    invoke-direct {v3, p0}, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v5, 0x3e8

    .line 88
    .line 89
    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 93
    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    if-nez v1, :cond_4

    .line 98
    .line 99
    iget-boolean v3, v2, Lcom/mycompany/app/web/WebNestView;->c2:Z

    .line 100
    .line 101
    if-nez v3, :cond_6

    .line 102
    .line 103
    :cond_4
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 104
    .line 105
    if-nez v3, :cond_6

    .line 106
    .line 107
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 108
    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebNestView;->setAdsChanged(Z)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 117
    .line 118
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, v2, v3, v4}, Lcom/mycompany/app/web/WebNestView;->L(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Lcom/mycompany/app/web/WebNestView;->setAdsChanged(Z)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v2, v1, v0, v4}, Lcom/mycompany/app/web/WebNestView;->L(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_1
    return-void
.end method
