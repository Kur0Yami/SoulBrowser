.class public Lcom/mycompany/app/image/ImageViewActivity;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/image/ImageViewActivity$SavedItem;,
        Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;
    }
.end annotation


# instance fields
.field public f1:Landroid/content/Context;

.field public g1:Lcom/mycompany/app/image/ImageViewWrapper;

.field public h1:Lcom/mycompany/app/list/ListTask;

.field public i1:Z

.field public j1:Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;


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
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/mycompany/app/image/ImageViewWrapper;->c(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewWrapper;->f()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageViewWrapper;->e()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v2, "EXTRA_INDEX"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/image/ImageViewWrapper;->j(IILandroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewWrapper;->L()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewActivity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewActivity;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/mycompany/app/image/ImageViewWrapper;->F(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->u0:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/mycompany/app/image/ImageViewActivity$1;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/mycompany/app/image/ImageViewActivity$1;-><init>(Lcom/mycompany/app/image/ImageViewActivity;)V

    .line 10
    .line 11
    .line 12
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->H0:Lcom/mycompany/app/main/MainActivity$MainViewerListener;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->d0()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewActivity;->f1:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->o7(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    const/16 p1, 0x13

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x7

    .line 41
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 42
    .line 43
    .line 44
    const/16 p1, 0x12

    .line 45
    .line 46
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    new-instance p1, Landroid/content/Intent;

    .line 61
    .line 62
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-boolean v4, p0, Lcom/mycompany/app/image/ImageViewActivity;->i1:Z

    .line 66
    .line 67
    const-string v5, "EXTRA_TYPE"

    .line 68
    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    const/4 v4, 0x2

    .line 72
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const/4 v4, 0x3

    .line 77
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    :goto_1
    const-string v4, "EXTRA_PATH"

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string v2, "EXTRA_INDEX"

    .line 90
    .line 91
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-object v8, p1

    .line 95
    move p1, v0

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    move-object v8, p1

    .line 98
    move p1, v3

    .line 99
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    sget v2, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 106
    .line 107
    :goto_3
    move v6, v2

    .line 108
    goto :goto_4

    .line 109
    :cond_3
    sget v2, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :goto_4
    iget-object v4, p0, Lcom/mycompany/app/image/ImageViewActivity;->f1:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    const/4 v9, 0x0

    .line 119
    move-object v5, p0

    .line 120
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/image/ImageViewWrapper;->g(Landroid/content/Context;Lcom/mycompany/app/image/ImageViewActivity;ILandroid/view/Window;Landroid/content/Intent;Lcom/mycompany/app/image/ImageViewActivity$SavedItem;)Lcom/mycompany/app/image/ImageViewWrapper;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iput-object v2, v5, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    iget-object p1, v5, Lcom/mycompany/app/image/ImageViewActivity;->h1:Lcom/mycompany/app/list/ListTask;

    .line 129
    .line 130
    if-nez p1, :cond_5

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/mycompany/app/image/ImageViewWrapper;->f()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    const/16 v2, 0xc

    .line 137
    .line 138
    if-ne p1, v2, :cond_4

    .line 139
    .line 140
    move p1, v0

    .line 141
    :cond_4
    iget-object v2, v5, Lcom/mycompany/app/image/ImageViewActivity;->f1:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v2, p1, v1}, Lcom/mycompany/app/list/ListTask;->c(Landroid/content/Context;ILcom/mycompany/app/list/ListTask$ListTaskListener;)Lcom/mycompany/app/list/ListTask;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, v5, Lcom/mycompany/app/image/ImageViewActivity;->h1:Lcom/mycompany/app/list/ListTask;

    .line 148
    .line 149
    :cond_5
    iget-object p1, v5, Lcom/mycompany/app/image/ImageViewActivity;->h1:Lcom/mycompany/app/list/ListTask;

    .line 150
    .line 151
    invoke-virtual {p1, v3, v3, v0}, Lcom/mycompany/app/list/ListTask;->i(ZZZ)V

    .line 152
    .line 153
    .line 154
    :cond_6
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->j1:Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewActivity;->j1:Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;

    .line 14
    .line 15
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->m()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/mycompany/app/image/ImageViewActivity$3;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewWrapper;->G()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mycompany/app/image/ImageViewWrapper;->H(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mycompany/app/main/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/16 v0, 0x18

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x19

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public final onPause()V
    .locals 2

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
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/mycompany/app/image/ImageViewWrapper;->I(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->h1:Lcom/mycompany/app/list/ListTask;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/list/ListTask;->a()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->h1:Lcom/mycompany/app/list/ListTask;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewWrapper;->J()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    new-instance v1, Lcom/mycompany/app/image/ImageViewActivity$2;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewActivity$2;-><init>(Lcom/mycompany/app/image/ImageViewActivity;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewWrapper;->K()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final u0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->j1:Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;-><init>(Lcom/mycompany/app/image/ImageViewActivity;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity;->j1:Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;

    .line 12
    .line 13
    new-instance v0, Landroid/content/IntentFilter;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "net.kaki87.soul2.testing.ACTION_DOWN_COMPLETE"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewActivity;->j1:Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {p0, v1, v0, v3, v2}, Landroidx/core/content/ContextCompat;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final v0(Lcom/mycompany/app/image/ImageViewActivity$SavedItem;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 8
    .line 9
    :goto_0
    move v3, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewActivity;->f1:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v2, p0

    .line 22
    move-object v6, p1

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/image/ImageViewWrapper;->g(Landroid/content/Context;Lcom/mycompany/app/image/ImageViewActivity;ILandroid/view/Window;Landroid/content/Intent;Lcom/mycompany/app/image/ImageViewActivity$SavedItem;)Lcom/mycompany/app/image/ImageViewWrapper;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, v2, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewWrapper;->J()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
