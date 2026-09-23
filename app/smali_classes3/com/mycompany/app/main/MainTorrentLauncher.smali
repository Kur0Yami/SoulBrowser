.class public Lcom/mycompany/app/main/MainTorrentLauncher;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# static fields
.field public static final synthetic l1:I


# instance fields
.field public f1:Landroid/content/Context;

.field public g1:Lcom/mycompany/app/dialog/DialogDownUrl;

.field public h1:Lcom/mycompany/app/dialog/DialogSetDown;

.field public i1:Ljava/lang/String;

.field public j1:Ljava/lang/String;

.field public k1:Ljava/lang/String;


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


# virtual methods
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
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainTorrentLauncher;->u0(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTorrentLauncher;->v0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTorrentLauncher;->w0()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/mycompany/app/main/MainTorrentLauncher;->f1:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainTorrentLauncher;->u0(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTorrentLauncher;->v0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTorrentLauncher;->w0()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/mycompany/app/main/MainApp;->T1:Landroid/widget/Toast;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final u0(Landroid/content/Intent;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->f1:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget v0, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v0, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->g1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->h1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTorrentLauncher;->v0()V

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->f1:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->A(Landroid/content/Context;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v3, 0x0

    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    :goto_1
    move v15, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    iget-object v0, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->f1:Landroid/content/Context;

    .line 56
    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->z(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    goto :goto_1

    .line 65
    :goto_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 66
    .line 67
    new-instance v3, Lcom/mycompany/app/main/MainTorrentLauncher$1;

    .line 68
    .line 69
    invoke-direct {v3, v1}, Lcom/mycompany/app/main/MainTorrentLauncher$1;-><init>(Lcom/mycompany/app/main/MainTorrentLauncher;)V

    .line 70
    .line 71
    .line 72
    move-object/from16 v16, v3

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    const-string v6, "application/x-bittorrent"

    .line 78
    .line 79
    const-wide/16 v7, 0x0

    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    const/4 v12, 0x0

    .line 85
    const/4 v13, 0x0

    .line 86
    const/4 v14, 0x0

    .line 87
    invoke-direct/range {v0 .. v16}, Lcom/mycompany/app/dialog/DialogDownUrl;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/List;ILjava/util/List;ZILcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->g1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 91
    .line 92
    new-instance v2, Lcom/mycompany/app/main/MainTorrentLauncher$2;

    .line 93
    .line 94
    invoke-direct {v2, v1}, Lcom/mycompany/app/main/MainTorrentLauncher$2;-><init>(Lcom/mycompany/app/main/MainTorrentLauncher;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final v0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTorrentLauncher;->g1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainTorrentLauncher;->g1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final w0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTorrentLauncher;->h1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/main/MainTorrentLauncher;->h1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/main/MainTorrentLauncher;->i1:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/main/MainTorrentLauncher;->j1:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/MainTorrentLauncher;->k1:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method
