.class Lcom/mycompany/app/web/WebLoadView$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebLoadView$WebAppInterface;->onLoadHtml(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebLoadView$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebLoadView$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebLoadView$WebAppInterface$1;->c:Lcom/mycompany/app/web/WebLoadView$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadView$WebAppInterface$1;->c:Lcom/mycompany/app/web/WebLoadView$WebAppInterface;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebLoadView$WebAppInterface;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebLoadView$WebAppInterface;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebLoadTask;->g(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
