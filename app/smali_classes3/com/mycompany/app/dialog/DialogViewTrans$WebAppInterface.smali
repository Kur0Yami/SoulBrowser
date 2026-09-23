.class Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogViewTrans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onJsResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    const-string v0, "onTransList"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->f1:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p1, Lcom/mycompany/app/dialog/DialogViewTrans$14;

    .line 34
    .line 35
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogViewTrans$14;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const-string v0, "onTransClass"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_8

    .line 49
    .line 50
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 51
    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const-string p1, "0"

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const-string v0, "-"

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->V0:Ljava/lang/String;

    .line 66
    .line 67
    return-void

    .line 68
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->V0:Ljava/lang/String;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_6
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->V0:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_7

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_7
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->g1:Ljava/lang/String;

    .line 87
    .line 88
    new-instance p1, Lcom/mycompany/app/dialog/DialogViewTrans$15;

    .line 89
    .line 90
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogViewTrans$15;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_8
    const-string v0, "onTtsMark"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_a

    .line 104
    .line 105
    sget p1, Lcom/mycompany/app/dialog/DialogViewTrans;->k1:I

    .line 106
    .line 107
    iget-object p1, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 108
    .line 109
    if-nez p1, :cond_9

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_9
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewTrans$27;

    .line 113
    .line 114
    invoke-direct {v0, v1, p2}, Lcom/mycompany/app/dialog/DialogViewTrans$27;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    .line 119
    .line 120
    :cond_a
    :goto_0
    return-void
.end method

.method public onObserDet(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iput v1, v2, Lcom/mycompany/app/dialog/DialogViewTrans;->R0:I

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v3, 0x3

    .line 11
    iput v3, v2, Lcom/mycompany/app/dialog/DialogViewTrans;->R0:I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-ne p2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v1, v0

    .line 18
    :goto_0
    iput-boolean v1, v2, Lcom/mycompany/app/dialog/DialogViewTrans;->S0:Z

    .line 19
    .line 20
    iput-object p1, v2, Lcom/mycompany/app/dialog/DialogViewTrans;->T0:Ljava/lang/String;

    .line 21
    .line 22
    sget-object p2, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 31
    .line 32
    const-string p2, ""

    .line 33
    .line 34
    sput-object p2, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p2, v2, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefAlbum;->u(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p2, v2, Lcom/mycompany/app/dialog/DialogViewTrans;->U0:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-object p1, v2, Lcom/mycompany/app/dialog/DialogViewTrans;->U0:Ljava/lang/String;

    .line 51
    .line 52
    :cond_3
    :goto_1
    iput-boolean v0, v2, Lcom/mycompany/app/dialog/DialogViewTrans;->Y0:Z

    .line 53
    .line 54
    iget-object p1, v2, Lcom/mycompany/app/dialog/DialogViewTrans;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 55
    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface$1;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface$1;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans$WebAppInterface;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method
