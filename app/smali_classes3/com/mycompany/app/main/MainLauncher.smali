.class public Lcom/mycompany/app/main/MainLauncher;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# static fields
.field public static final synthetic h1:I


# instance fields
.field public f1:Landroid/content/Intent;

.field public g1:Lcom/mycompany/app/dialog/DialogOpenType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static u0(Lcom/mycompany/app/main/MainLauncher;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainLauncher;->f1:Landroid/content/Intent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/main/MainLauncher;->f1:Landroid/content/Intent;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    const-string v2, "EXTRA_NOTI"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported:I

    .line 23
    .line 24
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-string v4, "EXTRA_TYPE"

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 v6, 0x1a

    .line 40
    .line 41
    if-ge v5, v6, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v5}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-nez v6, :cond_3

    .line 53
    .line 54
    move-object v6, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object v6, v6, Lcom/mycompany/app/main/MainApp;->i:Ljava/lang/String;

    .line 57
    .line 58
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    .line 66
    .line 67
    const-class v7, Lcom/mycompany/app/video/VideoActivity;

    .line 68
    .line 69
    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_5

    .line 80
    .line 81
    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    :cond_5
    const/high16 v2, 0x20020000

    .line 85
    .line 86
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catch_0
    :goto_1
    const/4 v2, 0x0

    .line 97
    invoke-static {p0, v3, v0, v2, v2}, Lcom/mycompany/app/main/MainUtil;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/MainLauncher;->g1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    if-eqz v0, :cond_8

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogOpenType;->dismiss()V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lcom/mycompany/app/main/MainLauncher;->g1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 118
    .line 119
    :cond_8
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogExpandTheme:I

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_9

    .line 126
    .line 127
    move v0, v2

    .line 128
    :cond_9
    new-instance v1, Lcom/mycompany/app/dialog/DialogOpenType;

    .line 129
    .line 130
    invoke-direct {v1, p0, v0, v3, v2}, Lcom/mycompany/app/dialog/DialogOpenType;-><init>(Landroid/app/Activity;ILjava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    iput-object v1, p0, Lcom/mycompany/app/main/MainLauncher;->g1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 134
    .line 135
    new-instance v2, Lcom/mycompany/app/main/MainLauncher$3;

    .line 136
    .line 137
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainLauncher$3;-><init>(Lcom/mycompany/app/main/MainLauncher;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 141
    .line 142
    .line 143
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 144
    .line 145
    if-nez v1, :cond_a

    .line 146
    .line 147
    if-eqz v0, :cond_b

    .line 148
    .line 149
    :cond_a
    iget-object v2, p0, Lcom/mycompany/app/main/MainLauncher;->g1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 150
    .line 151
    const/4 v4, 0x0

    .line 152
    const/4 v7, 0x1

    .line 153
    const/4 v3, 0x0

    .line 154
    const/4 v5, 0x0

    .line 155
    const/4 v6, 0x0

    .line 156
    invoke-virtual/range {v2 .. v7}, Lcom/mycompany/app/view/MyDialogBottom;->x(IIZZZ)V

    .line 157
    .line 158
    .line 159
    :cond_b
    :goto_2
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/main/MainLauncher;->g1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogOpenType;->dismiss()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/mycompany/app/main/MainLauncher;->g1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->W0:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/mycompany/app/main/MainLauncher;->f1:Landroid/content/Intent;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/mycompany/app/main/MainLauncher$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainLauncher$1;-><init>(Lcom/mycompany/app/main/MainLauncher;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/main/MainLauncher;->f1:Landroid/content/Intent;

    .line 6
    .line 7
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainLauncher;->f1:Landroid/content/Intent;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/mycompany/app/main/MainLauncher$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainLauncher$2;-><init>(Lcom/mycompany/app/main/MainLauncher;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainLauncher;->g1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogOpenType;->dismiss()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/mycompany/app/main/MainLauncher;->g1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 13
    .line 14
    :cond_0
    return-void
.end method
