.class Lcom/mycompany/app/dialog/DialogViewTrans$12$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans$12$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans$12$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$12$1$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$12$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$12$1$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$12$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans$12$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$12;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans$12;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->N3()Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->V0:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->M2(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    :goto_0
    move-object v2, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_1
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->Q0:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans$12;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 45
    .line 46
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->O0:Z

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->Q0:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->Q0:Ljava/lang/String;

    .line 60
    .line 61
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->O0:Z

    .line 62
    .line 63
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->Q0:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_2
    return-void
.end method
