.class Lcom/mycompany/app/video/VideoActivity$33$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$33$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$33$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$33$1$1;->c:Lcom/mycompany/app/video/VideoActivity$33$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$33$1$1;->c:Lcom/mycompany/app/video/VideoActivity$33$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$33$1;->c:Lcom/mycompany/app/video/VideoActivity$33;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity$33;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iput-boolean v3, v1, Lcom/mycompany/app/video/VideoActivity;->p3:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/video/VideoActivity;->G0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$33;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 19
    .line 20
    iput-boolean v3, v0, Lcom/mycompany/app/video/VideoActivity;->p3:Z

    .line 21
    .line 22
    return-void
.end method
