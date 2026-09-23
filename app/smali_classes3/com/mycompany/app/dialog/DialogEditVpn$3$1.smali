.class Lcom/mycompany/app/dialog/DialogEditVpn$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditVpn$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditVpn$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn$3$1;->c:Lcom/mycompany/app/dialog/DialogEditVpn$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn$3$1;->c:Lcom/mycompany/app/dialog/DialogEditVpn$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditVpn$3;->c:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/dialog/DialogEditVpn;->t0:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditVpn;->D()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 30
    .line 31
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->r0:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v4, 0x1

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->s0:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->s0:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/dialog/DialogEditVpn;->F(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->m0:Lcom/mycompany/app/dialog/DialogEditVpn$DialogTask;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iput-boolean v4, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 65
    .line 66
    :cond_3
    const/4 v2, 0x0

    .line 67
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->m0:Lcom/mycompany/app/dialog/DialogEditVpn$DialogTask;

    .line 68
    .line 69
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditVpn$DialogTask;

    .line 70
    .line 71
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/dialog/DialogEditVpn$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogEditVpn;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->m0:Lcom/mycompany/app/dialog/DialogEditVpn$DialogTask;

    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->q0:Z

    .line 82
    .line 83
    return-void
.end method
