.class Lcom/mycompany/app/main/list/MainListDown$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/mycompany/app/main/list/MainListDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$14;->d:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/list/MainListDown$14;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/list/MainListDown$14;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/list/MainListDown$14;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Copied URL"

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/main/list/MainListDown$14;->d:Lcom/mycompany/app/main/list/MainListDown;

    .line 6
    .line 7
    invoke-static {v1, v2, v0, p1}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(Ljava/lang/String;JZ)V
    .locals 4

    .line 1
    sget-object p2, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/main/list/MainListDown$14;->d:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/mycompany/app/main/list/MainListDown;->K0()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/mycompany/app/main/list/MainListDown;->H0()V

    .line 9
    .line 10
    .line 11
    iget-object p3, p2, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    if-eqz p4, :cond_0

    .line 22
    .line 23
    const/4 p3, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p3, 0x5

    .line 26
    :goto_0
    iget-object p4, p0, Lcom/mycompany/app/main/list/MainListDown$14;->b:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$14;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p2, p1, p4, v0, p3}, Lcom/mycompany/app/main/list/MainListDown;->D0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-string p3, "EXTRA_POPUP"

    .line 35
    .line 36
    if-eqz p4, :cond_3

    .line 37
    .line 38
    iget-object p4, p2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 39
    .line 40
    if-nez p4, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    new-instance p4, Landroid/content/Intent;

    .line 44
    .line 45
    iget-object v0, p2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 46
    .line 47
    const-class v1, Lcom/mycompany/app/main/image/MainImagePreview;

    .line 48
    .line 49
    invoke-direct {p4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "EXTRA_PATH"

    .line 53
    .line 54
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    const-string p1, "EXTRA_REFERER"

    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$14;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-virtual {p4, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object p4, p2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 73
    .line 74
    if-nez p4, :cond_4

    .line 75
    .line 76
    :goto_1
    return-void

    .line 77
    :cond_4
    const/4 p4, 0x1

    .line 78
    invoke-static {p1, p4}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Landroid/content/Intent;

    .line 83
    .line 84
    iget-object v2, p2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 85
    .line 86
    const-class v3, Lcom/mycompany/app/video/VideoActivity;

    .line 87
    .line 88
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    const-string p1, "EXTRA_HOST"

    .line 102
    .line 103
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    const-string p1, "EXTRA_INDEX"

    .line 107
    .line 108
    const-wide/16 p3, 0x0

    .line 109
    .line 110
    long-to-int p3, p3

    .line 111
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$14;->d:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListDown;->K0()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListDown;->H0()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListDown$14;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/main/list/MainListDown$14;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, p1, v1, v2, p2}, Lcom/mycompany/app/main/list/MainListDown;->G0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$14;->d:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListDown;->K0()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListDown;->H0()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListDown$14;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$14;->d:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/list/MainListDown;->K0()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
