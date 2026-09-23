.class Lcom/mycompany/app/web/WebVideoImage$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoImage$13;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage$13;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVideoImage;->p:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebVideoImage;->z(Lcom/mycompany/app/web/WebVideoImage;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
