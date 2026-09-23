.class Lcom/mycompany/app/web/WebReadTask$2$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebReadTask$2$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebReadTask$2$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebReadTask$2$1$1$1;->c:Lcom/mycompany/app/web/WebReadTask$2$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$2$1$1$1;->c:Lcom/mycompany/app/web/WebReadTask$2$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask$2$1$1;->c:Lcom/mycompany/app/web/WebReadTask$2$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebReadTask$2$1;->c:Lcom/mycompany/app/web/WebReadTask$2;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebReadTask$2;->c:Lcom/mycompany/app/web/WebReadTask;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/web/WebReadTask;->r:Lcom/mycompany/app/web/WebReadTask$ReadWebListener;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {v1, v2}, Lcom/mycompany/app/web/WebReadTask$ReadWebListener;->a(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask$2$1;->c:Lcom/mycompany/app/web/WebReadTask$2;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask$2;->c:Lcom/mycompany/app/web/WebReadTask;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask;->g:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
