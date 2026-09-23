.class Lcom/mycompany/app/web/WebEmgLoad$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$6;->c:Lcom/mycompany/app/web/WebEmgLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad$6;->c:Lcom/mycompany/app/web/WebEmgLoad;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 5
    .line 6
    iget-object v0, v1, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
