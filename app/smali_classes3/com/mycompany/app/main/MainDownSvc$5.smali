.class Lcom/mycompany/app/main/MainDownSvc$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$5;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$5;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainDownSvc;->T:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainDownSvc;->l:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainDownSvc;->n:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainDownSvc;->O()V

    .line 14
    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/main/MainDownSvc;->f(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainDownSvc;->n:Z

    .line 25
    .line 26
    return-void
.end method
