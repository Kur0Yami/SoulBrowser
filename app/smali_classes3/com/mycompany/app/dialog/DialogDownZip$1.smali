.class Lcom/mycompany/app/dialog/DialogDownZip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownZip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownZip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip$1;->c:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip$1;->c:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->X0:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v2, 0xba

    .line 11
    .line 12
    const-string v3, "Zip"

    .line 13
    .line 14
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->l3(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->Y0:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/mycompany/app/main/MainUri;->n(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->m1:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 29
    .line 30
    sget-object v3, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUri;->m(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sput-object v1, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUri;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->n1:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownZip$1$1;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownZip$1$1;-><init>(Lcom/mycompany/app/dialog/DialogDownZip$1;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method
