.class Lcom/mycompany/app/web/WebSnsLoad$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebSnsLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$12;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$12;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->z:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->p:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->p:Z

    .line 15
    .line 16
    invoke-static {v0}, Lcom/mycompany/app/web/WebSnsLoad;->c(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
