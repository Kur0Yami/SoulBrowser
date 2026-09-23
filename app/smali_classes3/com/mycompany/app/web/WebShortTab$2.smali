.class Lcom/mycompany/app/web/WebShortTab$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebShortTab;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebShortTab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebShortTab$2;->c:Lcom/mycompany/app/web/WebShortTab;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebShortTab$2;->c:Lcom/mycompany/app/web/WebShortTab;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/mycompany/app/pref/PrefSync;->u(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget-boolean v2, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v1, "short_new_tab"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->d7(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->Y4(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebShortTab$2$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebShortTab$2$1;-><init>(Lcom/mycompany/app/web/WebShortTab$2;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method
