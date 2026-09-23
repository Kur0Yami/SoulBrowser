.class Lcom/mycompany/app/main/MainUtil$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainUtil$19;->c:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/mycompany/app/main/MainUtil$19;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->isUiForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_fg

    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->quietKillProcess()V

    return-void

    :cond_fg
    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/mycompany/app/main/MainUtil;->c7(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
