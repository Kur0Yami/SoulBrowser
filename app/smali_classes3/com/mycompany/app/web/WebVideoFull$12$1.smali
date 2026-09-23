.class Lcom/mycompany/app/web/WebVideoFull$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$12$1;->c:Lcom/mycompany/app/web/WebVideoFull$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$12$1;->c:Lcom/mycompany/app/web/WebVideoFull$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$12;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, v1, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-static {v0, v2}, Lcom/mycompany/app/web/WebVideoFull;->L(Lcom/mycompany/app/web/WebVideoFull;Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->D:I

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebVideoFull;->L(Lcom/mycompany/app/web/WebVideoFull;Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 35
    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :cond_3
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebVideoFull;->A0:Z

    .line 40
    .line 41
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "EXTRA_PASS"

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string v2, "EXTRA_TYPE"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/main/MainActivity;->t0(Landroid/content/Intent;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
