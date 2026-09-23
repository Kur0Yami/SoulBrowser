.class Lcom/mycompany/app/main/MainTorrentLauncher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainTorrentLauncher;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTorrentLauncher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTorrentLauncher$1;->a:Lcom/mycompany/app/main/MainTorrentLauncher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/mycompany/app/web/WebNestView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTorrentLauncher$1;->a:Lcom/mycompany/app/main/MainTorrentLauncher;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/mycompany/app/main/MainTorrentLauncher;->l1:I

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTorrentLauncher;->v0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/main/MainTorrentLauncher$1;->a:Lcom/mycompany/app/main/MainTorrentLauncher;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->h1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTorrentLauncher;->w0()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->i1:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->j1:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->k1:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 22
    .line 23
    new-instance v8, Lcom/mycompany/app/main/MainTorrentLauncher$3;

    .line 24
    .line 25
    invoke-direct {v8, v1}, Lcom/mycompany/app/main/MainTorrentLauncher$3;-><init>(Lcom/mycompany/app/main/MainTorrentLauncher;)V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v2, p1

    .line 32
    move-object v3, p3

    .line 33
    invoke-direct/range {v0 .. v8}, Lcom/mycompany/app/dialog/DialogSetDown;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, v1, Lcom/mycompany/app/main/MainTorrentLauncher;->h1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 37
    .line 38
    new-instance p1, Lcom/mycompany/app/main/MainTorrentLauncher$4;

    .line 39
    .line 40
    invoke-direct {p1, v1}, Lcom/mycompany/app/main/MainTorrentLauncher$4;-><init>(Lcom/mycompany/app/main/MainTorrentLauncher;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTorrentLauncher;->v0()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/main/MainTorrentLauncher$1;->a:Lcom/mycompany/app/main/MainTorrentLauncher;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    invoke-static {p5}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 8
    .line 9
    .line 10
    move-result-object p5

    .line 11
    if-eqz p5, :cond_0

    .line 12
    .line 13
    const/4 p6, 0x0

    .line 14
    invoke-virtual {p5, p1, p6, p2, p4}, Lcom/mycompany/app/main/MainApp;->R(Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget p1, Lnet/kaki87/soul2/testing/R$string;->down_fail:I

    .line 19
    .line 20
    invoke-static {p3, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    sget p1, Lcom/mycompany/app/main/MainTorrentLauncher;->l1:I

    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/mycompany/app/main/MainTorrentLauncher;->v0()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
