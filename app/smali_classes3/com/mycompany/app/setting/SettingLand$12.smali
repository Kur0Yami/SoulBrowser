.class Lcom/mycompany/app/setting/SettingLand$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLand;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$12;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand$12;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    sget v2, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 10
    .line 11
    const/16 v3, 0x32

    .line 12
    .line 13
    if-lt v2, v3, :cond_1

    .line 14
    .line 15
    const/16 v3, 0x1f4

    .line 16
    .line 17
    if-le v2, v3, :cond_2

    .line 18
    .line 19
    :cond_1
    const/16 v2, 0x64

    .line 20
    .line 21
    sput v2, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 22
    .line 23
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget v3, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 65
    .line 66
    .line 67
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v6, 0x1e

    .line 70
    .line 71
    if-ge v5, v6, :cond_3

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 80
    .line 81
    .line 82
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZone;->u:Z

    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-boolean v3, v1, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->F0(Landroid/content/Context;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->Q7(Landroid/webkit/WebSettings;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 104
    .line 105
    sget v5, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 106
    .line 107
    invoke-virtual {v1, v3, v5, v2}, Lcom/mycompany/app/web/WebNestView;->K(Landroid/content/Context;ILandroid/webkit/WebSettings;)Z

    .line 108
    .line 109
    .line 110
    :goto_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setEnableJs(Z)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setViewCookie(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 128
    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    :goto_1
    return-void

    .line 132
    :cond_6
    new-instance v1, Lcom/mycompany/app/setting/SettingLand$12$1;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingLand$12$1;-><init>(Lcom/mycompany/app/setting/SettingLand$12;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    .line 139
    .line 140
    return-void
.end method
