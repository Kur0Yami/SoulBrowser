.class Lcom/mycompany/app/dialog/DialogGreeting$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGreeting;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGreeting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting$12;->c:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting$12;->c:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->d0:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Soul Browser\ub97c \uc774\uc6a9\ud574 \uc8fc\uc154\uc11c \uac10\uc0ac\ud569\ub2c8\ub2e4. \ud83d\ude0a</p></body></html>"

    .line 7
    .line 8
    const-string v4, "black;\'>"

    .line 9
    .line 10
    const-string v5, "white;\'>"

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "#2d2d2d;\'>"

    .line 19
    .line 20
    move-object v4, v5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v1, "#f5f5f5;\'>"

    .line 23
    .line 24
    :goto_0
    const-string v5, "\ud83d\udd36 \uac00\uc7a5 \uc790\uc8fc \ubb3b\ub294 \uc9c8\ubb38\uc740 \ub2e4\uc74c\uacfc \uac19\uc2b5\ub2c8\ub2e4.</p><div style=\'margin:0 0 10px 0;padding:10px 20px 10px 20px;max-width:100%;border-radius:10px;user-select:none;background:"

    .line 25
    .line 26
    const-string v6, "<p style=\'margin:0 auto 0 auto;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:"

    .line 27
    .line 28
    const-string v7, "<!DOCTYPE html><html dir=\'auto\' lang=\'ko\'><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes\'/><style>body{margin:0;padding:16px 0 0 0;}</style></head><body><p style=\'margin:0 auto 10px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:"

    .line 29
    .line 30
    invoke-static {v7, v4, v5, v1, v6}, Landroidx/work/impl/workers/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v6, "\uc8fc\uc18c \ud45c\uc2dc\uc904\uc744 \uc544\ub798\ub85c \uc774\ub3d9\ud558\ub294 \uae30\ub2a5\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.</p></div><p style=\'margin:0 auto 50px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:"

    .line 35
    .line 36
    const-string v7, "\'\uc124\uc815 > \ub808\uc774\uc544\uc6c3\'\uc5d0\uc11c \uc8fc\uc18c \ud45c\uc2dc\uc904\uc744 \uc0c1\ud558\uc88c\uc6b0\ub85c \uc790\uc720\ub86d\uac8c \uc774\ub3d9\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.</p><p style=\'margin:0 auto 10px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:"

    .line 37
    .line 38
    invoke-static {v5, v4, v6, v4, v7}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v6, "\ud83d\udd36 \uae30\ud0c0 \uc790\uc8fc \ubb3b\ub294 \uc9c8\ubb38\uc740 \ub2e4\uc74c\uacfc \uac19\uc2b5\ub2c8\ub2e4.</p><div style=\'margin:0 0 10px 0;padding:10px 20px 10px 20px;max-width:100%;border-radius:10px;user-select:none;background:"

    .line 42
    .line 43
    const-string v7, "<p style=\'margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:"

    .line 44
    .line 45
    invoke-static {v5, v4, v6, v1, v7}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v6, "\uad11\uace0\ub97c \ucc28\ub2e8\ud558\ub294 \uae30\ub2a5\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.</p><p style=\'margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:"

    .line 49
    .line 50
    const-string v7, "\ubd81\ub9c8\ud06c\ub97c \ucd94\uac00\ud558\ub294 \uae30\ub2a5\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.</p><p style=\'margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:"

    .line 51
    .line 52
    invoke-static {v5, v4, v6, v4, v7}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v6, "\uac80\uc0c9\uc5d4\uc9c4\uc744 \ubcc0\uacbd\ud558\ub294 \uae30\ub2a5\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.</p><p style=\'margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:"

    .line 56
    .line 57
    const-string v7, "\ub370\uc774\ud130\ub97c \uc0ad\uc81c\ud558\ub294 \uae30\ub2a5\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.</p><p style=\'margin:0 auto 0 auto;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:"

    .line 58
    .line 59
    invoke-static {v5, v4, v6, v4, v7}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v6, "\ub4f1...</p></div><p style=\'margin:0 auto 50px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:"

    .line 63
    .line 64
    const-string v7, "\uae30\ubcf8 \uae30\ub2a5\uc5d0 \ub300\ud55c \uc9c8\ubb38\uc774 \uacc4\uc18d\ud574\uc11c \uc811\uc218\ub418\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ud83d\ude2d<span class=\'notranslate\'><br></span>\ub300\ubd80\ubd84\uc758 \uae30\ub2a5\uc740 \uba54\ub274\ub098 \uc124\uc815\uc5d0\uc11c \uc27d\uac8c \ucc3e\uc744 \uc218 \uc788\uc2b5\ub2c8\ub2e4.<span class=\'notranslate\'><br></span>\uc124\uc815 \uae30\ub2a5 \uc0c1\ub2e8\uc758 \uac80\uc0c9 \uae30\ub2a5\uc744 \uc774\uc6a9\ud574 \ubcf4\uc138\uc694. \ud83d\ude04</p><p style=\'margin:0 auto 10px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:"

    .line 65
    .line 66
    invoke-static {v5, v4, v6, v4, v7}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v6, "\ud83d\udd36 \uc800\ub294 \ud56d\uc0c1 \uc0ac\uc6a9\uc790\uc758 \uc694\uad6c \uc0ac\ud56d\uc744 \uc8fc\uc758 \uae4a\uac8c \uac80\ud1a0\ud569\ub2c8\ub2e4.<span class=\'notranslate\'><br></span>\uadf8\ub7ec\ub098 \ub2e4\uc74c \uc694\uad6c \uc0ac\ud56d\uc740 \uc571\uc5d0 \uc801\uc6a9\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.</p><div style=\'margin:0 0 10px 0;padding:10px 20px 10px 20px;max-width:100%;border-radius:10px;user-select:none;background:"

    .line 70
    .line 71
    const-string v7, "<p style=\'margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-weight:bold;color:"

    .line 72
    .line 73
    invoke-static {v5, v4, v6, v1, v7}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "Google \uc815\ucc45\uc744 \uc704\ubc18\ud560 \uc218 \uc788\ub294 \uae30\ub2a5</p><p style=\'margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-weight:bold;color:"

    .line 77
    .line 78
    const-string v6, "\uc571\uc758 \uc548\uc815\uc131\uc744 \uc800\ud574\ud560 \uc218 \uc788\ub294 \uae30\ub2a5</p><p style=\'margin:0 auto 0 auto;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-weight:bold;color:"

    .line 79
    .line 80
    invoke-static {v5, v4, v1, v4, v6}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "\ub2e4\ub978 \uc0ac\uc6a9\uc790\uc5d0\uac8c \ud53c\ud574\ub97c \uc904 \uc218 \uc788\ub294 \uae30\ub2a5</p></div><p style=\'margin:0 auto 50px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:"

    .line 84
    .line 85
    const-string v6, "\uc571\uc758 \ubaa8\ub4e0 \uae30\ub2a5\uc774 \uc644\ubcbd\ud558\uace0 \uc548\uc804\ud558\uac8c \uc791\ub3d9\ud558\ub294 \uac83\uc774 \uac00\uc7a5 \uc911\uc694\ud569\ub2c8\ub2e4.</p><p style=\'margin:0 auto 0 auto;padding:0 16px 80px 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:"

    .line 86
    .line 87
    invoke-static {v5, v4, v1, v4, v6}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v5, v4, v3}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->E0:Ljava/lang/String;

    .line 95
    .line 96
    const-string v1, "soul_faq_"

    .line 97
    .line 98
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->v0:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    move-object v4, v5

    .line 110
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v5, "<!DOCTYPE html><html dir=\'auto\' lang=\'ko\'><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes\'/><style>body{margin:0;padding:16px 0 0 0;}a{margin:0 auto 0 auto;line-height:1.0;word-wrap:break-word;font-size:15px;user-select:none;"

    .line 113
    .line 114
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 118
    .line 119
    if-eqz v5, :cond_3

    .line 120
    .line 121
    const-string v5, "color:#7f91f5;"

    .line 122
    .line 123
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :cond_3
    const-string v5, "}</style></head><body><p style=\'margin:0 auto 35px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:"

    .line 127
    .line 128
    const-string v6, "\uc800\ub294 \ud55c\uad6d \uac1c\ubc1c\uc790\uc785\ub2c8\ub2e4.<span class=\'notranslate\'><br></span>\ub2e4\ub978 \ub098\ub77c\uc758 \uc2dc\uac01\uc5d0\uc11c \ubcf8 \ud55c\uad6d \uac1c\ubc1c\uc790\uc758 \uc774\ubbf8\uc9c0\ub294 \uc5b4\ub5a4\uc9c0 \uad81\uae08\ud569\ub2c8\ub2e4. \ud83d\ude0a<span class=\'notranslate\'><br></span>(\uac1c\ubc1c\ub2a5\ub825, \uc2e0\ub8b0\uc131 \ub4f1)</p><p style=\'margin:0 auto 35px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:"

    .line 129
    .line 130
    invoke-static {v1, v5, v4, v6, v4}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v5, "\ube60\ub974\uace0 \uae68\ub057\ud55c \ube0c\ub77c\uc6b0\uc800\ub97c \ub9cc\ub4e4\uace0 \uc2f6\uc5c8\uc2b5\ub2c8\ub2e4.</p><p style=\'margin:0 auto 80px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:"

    .line 134
    .line 135
    invoke-static {v1, v5, v4, v3}, Landroid/support/v4/media/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->E0:Ljava/lang/String;

    .line 140
    .line 141
    const-string v1, "soul_greet_"

    .line 142
    .line 143
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->v0:Ljava/lang/String;

    .line 148
    .line 149
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 150
    .line 151
    if-nez v0, :cond_4

    .line 152
    .line 153
    return-void

    .line 154
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogGreeting$12$1;

    .line 155
    .line 156
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogGreeting$12$1;-><init>(Lcom/mycompany/app/dialog/DialogGreeting$12;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 160
    .line 161
    .line 162
    return-void
.end method
