.class Lcom/mycompany/app/web/WebSnsLoad$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$6;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$6;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->c:Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lcom/mycompany/app/web/WebSnsLoad;->h:I

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;->onError(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
