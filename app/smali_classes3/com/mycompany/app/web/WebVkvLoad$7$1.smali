.class Lcom/mycompany/app/web/WebVkvLoad$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVkvLoad$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVkvLoad$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVkvLoad$7$1;->c:Lcom/mycompany/app/web/WebVkvLoad$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVkvLoad$7$1;->c:Lcom/mycompany/app/web/WebVkvLoad$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVkvLoad$7;->c:Lcom/mycompany/app/web/WebVkvLoad;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebVkvLoad;->n:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/web/WebVkvLoad;->n:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/web/WebVkvLoad;->c:Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;->a(ILjava/util/List;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
