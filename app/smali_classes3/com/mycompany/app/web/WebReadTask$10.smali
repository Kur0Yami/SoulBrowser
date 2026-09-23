.class Lcom/mycompany/app/web/WebReadTask$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebReadTask;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebReadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebReadTask$10;->c:Lcom/mycompany/app/web/WebReadTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$10;->c:Lcom/mycompany/app/web/WebReadTask;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->D:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebReadTask;->D:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebReadTask;->r:Lcom/mycompany/app/web/WebReadTask$ReadWebListener;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v2}, Lcom/mycompany/app/web/WebReadTask$ReadWebListener;->b()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebReadTask;->j(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
