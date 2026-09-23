.class Lcom/mycompany/app/web/WebSnsLoad$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsLoad$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsLoad$11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$11$1;->c:Lcom/mycompany/app/web/WebSnsLoad$11;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$11$1;->c:Lcom/mycompany/app/web/WebSnsLoad$11;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsLoad$11;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->p:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->p:Z

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mycompany/app/web/WebSnsLoad;->c(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
