.class Lcom/mycompany/app/web/WebSnsLoad$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsLoad$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsLoad$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$8$1;->c:Lcom/mycompany/app/web/WebSnsLoad$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$8$1;->c:Lcom/mycompany/app/web/WebSnsLoad$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsLoad$8;->a:Lcom/mycompany/app/web/WebSnsLoad;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->s:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->s:I

    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    if-le v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->c:Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget v0, v0, Lcom/mycompany/app/web/WebSnsLoad;->h:I

    .line 20
    .line 21
    invoke-interface {v1, v0}, Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;->onError(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/web/WebSnsLoad;->d(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
