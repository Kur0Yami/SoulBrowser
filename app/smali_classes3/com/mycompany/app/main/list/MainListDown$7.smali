.class Lcom/mycompany/app/main/list/MainListDown$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/mycompany/app/main/list/MainListDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$7;->b:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/list/MainListDown$7;->a:Ljava/lang/String;

    .line 7
    .line 8
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
    sget-object v0, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$7;->b:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListDown;->J0()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$7;->b:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListDown;->J0()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListDown$7;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, p1, v1, p2, p3}, Lcom/mycompany/app/main/list/MainListDown;->G0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p5, p0, Lcom/mycompany/app/main/list/MainListDown$7;->b:Lcom/mycompany/app/main/list/MainListDown;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p5}, Lcom/mycompany/app/main/list/MainListDown;->J0()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p5}, Lcom/mycompany/app/main/list/MainListDown;->J0()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p3, v0, :cond_1

    .line 18
    .line 19
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 20
    .line 21
    invoke-static {p5, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    sget p1, Lnet/kaki87/soul2/testing/R$string;->down_fail:I

    .line 36
    .line 37
    invoke-static {p5, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    const/4 v1, 0x1

    .line 42
    iput-boolean v1, p5, Lcom/mycompany/app/main/list/MainListDown;->M1:Z

    .line 43
    .line 44
    if-ne p3, v1, :cond_3

    .line 45
    .line 46
    const/4 p4, 0x0

    .line 47
    :cond_3
    invoke-virtual {v0, p1, p6, p2, p4}, Lcom/mycompany/app/main/MainApp;->R(Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$7;->b:Lcom/mycompany/app/main/list/MainListDown;

    .line 2
    .line 3
    if-eqz p4, :cond_1

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->M4(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListDown;->J0()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    if-nez p4, :cond_2

    .line 22
    .line 23
    const-string p4, "text"

    .line 24
    .line 25
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-eqz p4, :cond_2

    .line 30
    .line 31
    new-instance p3, Landroid/content/Intent;

    .line 32
    .line 33
    iget-object p4, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 34
    .line 35
    const-class v1, Lcom/mycompany/app/main/MainTxtView;

    .line 36
    .line 37
    invoke-direct {p3, p4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    const-string p4, "EXTRA_PATH"

    .line 41
    .line 42
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string p1, "EXTRA_NAME"

    .line 46
    .line 47
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object p4, v0, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 55
    .line 56
    if-eqz p4, :cond_5

    .line 57
    .line 58
    invoke-virtual {p4}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    if-eqz p4, :cond_5

    .line 63
    .line 64
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    if-nez p4, :cond_4

    .line 69
    .line 70
    const-string p4, "image"

    .line 71
    .line 72
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-eqz p4, :cond_3

    .line 77
    .line 78
    const/4 p4, 0x4

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const-string p4, "audio"

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    if-eqz p4, :cond_4

    .line 87
    .line 88
    const/4 p4, 0x6

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const/4 p4, 0x5

    .line 91
    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/mycompany/app/main/list/MainListDown;->D0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    iget-object p4, p0, Lcom/mycompany/app/main/list/MainListDown$7;->a:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v0, p1, p4, p2, p3}, Lcom/mycompany/app/main/list/MainListDown;->F0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
