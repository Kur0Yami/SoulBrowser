.class Lcom/mycompany/app/web/WebHmgDialog$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebHmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$16;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$16;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebHmgDialog;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogNormal;->show()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/mycompany/app/web/WebHmgDialog;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p1, Lcom/mycompany/app/web/WebHmgDialog;->h0:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    iput v0, p1, Lcom/mycompany/app/web/WebHmgDialog;->e0:I

    .line 30
    .line 31
    iget-object v0, p1, Lcom/mycompany/app/web/WebHmgDialog;->j0:Ljava/util/List;

    .line 32
    .line 33
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/web/WebHmgDialog;->z(ILjava/util/List;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebNestView;

    .line 40
    .line 41
    iget-object v2, p1, Lcom/mycompany/app/web/WebHmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p1, Lcom/mycompany/app/web/WebHmgDialog;->g0:Lcom/mycompany/app/web/WebNestView;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setNoAutofill(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p1, Lcom/mycompany/app/web/WebHmgDialog;->g0:Lcom/mycompany/app/web/WebNestView;

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p1, Lcom/mycompany/app/web/WebHmgDialog;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 59
    .line 60
    iget-object v2, p1, Lcom/mycompany/app/web/WebHmgDialog;->g0:Lcom/mycompany/app/web/WebNestView;

    .line 61
    .line 62
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    const/4 v4, -0x1

    .line 65
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/mycompany/app/web/WebHmgTask;

    .line 72
    .line 73
    iget-object v1, p1, Lcom/mycompany/app/web/WebHmgDialog;->H:Landroid/content/Context;

    .line 74
    .line 75
    iget-object v2, p1, Lcom/mycompany/app/web/WebHmgDialog;->g0:Lcom/mycompany/app/web/WebNestView;

    .line 76
    .line 77
    new-instance v3, Lcom/mycompany/app/web/WebHmgDialog$21;

    .line 78
    .line 79
    invoke-direct {v3, p1}, Lcom/mycompany/app/web/WebHmgDialog$21;-><init>(Lcom/mycompany/app/web/WebHmgDialog;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/web/WebHmgTask;-><init>(Landroid/content/Context;Lcom/mycompany/app/web/WebNestView;Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p1, Lcom/mycompany/app/web/WebHmgDialog;->f0:Lcom/mycompany/app/web/WebHmgTask;

    .line 86
    .line 87
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 88
    .line 89
    new-instance v1, Lcom/mycompany/app/web/WebHmgDialog$22;

    .line 90
    .line 91
    invoke-direct {v1, p1}, Lcom/mycompany/app/web/WebHmgDialog$22;-><init>(Lcom/mycompany/app/web/WebHmgDialog;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebHmgDialog;->G()V

    .line 98
    .line 99
    .line 100
    return-void
.end method
