.class Lcom/mycompany/app/web/WebGridDialog$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebGridDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$15;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$15;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

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
    iget-boolean v1, p1, Lcom/mycompany/app/web/WebGridDialog;->r0:Z

    .line 16
    .line 17
    iget-boolean v2, p1, Lcom/mycompany/app/web/WebGridDialog;->s0:Z

    .line 18
    .line 19
    iget-object v3, p1, Lcom/mycompany/app/web/WebGridDialog;->g0:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    iput v0, p1, Lcom/mycompany/app/web/WebGridDialog;->e0:I

    .line 29
    .line 30
    iput v0, p1, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 31
    .line 32
    const/16 v0, 0x64

    .line 33
    .line 34
    iput v0, p1, Lcom/mycompany/app/web/WebGridDialog;->u0:I

    .line 35
    .line 36
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridDialog;->i0:Ljava/util/List;

    .line 37
    .line 38
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 39
    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/web/WebGridDialog;->v(ILjava/util/List;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-nez v2, :cond_2

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    :cond_2
    new-instance v3, Lcom/mycompany/app/web/WebLoadView;

    .line 49
    .line 50
    iget-object v4, p1, Lcom/mycompany/app/web/WebGridDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 51
    .line 52
    iget-object v5, p1, Lcom/mycompany/app/web/WebGridDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 53
    .line 54
    iget-object v6, p1, Lcom/mycompany/app/web/WebGridDialog;->g0:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {v3, v4, v5, v6}, Lcom/mycompany/app/web/WebLoadView;-><init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v3, p1, Lcom/mycompany/app/web/WebGridDialog;->B0:Lcom/mycompany/app/web/WebLoadView;

    .line 60
    .line 61
    :cond_3
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    new-instance v4, Lcom/mycompany/app/web/WebGridDialog$16;

    .line 66
    .line 67
    invoke-direct {v4, p1}, Lcom/mycompany/app/web/WebGridDialog$16;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 68
    .line 69
    .line 70
    iput-object v4, v3, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 71
    .line 72
    iget v3, p1, Lcom/mycompany/app/web/WebGridDialog;->e0:I

    .line 73
    .line 74
    if-nez v3, :cond_4

    .line 75
    .line 76
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget v3, v3, Lcom/mycompany/app/web/WebLoadTask;->e:I

    .line 81
    .line 82
    iput v3, p1, Lcom/mycompany/app/web/WebGridDialog;->e0:I

    .line 83
    .line 84
    :cond_4
    if-nez v2, :cond_5

    .line 85
    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    :cond_5
    iget v1, p1, Lcom/mycompany/app/web/WebGridDialog;->e0:I

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    if-ne v1, v2, :cond_6

    .line 92
    .line 93
    move v0, v2

    .line 94
    :cond_6
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebGridDialog;->t0:Z

    .line 95
    .line 96
    const/4 v0, -0x1

    .line 97
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebGridDialog;->A(I)V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebGridDialog;->D()V

    .line 101
    .line 102
    .line 103
    return-void
.end method
