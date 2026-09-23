.class Lcom/mycompany/app/dialog/DialogDownUrl$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$49;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$49;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->U1:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->U1:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->j1:Z

    .line 14
    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->W1:Z

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v3, ".torrent"

    .line 29
    .line 30
    invoke-static {v1, v3}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v3, v4, v2, v1}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V1:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    :goto_1
    return-void

    .line 54
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownUrl$49$1;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownUrl$49$1;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl$49;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method
