.class Lcom/mycompany/app/web/WebEmgDialog$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$17;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$17;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    iput v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 20
    .line 21
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/web/WebEmgDialog;->z(ILjava/util/ArrayList;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebNestView;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setNoAutofill(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 49
    .line 50
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    const/4 v4, -0x1

    .line 53
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/mycompany/app/web/WebEmgTask;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 63
    .line 64
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 65
    .line 66
    new-instance v4, Lcom/mycompany/app/web/WebEmgDialog$22;

    .line 67
    .line 68
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebEmgDialog$22;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2, v3, v4}, Lcom/mycompany/app/web/WebEmgTask;-><init>(Landroid/content/Context;Lcom/mycompany/app/web/WebNestView;Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 77
    .line 78
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$23;

    .line 79
    .line 80
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$23;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method
