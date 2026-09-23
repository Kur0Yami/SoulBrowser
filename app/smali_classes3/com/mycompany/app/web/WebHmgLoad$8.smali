.class Lcom/mycompany/app/web/WebHmgLoad$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebHmgLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad$8;->c:Lcom/mycompany/app/web/WebHmgLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad$8;->c:Lcom/mycompany/app/web/WebHmgLoad;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebHmgLoad;->n:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgLoad;->k:Lcom/mycompany/app/web/WebHmgTask;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebHmgTask;->e()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
