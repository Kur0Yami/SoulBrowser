.class Lcom/mycompany/app/video/VideoActivity$52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$52;->a:Lcom/mycompany/app/video/VideoActivity;

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
    sget v0, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$52;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->d1()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput-boolean p1, v0, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 13
    .line 14
    iget-boolean p1, v0, Lcom/mycompany/app/video/VideoActivity;->i3:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {v0, p1}, Lcom/mycompany/app/video/VideoActivity;->L1(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    sget v0, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 2
    .line 3
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity$52;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/mycompany/app/video/VideoActivity;->d1()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/video/VideoActivity;->k1()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, v2, Lcom/mycompany/app/video/VideoActivity;->z3:Z

    .line 20
    .line 21
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    iput-object p1, v2, Lcom/mycompany/app/video/VideoActivity;->f4:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p2, v2, Lcom/mycompany/app/video/VideoActivity;->g4:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p3, v2, Lcom/mycompany/app/video/VideoActivity;->h4:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 34
    .line 35
    new-instance v9, Lcom/mycompany/app/video/VideoActivity$54;

    .line 36
    .line 37
    invoke-direct {v9, v2}, Lcom/mycompany/app/video/VideoActivity$54;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 38
    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    move-object v3, p1

    .line 44
    move-object v4, p3

    .line 45
    invoke-direct/range {v1 .. v9}, Lcom/mycompany/app/dialog/DialogSetDown;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, v2, Lcom/mycompany/app/video/VideoActivity;->a3:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 49
    .line 50
    new-instance p1, Lcom/mycompany/app/video/VideoActivity$55;

    .line 51
    .line 52
    invoke-direct {p1, v2}, Lcom/mycompany/app/video/VideoActivity$55;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v2, Lcom/mycompany/app/video/VideoActivity;->a3:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 59
    .line 60
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 61
    .line 62
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget p3, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 2
    .line 3
    iget-object p3, p0, Lcom/mycompany/app/video/VideoActivity$52;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/mycompany/app/video/VideoActivity;->d1()V

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p5

    .line 15
    invoke-static {p5}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 16
    .line 17
    .line 18
    move-result-object p5

    .line 19
    if-nez p5, :cond_1

    .line 20
    .line 21
    sget p1, Lnet/kaki87/soul2/testing/R$string;->down_fail:I

    .line 22
    .line 23
    invoke-static {p3, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p5, p1, p6, p2, p4}, Lcom/mycompany/app/main/MainApp;->R(Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;Z)V

    .line 28
    .line 29
    .line 30
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
    sget p1, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$52;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoActivity;->d1()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
