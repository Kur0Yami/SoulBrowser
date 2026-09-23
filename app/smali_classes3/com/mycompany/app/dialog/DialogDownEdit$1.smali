.class Lcom/mycompany/app/dialog/DialogDownEdit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit$1;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit$1;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->s0:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/16 v3, 0xba

    .line 16
    .line 17
    const-string v4, "Capture"

    .line 18
    .line 19
    invoke-static {v3, v1, v4}, Lcom/mycompany/app/main/MainUtil;->l3(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ".jpg"

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->t0:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/mycompany/app/main/MainUri;->n(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->A0:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 46
    .line 47
    sget-object v3, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUri;->m(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sput-object v1, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUri;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->B0:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownEdit$1$1;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownEdit$1$1;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit$1;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method
