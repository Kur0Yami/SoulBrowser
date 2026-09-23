.class Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogGreeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogGreeting;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGreeting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogGreeting;

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
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "onTransList"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogGreeting;->F0:Ljava/lang/String;

    .line 31
    .line 32
    new-instance p1, Lcom/mycompany/app/dialog/DialogGreeting$14;

    .line 33
    .line 34
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogGreeting$14;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    const-string v0, "onTransClass"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_8

    .line 48
    .line 49
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 50
    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    const-string p1, "0"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const-string v0, "-"

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogGreeting;->u0:Ljava/lang/String;

    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogGreeting;->u0:Ljava/lang/String;

    .line 74
    .line 75
    return-void

    .line 76
    :cond_6
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogGreeting;->u0:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_7

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_7
    iput-object p2, v1, Lcom/mycompany/app/dialog/DialogGreeting;->G0:Ljava/lang/String;

    .line 86
    .line 87
    new-instance p1, Lcom/mycompany/app/dialog/DialogGreeting$15;

    .line 88
    .line 89
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogGreeting$15;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    :cond_8
    :goto_0
    return-void
.end method

.method public onObserDet(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iput v0, v1, Lcom/mycompany/app/dialog/DialogGreeting;->q0:I

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v2, 0x3

    .line 10
    iput v2, v1, Lcom/mycompany/app/dialog/DialogGreeting;->q0:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne p2, v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    iput-boolean v0, v1, Lcom/mycompany/app/dialog/DialogGreeting;->r0:Z

    .line 18
    .line 19
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogGreeting;->s0:Ljava/lang/String;

    .line 20
    .line 21
    sget-object p2, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    sput-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 30
    .line 31
    const-string p2, ""

    .line 32
    .line 33
    sput-object p2, Lcom/mycompany/app/pref/PrefAlbum;->z:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p2, v1, Lcom/mycompany/app/dialog/DialogGreeting;->b0:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefAlbum;->u(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p2, v1, Lcom/mycompany/app/dialog/DialogGreeting;->t0:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogGreeting;->t0:Ljava/lang/String;

    .line 50
    .line 51
    :cond_3
    :goto_1
    iget-object p1, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 52
    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    return-void

    .line 56
    :cond_4
    new-instance p2, Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface$1;

    .line 57
    .line 58
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface$1;-><init>(Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method
