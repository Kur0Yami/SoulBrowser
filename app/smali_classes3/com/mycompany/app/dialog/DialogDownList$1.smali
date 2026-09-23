.class Lcom/mycompany/app/dialog/DialogDownList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$1;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList$1;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->e0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogDownList;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->z0:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/mycompany/app/main/MainUri;->n(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->C0:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 25
    .line 26
    sget-object v3, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUri;->m(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUri;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->D0:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownList$1$1;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownList$1$1;-><init>(Lcom/mycompany/app/dialog/DialogDownList$1;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
